import 'dart:async';
import 'dart:developer' as developer;
import 'package:audio_service/audio_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../../../audio_player/audio_handler.dart';
import '../../../common/analytics/analytics_services.dart';
import '../../../common/analytics/facebook_analytics.dart';
import '../../../common/analytics/facebook_events.dart';
import '../../../common/local/SharedPrefs.dart';
import '../../../common/routes/exports.dart';
import '../../../common/service_locator/setivelocator.dart';
import '../../../main.dart';
import '../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../aarti_chalisa_list/domain/usecase/aarti_chalisa_katha_usecase.dart';
import '../../auth/signin/data/entity/login_response.dart';
import '../../mobile_mandir_home/domain/usecase/mobile_home_usecase.dart';
import '../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../track_model.dart';
import 'aartiplayer_event.dart';
import 'aartiplayer_state.dart';

class AartiPlayerBloc extends Bloc<AartiPlayerEvent, AartiPlayerState> {
  final AudioHandler _audioHandler = audioHandler!;
  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();
  final AartiChalisaKathaUsecase _aartiChalisaKathaRepositery =
  getIt<AartiChalisaKathaUsecase>();
  final MobileHomeUsecase _mobileHomeUsecase = getIt<MobileHomeUsecase>();

  Timer? _timer;
  MobileHomeBloc? _mobileHomeBloc;
  StreamSubscription<MobileHomeState>? _mobileHomeSubscription;

  // Subscriptions to notification skip-button events from AartiAudioHandler
  StreamSubscription<void>? _skipNextSub;
  StreamSubscription<void>? _skipPrevSub;

  void setMobileHomeBloc(MobileHomeBloc bloc) {
    if (_mobileHomeBloc == bloc) return;
    _mobileHomeBloc = bloc;
    _mobileHomeSubscription?.cancel();

    // Dynamically refresh the queue when recommendations finish loading.
    // Guard: only trigger when god-wise data is actually loaded (non-empty),
    // so that intermediate loading states (which clear the list) don't corrupt priority.
    _mobileHomeSubscription = bloc.stream.listen((homeState) {
      if (state.queue.isNotEmpty) {
        final sameGodData = homeState.mantraHomePageResponsegodwise.data ?? [];
        final nextDaysData = homeState.nextThreeDaymantraHomePageResponse.data ?? [];
        // Only refresh when at least one section has data
        if (sameGodData.isNotEmpty || nextDaysData.isNotEmpty) {
          add(RefreshQueueWithRecommendations(
            sameGodList: sameGodData,
            nextDaysList: nextDaysData,
          ));
        }
      }
    });
  }

  AartiPlayerBloc() : super(const AartiPlayerState()) {

    // 🎧 PLAY / PAUSE STATE
    _audioHandler.playbackState.listen((state) {
      add(UpdateIsPlaying(state.playing));

      if (state.processingState == AudioProcessingState.completed) {
        add(AudioCompleted());
      }
    });

    AudioService.position.listen((position) {
      add(PositionChanged(position));
    });


    // ⌛ DURATION
    _audioHandler.mediaItem.listen((mediaItem) {
      if (mediaItem?.duration != null) {
        add(DurationChanged(mediaItem!.duration!));
      }
    });
    // ─── Wire notification ⏭/⏮ buttons → BLoC queue ──────────────────────
    // When the user taps skip on the OS notification or lock screen,
    // AartiAudioHandler fires the stream; we translate it into BLoC events
    // so the smart queue priority rules are always respected.
    final typedHandler = _audioHandler as AartiAudioHandler;
    _skipNextSub = typedHandler.onSkipToNext.listen((_) {
      add(const PlayNextTrack(isAuto: false));
    });
    _skipPrevSub = typedHandler.onSkipToPrevious.listen((_) {
      add(PlayPreviousTrack());
    });

    on<ResetTrackRewardCompleted>(_onResetTrackRewardCompleted);
    // EVENTS
    on<LoadTrack>(_onLoadTrack);
    on<PlayNextTrack>(_onPlayNextTrack);
    on<PlayPreviousTrack>(_onPlayPreviousTrack);
    on<RefreshQueueWithRecommendations>(_onRefreshQueueWithRecommendations);
    on<ChangeLyricsLanguage>(_changeLyricsLanguage);
    on<TogglePlayPause>(_onTogglePlayPause);
    on<PauseAudio>(_onPauseAudio);
    on<SeekAudio>(_onSeekAudio);
    on<AudioCompleted>(_onAudioCompleted);
    on<UpdateIsPlaying>(_onUpdateIsPlaying);
    on<PositionChanged>(_onPositionChanged);
    on<DurationChanged>(_onDurationChanged);
    on<PlayListLyricsTab>(_tabChangePlayListLyrics);
    on<OnlyShowLyrics>(_onlYshowLyrics);
    on<RewindAudio>(_onRewindAudio);
    on<LoopToggle>(_onLoopToggle);
    on<GetAartiByAartiIdEventPlayer>(getAartiByAartiId);
    on<ResetNotificationClick>(_onResetNotificationClcik);
    on<UpdateWishlistStatus>(_onUpdateWishlistStatus);
    on<UpdateTrackLyrics>(_onUpdateTrackLyrics);
  }
  
  Track _mapAartiDataToTrack(dynamic data) {
    return Track(
      slugUrl: data.slug,
      hiHtmLText: data.testLyrics_hi,
      enHtmlText: data.testLyrics_en,
      aartiChaliaid: data.id,
      isMpfileAvilable: data.audioAsset.isNotEmpty,
      bannerImage: data.mainBanner,
      lyircsImage: data.lyric_banner_image,
      youtubeVideoLink: data.youtubeLink,
      htmlText: data.testLyrics,
      godName: data.god.godName,
      type: data.type,
      // Use dedicated square thumbnail for notification art (same as list items).
      // Falls back to mainBanner if thumbnail field is empty.
      thumbnail: (data.thumbnail as String).isNotEmpty
          ? data.thumbnail
          : data.mainBanner,

      title: data.title,
      audioAsset: data.audioAsset.isNotEmpty
          ? "${AppConstant.fileBaseUrl}${data.audioAsset}"
          : "",
      lyrics: data.lyrics ?? [],
      god: data.god,
    );
  }

  void _onRefreshQueueWithRecommendations(
    RefreshQueueWithRecommendations event,
    Emitter<AartiPlayerState> emit,
  ) {
    if (state.track == null) return;

    // Build the set of already-played track IDs (including currently playing)
    final playedIds = <String>{};
    for (int i = 0; i <= state.currentQueueIndex && i < state.queue.length; i++) {
      playedIds.add(state.queue[i].aartiChaliaid);
    }
    // Also include the current track to be safe
    playedIds.add(state.track!.aartiChaliaid);

    // --- Build new sameGodQueue ---
    // If sameGodList is non-empty (real data, not loading state), replace the section.
    // If empty (loading state), preserve the existing sameGodQueue minus played tracks.
    List<Track> newSameGodQueue;
    if (event.sameGodList.isNotEmpty) {
      newSameGodQueue = event.sameGodList
          .map((e) => _mapAartiDataToTrack(e))
          .where((t) => !playedIds.contains(t.aartiChaliaid))
          .toList();
    } else {
      // Loading state: keep existing same-god items, just remove played ones
      newSameGodQueue = state.sameGodQueue
          .where((t) => !playedIds.contains(t.aartiChaliaid))
          .toList();
    }

    // --- Build new nextDaysQueue ---
    // Preserve existing next-days order, remove played tracks,
    // then append any newly discovered next-days tracks not already present.
    final existingNextDaysIds =
        state.nextDaysQueue.map((t) => t.aartiChaliaid).toSet();
    final incomingNextDays = event.nextDaysList
        .map((e) => _mapAartiDataToTrack(e))
        .toList();
    final newNextDaysItems = incomingNextDays
        .where((t) =>
            !playedIds.contains(t.aartiChaliaid) &&
            !existingNextDaysIds.contains(t.aartiChaliaid))
        .toList();
    final newNextDaysQueue = [
      ...state.nextDaysQueue.where((t) => !playedIds.contains(t.aartiChaliaid)),
      ...newNextDaysItems,
    ];

    // --- Rebuild full queue ---
    // Priority: [history] + [current] + [sameGod] + [nextDays]
    final playedHistory = state.currentQueueIndex > 0
        ? state.queue.sublist(0, state.currentQueueIndex)
        : <Track>[];

    final rawQueue = [
      ...playedHistory,
      state.track!,
      ...newSameGodQueue,
      ...newNextDaysQueue,
    ];

    // Deduplicate preserving order
    final seenIds = <String>{};
    final newQueue =
        rawQueue.where((t) => seenIds.add(t.aartiChaliaid)).toList();

    emit(state.copyWith(
      queue: newQueue,
      sameGodQueue: newSameGodQueue,
      nextDaysQueue: newNextDaysQueue,
    ));
  }

  Future<void> _onPlayNextTrack(
    PlayNextTrack event,
    Emitter<AartiPlayerState> emit,
  ) async {
    if (state.queue.isEmpty) return;

    int nextIndex = state.currentQueueIndex + 1;
    if (nextIndex >= state.queue.length) {
      if (state.repeatMode == TrackRepeatMode.queue) {
        nextIndex = 0;
      } else {
        if (event.isAuto) {
          await _audioHandler.stop();
          emit(state.copyWith(isPlaying: false));
        }
        return;
      }
    }

    final nextTrack = state.queue[nextIndex];

    // Update sub-queues: remove the track we are about to play from its section
    final newSameGodQueue = state.sameGodQueue
        .where((t) => t.aartiChaliaid != nextTrack.aartiChaliaid)
        .toList();
    final newNextDaysQueue = state.nextDaysQueue
        .where((t) => t.aartiChaliaid != nextTrack.aartiChaliaid)
        .toList();

    emit(state.copyWith(
      currentQueueIndex: nextIndex,
      track: nextTrack,
      sameGodQueue: newSameGodQueue,
      nextDaysQueue: newNextDaysQueue,
    ));

    // Fetch new recommendations for the deity of the next track
    if (_mobileHomeBloc != null && nextTrack.god.id.isNotEmpty) {
      _mobileHomeBloc!.add(HomeGetGetAartiChalisaGodWise(nextTrack.god.id, "all"));
    }

    add(LoadTrack(nextTrack, isManual: false));
  }

  Future<void> _onPlayPreviousTrack(
    PlayPreviousTrack event,
    Emitter<AartiPlayerState> emit,
  ) async {
    if (state.queue.isEmpty || state.currentQueueIndex <= 0) return;

    final prevIndex = state.currentQueueIndex - 1;
    final prevTrack = state.queue[prevIndex];

    emit(state.copyWith(
      currentQueueIndex: prevIndex,
      track: prevTrack,
    ));

    // Fetch recommendations for the previous deity
    if (_mobileHomeBloc != null && prevTrack.god.id.isNotEmpty) {
      _mobileHomeBloc!.add(HomeGetGetAartiChalisaGodWise(prevTrack.god.id, "all"));
    }

    add(LoadTrack(prevTrack, isManual: false));
  }

  void _changeLyricsLanguage(
      ChangeLyricsLanguage event,
      Emitter<AartiPlayerState> emit,
      ) {
    emit(
      state.copyWith(
        selectedLanguage: event.language,
      ),
    );
  }

  void _onUpdateTrackLyrics(
    UpdateTrackLyrics event,
    Emitter<AartiPlayerState> emit,
  ) {
    if (state.track != null) {
      final updatedTrack = state.track!.copyWith(
        hiHtmLText: (event.hiText != null && event.hiText!.trim().isNotEmpty)
            ? event.hiText
            : state.track!.hiHtmLText,
        enHtmlText: (event.enText != null && event.enText!.trim().isNotEmpty)
            ? event.enText
            : state.track!.enHtmlText,
        htmlText: (event.htmlText != null && event.htmlText!.trim().isNotEmpty)
            ? event.htmlText
            : state.track!.htmlText,
      );
      emit(state.copyWith(track: updatedTrack));
    }
  }
  void _onResetTrackRewardCompleted(
      ResetTrackRewardCompleted event,
      Emitter<AartiPlayerState> emit,
      ) {
    emit(
      state.copyWith(
        trackRewardCompleted: false,
      ),
    );
  }
  void _onUpdateWishlistStatus(
      UpdateWishlistStatus event,
      Emitter<AartiPlayerState> emit,
      ) {
    if (state.track == null) return;

    emit(
      state.copyWith(
        track: state.track!.copyWith(
          isAddedInWishlist: event.isAdded,
        ),
      ),
    );
  }

  Future<void> getAartiByAartiId(
      GetAartiByAartiIdEventPlayer event,
      Emitter<AartiPlayerState> emit,
      ) async
  {
    emit(
      state.copyWith(
        // isLoading: true,

      ),
    );

    final code = sharedPrefs.getString(AppConstant.localeKey).isNotEmpty
        ? sharedPrefs.getString(AppConstant.localeKey)
        : 'en';
    String cleanAartiId = event.aartiId.trim();
    if (cleanAartiId.startsWith('/aarti/')) {
      cleanAartiId = cleanAartiId.substring(7);
    } else if (cleanAartiId.startsWith('aarti/')) {
      cleanAartiId = cleanAartiId.substring(6);
    } else if (cleanAartiId.startsWith('/')) {
      cleanAartiId = cleanAartiId.replaceFirst(RegExp(r'^/+'), '');
    }

    final Map<String, dynamic> body = {
      "aartiId": cleanAartiId,
      "lang": code,
    };

    final result = await _aartiChalisaKathaRepositery.callgetAartiById(body);

    result.fold(
          (failure) {
        emit(
          state.copyWith(
            isClickFronNotification: false,
            isNotificationResponse: false,
            aartiResponseGetAartiById: AartiResponse(),
          ),
        );
      },
          (response) {
           // print("ON RESPONSE CALLING ${response} CODE IS RUUNING HERE FOR getAartiByAartiId getAartiByAartiId");
            var data = response.data[0];

            //print("\n${data.testLyrics}");
            add(
              LoadTrack(
                Track(
                  slugUrl: data.slug,
                  hiHtmLText: data.testLyrics_hi,
                  enHtmlText: data.testLyrics_en,
                  aartiChaliaid: data.id,
                  isMpfileAvilable: data.audioAsset.isNotEmpty ? true : false,
                  bannerImage: data.mainBanner,
                  lyircsImage: data.lyric_banner_image,
                  youtubeVideoLink: data.youtubeLink,
                  htmlText: data.testLyrics,

                  godName: data.god.godName,
                  type: data.type,
                  thumbnail: (data.thumbnail as String).isNotEmpty
                      ? data.thumbnail
                      : data.mainBanner,

                  title: data.title,
                  audioAsset: "${AppConstant.fileBaseUrl}${data.audioAsset}",
                  lyrics: data.lyrics.isNotEmpty ? data.lyrics : [],
                  god: data.god,
                ),
              ),
            );

        // emit(
        //   state.copyWith(
        //     isNotificationResponse: true,
        //     isClickFronNotification: true,
        //     aartiResponseGetAartiById: response,
        //   ),
        // );


      },
    );
  }

  Future<void> _onLoadTrack(
      LoadTrack event,
      Emitter<AartiPlayerState> emit,
      ) async
  {

    final bool isAudioAvailable = event.track.isMpfileAvilable ?? false;
    final String? audioUrl = event.track?.audioAsset;

    if (event.isManual) {
      // Manual selection: Reset queue and both sub-queues from scratch
      emit(
        state.copyWith(
          track: event.track,
          queue: [event.track],
          currentQueueIndex: 0,
          sameGodQueue: const [],   // Will be filled by RefreshQueueWithRecommendations
          nextDaysQueue: const [],  // Will be filled by RefreshQueueWithRecommendations
          position: Duration.zero,
          duration: Duration.zero,
          isPlaying: false,
          isOnlyLyrics: !isAudioAvailable,
          listenedSeconds: 0,
          lastPosition: Duration.zero,
          rewardSentForCurrentLoop: false,
          trackRewardCompleted: false,
        ),
      );

      // Fetch both same-god recommendations and next-days data for initial queue build
      if (_mobileHomeBloc != null && event.track.god.id.isNotEmpty) {
        _mobileHomeBloc!.add(HomeGetGetAartiChalisaGodWise(event.track.god.id, "all"));
      }
    } else {
      // Queue progression (Next/Prev/Autoplay): keep queue structure, only update track info
      emit(
        state.copyWith(
          track: event.track,
          position: Duration.zero,
          duration: Duration.zero,
          isPlaying: false,
          isOnlyLyrics: !isAudioAvailable,
          listenedSeconds: 0,
          lastPosition: Duration.zero,
          rewardSentForCurrentLoop: false,
          trackRewardCompleted: false,
        ),
      );
    }

    AnalyticsService.playAarti(
      aartiName: state.track?.title ?? "",
    );
    FacebookAnalytics.logEvent(
      FacebookEvents.aartiPlayed,
      parameters: {
        "aarti_id": state.track!.aartiChaliaid??"",
        "aarti_name": state.track!.title??"",
        "god_name": state.track!.godName??"",
      },
    );


    // ❌ If audio not available → DO NOTHING
    // ❌ No audio → STOP previous
    if (!isAudioAvailable || audioUrl == null || audioUrl.isEmpty) {

      await _audioHandler.stop(); // 🔥 FIX

      return;
    }

    // ✅ Only when audio is available
    final mediaItem = MediaItem(
      id: audioUrl,
      // Notification layout:  Line 1 (big)   = title  → God Name
      //                       Line 2 (small) = artist → Aarti/Song Name
      title: event.track.godName ?? event.track.title ?? '',
      artist: event.track.title ?? '',
      album: 'Mobile Mandir',
      artUri: Uri.parse(
        AppConstant.fileBaseUrl + event.track.thumbnail,
      ),
    );

    await (_audioHandler as AartiAudioHandler)
        .loadAndPlay(mediaItem);
  }


  Future<void> _onTogglePlayPause(
      TogglePlayPause event,
      Emitter<AartiPlayerState> emit,
      ) async {
    if (state.isPlaying) {
      await _audioHandler.pause();
    } else {
      if (state.position >= state.duration &&
          state.duration != Duration.zero) {
        await _audioHandler.seek(Duration.zero);
      }
      await _audioHandler.play();
    }
  }
  Future<void> _onResetNotificationClcik(
      ResetNotificationClick event,
      Emitter<AartiPlayerState> emit,
      ) async {
   emit(state.copyWith(isClickFronNotification: false,isNotificationResponse: false,aartiResponseGetAartiById: AartiResponse()));
  }


  Future<void> _tabChangePlayListLyrics(
    PlayListLyricsTab event,
    Emitter<AartiPlayerState> emit,
  ) async {
    emit(state.copyWith(selectedTab: event.selectedTab));
  }

  // ---------------- NO AUDIO PLAYER ONLY LYRICS LYRICS ----------------

  Future<void> _onlYshowLyrics(
    OnlyShowLyrics event,
    Emitter<AartiPlayerState> emit,
  ) async {
    emit(state.copyWith(isOnlyLyrics: event.isOnlyForLyrics));
  }

  // ---------------- Pause ----------------
  Future<void> _onPauseAudio(
    PauseAudio event,
    Emitter<AartiPlayerState> emit,
  ) async {
    await _audioHandler.pause();
  }


  // ---------------- Rewind ----------------
  Future<void> _onRewindAudio(
    RewindAudio event,
    Emitter<AartiPlayerState> emit,
  ) async {
    await _audioHandler.seek(Duration.zero);

    emit(
      state.copyWith(
        position: Duration.zero,
      ),
    );
  }


  Future<void> _onLoopToggle(
    LoopToggle event,
    Emitter<AartiPlayerState> emit,
  ) async {
    final TrackRepeatMode newMode;
    switch (state.repeatMode) {
      case TrackRepeatMode.off:
        newMode = TrackRepeatMode.one;
        break;
      case TrackRepeatMode.one:
        newMode = TrackRepeatMode.queue;
        break;
      case TrackRepeatMode.queue:
        newMode = TrackRepeatMode.off;
        break;
    }

    await (_audioHandler as AartiAudioHandler).setLoop(newMode == TrackRepeatMode.one);

    emit(state.copyWith(repeatMode: newMode));
  }
  // ---------------- Speed Change ----------------
  Future<void> _onSpeedChange(
    SpeedChange event,
    Emitter<AartiPlayerState> emit,
  ) async {
    emit(state.copyWith(speed: event.speed));
  }



  // ---------------- Position Changed ----------------
  void _onPositionChanged(
    PositionChanged event,
    Emitter<AartiPlayerState> emit,
  ) {
    final currentPosition = event.position;
    final lastPosition = state.lastPosition;

    final int diff =
        currentPosition.inSeconds - lastPosition.inSeconds;

    double listenedSeconds = state.listenedSeconds;

    if (diff > 0 && diff <= 2) {
      listenedSeconds += diff;
    }

    emit(
      state.copyWith(
        position: currentPosition,
        lastPosition: currentPosition,
        listenedSeconds: listenedSeconds,
      ),
    );

    if (state.rewardSentForCurrentLoop) {
      return;
    }

    if (state.duration.inSeconds <= 0) {
      return;
    }

    final double requiredSeconds =
        state.duration.inSeconds * 0.8;

    if (currentPosition.inSeconds >= requiredSeconds ||
        listenedSeconds >= requiredSeconds) {
      emit(
        state.copyWith(
          rewardSentForCurrentLoop: true,
          trackRewardCompleted: true,
        ),
      );
      _sendTrackReward(currentPosition.inSeconds > 0
          ? currentPosition.inSeconds
          : listenedSeconds.toInt());
    }
  }

  // ---------------- Duration Changed ----------------
  void _onDurationChanged(
    DurationChanged event,
    Emitter<AartiPlayerState> emit,
  ) {
    emit(state.copyWith(duration: event.duration));
  }

  // ---------------- Slider Updates ----------------
  void _onUpdateSliderPosition(
    UpdateSliderPosition event,
    Emitter<AartiPlayerState> emit,
  ) {
    emit(state.copyWith(position: event.position));
  }

  Future<void> _onSeekAudio(
    SeekAudio event,
    Emitter<AartiPlayerState> emit,
  ) async {
    await _audioHandler.seek(event.position);
  }



  // ---------------- Audio Completed ----------------
  Future<void> _onAudioCompleted(
    AudioCompleted event,
    Emitter<AartiPlayerState> emit,
  ) async {
    if (!state.rewardSentForCurrentLoop && state.track != null) {
      emit(
        state.copyWith(
          rewardSentForCurrentLoop: true,
          trackRewardCompleted: true,
        ),
      );
      _sendTrackReward(state.position.inSeconds > 0
          ? state.position.inSeconds
          : state.listenedSeconds.toInt());
    }

    if (state.repeatMode == TrackRepeatMode.one) {
      emit(state.copyWith(
        rewardSentForCurrentLoop: false,
        trackRewardCompleted: false,
        listenedSeconds: 0,
        position: Duration.zero,
      ));
      await _audioHandler.seek(Duration.zero);
      await _audioHandler.play();
    } else {
      add(const PlayNextTrack(isAuto: true));
    }
  }

  Future<void> _sendTrackReward(int listenedSeconds) async {
    final contentId = state.track?.aartiChaliaid ?? '';
    if (contentId.isEmpty) {
      return;
    }

    // Check if user is logged in and not guest
    final token = sharedPrefs.getString(AppConstant.token);
    final userData = sharedPrefs.getModel<LoginResponse>(
      AppConstant.userModel,
      (json) => LoginResponse.fromJson(json),
    );

    if (token.trim().isEmpty || userData == null || userData.user.isGuest == true) {
      return;
    }


    final result = await _mobileHomeUsecase.calltrackListenApi({
      "contentId": contentId,
      "listenedSeconds": listenedSeconds,
      "completed": true,
    });

    result.fold(
      (failure) {
      },
      (response) {
        if (_mobileHomeBloc != null) {
          _mobileHomeBloc!.add(const MobileHomeEvent.getRewardOverView());
        }
      },
    );
  }


  // ---------------- Internal: Update isPlaying ----------------
  void _onUpdateIsPlaying(
    UpdateIsPlaying event,
    Emitter<AartiPlayerState> emit,
  ) {
    emit(state.copyWith(isPlaying: event.isPlaying));
  }

  // ---------------- Dispose ----------------
  @override
  Future<void> close() {
    _timer?.cancel();
    _mobileHomeSubscription?.cancel();
    _skipNextSub?.cancel();
    _skipPrevSub?.cancel();
    return super.close();
  }
}

