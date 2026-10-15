import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/services.dart' show rootBundle, ByteData;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart'; // for AnimationController
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

/// HomeBloc separated into its own file. This contains events, state and the
/// HomeBloc implementation. It is compatible with the refactored UI that
/// provides AnimationControllers (left/right bells and thali) and uses
/// BlocBuilder/BlocProvider.

// -----------------------------
// Events
// -----------------------------
// abstract class HomeEvent {
//   const HomeEvent();
// }
//
// class InitHome extends HomeEvent {}
// class ToggleBells extends HomeEvent {}
// class StartAarti extends HomeEvent {}
// class StopAarti extends HomeEvent {}
// // Carousel-specific events
// class LoadCarousel extends HomeEvent {
//   final List<CarouselItem> items;
//   LoadCarousel(this.items);
// }
//
// class ScrollCarousel extends HomeEvent {
//   final int delta; // +1 for next, -1 for previous
//   ScrollCarousel(this.delta);
// }
//
// class ToggleSnow extends HomeEvent {}
// class AddSnowItem extends HomeEvent {
//   final SnowModel item;
//   const AddSnowItem(this.item);
// }
// class UpdateSnowPosition extends HomeEvent {
//   final int index;
//   final double left;
//   final double top;
//   const UpdateSnowPosition(this.index, {required this.left, required this.top});
// }
//
// class StartDragThali extends HomeEvent {}
// class UpdateThaliPosition extends HomeEvent {
//   final double dx;
//   final double dy;
//   const UpdateThaliPosition(this.dx, this.dy);
// }
// class EndDragThali extends HomeEvent {}
//
// class PlayShankhDebug extends HomeEvent {}
// class PlayOrToggleShankh extends HomeEvent {}
// class PlayHanumanChalisa extends HomeEvent {}
// class PlayAartiAudioEvent extends HomeEvent {}
// class StopAllAudio extends HomeEvent {}
//
//
// class LoadMusicPlaylist extends HomeEvent {
//   final List<String> urls;
//   LoadMusicPlaylist(this.urls);
// }
//
// class PlayMusicAtIndex extends HomeEvent {
//   final int index;
//   PlayMusicAtIndex(this.index);
// }
//
// class TogglePlayPauseMusic extends HomeEvent {}
// class NextMusicTrack extends HomeEvent {}
// class PreviousMusicTrack extends HomeEvent {}
// class UpdateMusicPosition extends HomeEvent {
//   final Duration position;
//   UpdateMusicPosition(this.position);
// }
//
// class UpdateMusicDuration extends HomeEvent {
//   final Duration duration;
//   UpdateMusicDuration(this.duration);
// }
//
//
//
// // -----------------------------
// // State
// // -----------------------------
// class HomeState {
//   final bool isSnowing;
//   final List<SnowModel> listSnow;
//   final bool aartiRunning;
//   final double positionX;
//   final double positionY;
//   final bool isDragging;
//   final bool isPlayingShankh;
//   final bool isPlayingHanuman;
//   final bool isPlayingAarti;
//   final List<CarouselItem> items;
//   final int currentIndex;
//   final Duration currentPosition;
//   final Duration currentDuration;
//   final List<String> playlist;
//   final int currentTrackIndex;
//   final bool isPlayingMusic;
//   final String? currentTrackTitle;
//
//   HomeState({
//     required this.isSnowing,
//     required this.listSnow,
//     required this.aartiRunning,
//     required this.positionX,
//     required this.positionY,
//     required this.isDragging,
//     required this.isPlayingShankh,
//     required this.isPlayingHanuman,
//     required this.isPlayingAarti,
//     required this.items,
//     this.currentPosition = Duration.zero,
//     this.currentDuration = Duration.zero,
//     this.currentIndex = 0,
//     this.playlist = const [],
//     this.currentTrackIndex = 0,
//     this.isPlayingMusic = false,
//     this.currentTrackTitle,
//
//   });
//
//   factory HomeState.initial() => HomeState(
//     isSnowing: false,
//     listSnow: const [],
//     aartiRunning: false,
//     positionX: 0.0,
//     positionY: 0.0,
//     isDragging: false,
//     isPlayingShankh: false,
//     isPlayingHanuman: false,
//     isPlayingAarti: false,
//     items: [],
//     currentIndex: 0,
//   );
//
//   HomeState copyWith({
//     bool? isSnowing,
//     List<SnowModel>? listSnow,
//     bool? aartiRunning,
//     double? positionX,
//     double? positionY,
//     bool? isDragging,
//     bool? isPlayingShankh,
//     bool? isPlayingHanuman,
//     bool? isPlayingAarti,
//     List<CarouselItem>? items,
//     int? currentIndex,
//     List<String>? playlist,
//     int? currentTrackIndex,
//     bool? isPlayingMusic,
//     String? currentTrackTitle,
//     Duration? currentPosition,
//     Duration? currentDuration,
//   }) {
//     return HomeState(
//       playlist: playlist ?? this.playlist,
//       currentTrackIndex: currentTrackIndex ?? this.currentTrackIndex,
//       isPlayingMusic: isPlayingMusic ?? this.isPlayingMusic,
//       currentTrackTitle: currentTrackTitle ?? this.currentTrackTitle,
//       isSnowing: isSnowing ?? this.isSnowing,
//       listSnow: listSnow ?? this.listSnow,
//       aartiRunning: aartiRunning ?? this.aartiRunning,
//       positionX: positionX ?? this.positionX,
//       positionY: positionY ?? this.positionY,
//       isDragging: isDragging ?? this.isDragging,
//       isPlayingShankh: isPlayingShankh ?? this.isPlayingShankh,
//       isPlayingHanuman: isPlayingHanuman ?? this.isPlayingHanuman,
//       isPlayingAarti: isPlayingAarti ?? this.isPlayingAarti,
//       items: items ?? this.items,
//       currentIndex: currentIndex ?? this.currentIndex,
//       currentPosition: currentPosition ?? this.currentPosition,
//       currentDuration: currentDuration ?? this.currentDuration,
//     );
//   }
//
// }
//
// // -----------------------------
// // SnowModel (kept here for convenience)
// // -----------------------------
// class SnowModel {
//   double? size;
//   double? top;
//   double? left;
//   int? duration; // seconds
//
//   SnowModel({this.size, this.top, this.left, this.duration});
// }
//
// // -----------------------------
// // Bloc
// // -----------------------------
// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   // Audio players
//   late final AudioPlayer audioPlayer;
//   late final AudioPlayer aartiPlayer;
//   late final AudioPlayer playerShankh;
//   StreamSubscription<PlayerState>? _shankhStateSub;
//
//   // Internal timers
//   Timer? _snowTimer;
//   Timer? _bellStopTimer;
//
//   // Animation controllers are created by UI and injected here
//   AnimationController? leftBellController;
//   AnimationController? rightBellController;
//   AnimationController? thaliController;
//
//   HomeBloc() : super(HomeState.initial()) {
//     audioPlayer = AudioPlayer();
//     aartiPlayer = AudioPlayer();
//     playerShankh = AudioPlayer();
//
//     // preload shankh to catch asset issues early
//     playerShankh.setAsset('assets/shankh-sound.mp3').catchError((e) {
//       debugPrint('Preload shankh failed: $e');
//     });
//
//     _shankhStateSub = playerShankh.playerStateStream.listen((ps) {
//       if (ps.processingState == ProcessingState.completed) {
//         playerShankh.stop();
//         add(StopAllAudio());
//       }
//     });
//
//     on<InitHome>((e, emit) {});
//
//     on<ToggleBells>((e, emit) {
//       _startBells();
//     });
//
//     on<StartAarti>((e, emit) async {
//       emit(state.copyWith(aartiRunning: true));
//       _startBellsForAarti();
//       _startSnowInternal();
//       await _playAartiInternal(emit);
//
//       // ensure at least 10s
//       Future.delayed(const Duration(seconds: 10), () {
//         if (this.state.aartiRunning) add(StopAarti());
//       });
//     });
//
//     on<StopAarti>((e, emit) async {
//       await _stopAartiInternal();
//       emit(state.copyWith(aartiRunning: false, positionX: 0.0, positionY: 0.0, isDragging: false));
//     });
//
//     on<ToggleSnow>((e, emit) {
//       if (state.isSnowing) {
//         _stopSnowInternal();
//         emit(state.copyWith(isSnowing: false));
//       } else {
//         _startSnowInternal();
//         emit(state.copyWith(isSnowing: true));
//       }
//     });
//
//     on<AddSnowItem>((e, emit) {
//       final newList = List<SnowModel>.from(state.listSnow)..add(e.item);
//       emit(state.copyWith(listSnow: newList));
//     });
//
//     on<UpdateSnowPosition>((e, emit) {
//       final newList = List<SnowModel>.from(state.listSnow);
//       if (e.index >= 0 && e.index < newList.length) {
//         final item = newList[e.index];
//         item.left = e.left;
//         item.top = e.top;
//         emit(state.copyWith(listSnow: newList));
//       }
//     });
//
//     on<StartDragThali>((e, emit) {
//       emit(state.copyWith(isDragging: true));
//     });
//
//     on<UpdateThaliPosition>((e, emit) {
//       if (state.isDragging) {
//         emit(state.copyWith(positionX: state.positionX + e.dx, positionY: state.positionY + e.dy));
//       }
//     });
//
//     on<EndDragThali>((e, emit) {
//       emit(state.copyWith(isDragging: false));
//     });
//
//     on<PlayShankhDebug>((e, emit) async {
//       await _playShankhDebug();
//       emit(state.copyWith(isPlayingShankh: true));
//     });
//
//     on<PlayOrToggleShankh>((e, emit) async {
//       if (state.isPlayingShankh) {
//         await playerShankh.pause();
//         emit(state.copyWith(isPlayingShankh: false));
//       } else {
//         await playerShankh.seek(Duration.zero);
//         await playerShankh.play();
//         emit(state.copyWith(isPlayingShankh: true));
//       }
//     });
//
//     on<PlayHanumanChalisa>((e, emit) async {
//       if (!state.isPlayingHanuman) {
//         await audioPlayer.setAsset('assets/shri-hanuman-chalisa.mp3');
//         await audioPlayer.play();
//         emit(state.copyWith(isPlayingHanuman: true));
//       } else {
//         await audioPlayer.stop();
//         emit(state.copyWith(isPlayingHanuman: false));
//       }
//     });
//
//     on<PlayAartiAudioEvent>((e, emit) async {
//       await _playAartiInternal(emit);
//     });
//
//     on<StopAllAudio>((e, emit) async {
//       try {
//         await audioPlayer.stop();
//         await aartiPlayer.stop();
//         await playerShankh.stop();
//       } catch (err) {}
//       emit(state.copyWith(isPlayingAarti: false, isPlayingHanuman: false, isPlayingShankh: false));
//     });
//
//     on<LoadCarousel>((event, emit) {
//       emit(state.copyWith(items: event.items, currentIndex: 0));
//     });
//
//     on<ScrollCarousel>((event, emit) {
//       if (state.items.isEmpty) return;
//       int newIndex = state.currentIndex + event.delta;
//       if (newIndex < 0) newIndex = 0;
//       if (newIndex >= state.items.length) newIndex = state.items.length - 1;
//       emit(state.copyWith(currentIndex: newIndex));
//     });
//
//
//     //audio manager
//     on<LoadMusicPlaylist>((event, emit) async {
//       emit(state.copyWith(playlist: event.urls, currentTrackIndex: 0));
//       if (event.urls.isNotEmpty) {
//         await audioPlayer.setUrl(event.urls.first);
//         emit(state.copyWith(
//           currentTrackTitle: event.urls.first,
//           isPlayingMusic: false,
//         ));
//       }
//     });
//
//     on<PlayMusicAtIndex>((event, emit) async {
//       if (event.index < 0 || event.index >= state.playlist.length) return;
//       final url = state.playlist[event.index];
//
//       try {
//         // Always load the track
//         await audioPlayer.setUrl(url);
//         await audioPlayer.play();
//
//         emit(state.copyWith(
//           currentTrackIndex: event.index,
//           isPlayingMusic: true,
//           currentTrackTitle: "Track ${event.index + 1}", // or any title mapping
//         ));
//       } catch (e) {
//         debugPrint("Error playing track: $e");
//       }
//     });
//
//
//     on<TogglePlayPauseMusic>((event, emit) async {
//       if (state.isPlayingMusic) {
//         await audioPlayer.pause();
//         emit(state.copyWith(isPlayingMusic: false));
//       } else {
//         await audioPlayer.play();
//         emit(state.copyWith(isPlayingMusic: true));
//       }
//     });
//
//     on<NextMusicTrack>((event, emit) async {
//       final nextIndex = state.currentTrackIndex + 1;
//       if (nextIndex >= state.playlist.length) return;
//       add(PlayMusicAtIndex(nextIndex));
//     });
//
//     on<PreviousMusicTrack>((event, emit) async {
//       final prevIndex = state.currentTrackIndex - 1;
//       if (prevIndex < 0) return;
//       add(PlayMusicAtIndex(prevIndex));
//     });
//
//   }
//
//   // -------------------
//   // Helpers
//   // -------------------
//   void setBellControllers(AnimationController left, AnimationController right) {
//     leftBellController = left;
//     rightBellController = right;
//   }
//
//   void setThaliController(AnimationController thali) {
//     thaliController = thali;
//   }
//
//   void _startBells() {
//     _bellStopTimer?.cancel();
//     leftBellController?.repeat();
//     Future.delayed(const Duration(milliseconds: 40), () {
//       rightBellController?.repeat();
//     });
//     _bellStopTimer = Timer(const Duration(seconds: 3), _stopBellsAndCenter);
//   }
//
//   void _startBellsForAarti() {
//     _bellStopTimer?.cancel();
//     leftBellController?.repeat();
//     Future.delayed(const Duration(milliseconds: 40), () {
//       rightBellController?.repeat();
//     });
//     _bellStopTimer = Timer(const Duration(seconds: 8), _stopBellsAndCenter);
//   }
//
//   void _stopBellsAndCenter() {
//     _bellStopTimer?.cancel();
//     leftBellController?.stop();
//     rightBellController?.stop();
//     final settleDuration = const Duration(milliseconds: 400);
//     leftBellController?.animateTo(0.0, duration: settleDuration, curve: Curves.easeOut);
//     rightBellController?.animateTo(0.0, duration: settleDuration, curve: Curves.easeOut);
//   }
//
//   void _startSnowInternal() {
//     if (_snowTimer != null) return;
//
//     _snowTimer = Timer.periodic(const Duration(milliseconds: 200), (t) {
//       final item = SnowModel(
//         size: (math.Random().nextInt(16) + 20).toDouble(),
//         top: -10,
//         left: (math.Random().nextDouble() * 100), // relative: 0..100
//         duration: math.Random().nextInt(8) + 4,
//       );
//       add(AddSnowItem(item));
//
//       if (t.tick > 50) {
//         _stopSnowInternal();
//       }
//     });
//   }
//
//   void _stopSnowInternal() {
//     _snowTimer?.cancel();
//     _snowTimer = null;
//   }
//
//   Future<void> _playShankhDebug() async {
//     try {
//       final bd = await rootBundle.load('assets/shankh-sound.mp3');
//       if (bd.lengthInBytes < 10) return;
//       final tmpDir = await getTemporaryDirectory();
//       final tmpFilePath = '${tmpDir.path}/shankh_debug_${DateTime.now().millisecondsSinceEpoch}.mp3';
//       final tmpFile = File(tmpFilePath);
//       await tmpFile.writeAsBytes(bd.buffer.asUint8List());
//
//       await playerShankh.stop();
//       await playerShankh.setLoopMode(LoopMode.off);
//       await playerShankh.setFilePath(tmpFilePath);
//       await playerShankh.seek(Duration.zero);
//       await playerShankh.play();
//     } catch (e, st) {
//       debugPrint('Error in shankh playback: $e\n$st');
//     }
//   }
//
//   Future<void> _playAartiInternal(Emitter<HomeState> emit) async {
//     try {
//       await aartiPlayer.setAsset('assets/Mandir-Aarti.mp3');
//       await aartiPlayer.play();
//       emit(state.copyWith(isPlayingAarti: true));
//     } catch (e) {
//       debugPrint('Error playing aarti: $e');
//     }
//   }
//
//   Future<void> _stopAartiInternal() async {
//     try {
//       await aartiPlayer.pause();
//     } catch (e) {}
//   }
//
//   @override
//   Future<void> close() async {
//     _snowTimer?.cancel();
//     _bellStopTimer?.cancel();
//     _shankhStateSub?.cancel();
//     await playerShankh.dispose();
//     await audioPlayer.dispose();
//     await aartiPlayer.dispose();
//     return super.close();
//   }
// }
import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

import 'home_event.dart';
import 'home_state.dart';

// -----------------------------
// Events
// -----------------------------

// -----------------------------
// State
// -----------------------------

// -----------------------------
// Snow Model
// -----------------------------
class SnowModel {
  double? size;
  double? top;
  double? left;
  int? duration;

  SnowModel({this.size, this.top, this.left, this.duration});
}

// -----------------------------
// Carousel Item
// -----------------------------
class CarouselItem {
  final int id;
  final String name;
  final int flowerCount;
  final int aartiCount;
  final int whatsappShare;
  final int shankhPlayCount;
  final List<String> images;

  CarouselItem({
    required this.id,
    required this.name,
    required this.flowerCount,
    required this.aartiCount,
    required this.whatsappShare,
    required this.shankhPlayCount,
    required this.images,
  });

  factory CarouselItem.fromJson(Map<String, dynamic> json) {
    return CarouselItem(
      id: json['id'],
      name: json['name'],
      flowerCount: json['flowerCount'],
      aartiCount: json['aartiCount'],
      whatsappShare: json['whatsappShare'],
      shankhPlayCount: json['shankhPlayCount'],
      images: List<String>.from(json['images']),
    );
  }
}


// -----------------------------
// HomeBloc
// -----------------------------
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // Audio players
  late final AudioPlayer audioPlayer; // For music playlist
  late final AudioPlayer aartiPlayer;
  late final AudioPlayer playerShankh;

  StreamSubscription<PlayerState>? _shankhStateSub;
  Timer? _snowTimer;
  Timer? _bellStopTimer;

  AnimationController? leftBellController;
  AnimationController? rightBellController;
  AnimationController? thaliController;

  HomeBloc() : super(HomeState.initial()) {
    audioPlayer = AudioPlayer();
    aartiPlayer = AudioPlayer();
    playerShankh = AudioPlayer();

    // Preload shankh
    playerShankh.setAsset('assets/shankh-sound.mp3').catchError((e) {
    });

    // Track shankh completion
    _shankhStateSub = playerShankh.playerStateStream.listen((ps) {
      if (ps.processingState == ProcessingState.completed) {
        playerShankh.stop();
        add(StopAllAudio());
      }
    });

    // Listen to music position and duration
    audioPlayer.positionStream.listen((pos) => add(UpdateMusicPosition(pos)));
    audioPlayer.durationStream.listen(
      (dur) => add(UpdateMusicDuration(dur ?? Duration.zero)),
    );

    // -------------------------------
    // Event Handlers
    // -------------------------------
    on<InitHome>((e, emit) {});
    on<ToggleBells>((e, emit) => _startBells());
    on<StartAarti>((e, emit) async {
      emit(state.copyWith(aartiRunning: true));
      _startBellsForAarti();
      _startSnowForAarti();
      //_startSnowInternal();

      await _playAartiInternal(emit);
      Future.delayed(const Duration(seconds: 10), () {
        // if (this.state.aartiRunning) add(StopAarti());
      });
    });
    // on<StopAarti>((e, emit) async {
    //   await _stopAartiInternal();
    //   emit(state.copyWith(
    //       aartiRunning: false, positionX: 0.0, positionY: 0.0, isDragging: false));
    // });
    on<StopAarti>((e, emit) async {
      // stop aarti audio
      await _stopAartiInternal();

      // stop bells and settle to center
      _stopBellsAndCenter();

      // stop snow generation
      _stopSnowInternal();

      // update UI/state
      emit(
        state.copyWith(
          aartiRunning: false,
          positionX: 0.0,
          positionY: 0.0,
          isDragging: false,
          isSnowing: false,
          // reflect snow stopped
          isPlayingAarti: false,
          // reflect aarti stopped
          isPlayingShankh: state.isPlayingShankh, // keep shankh state as-is
        ),
      );
    });
    on<ToggleSnow>((e, emit) {
      if (state.isSnowing) {
        _stopSnowInternal();
        emit(state.copyWith(isSnowing: false));
      } else {
        _startSnowInternal();
        emit(state.copyWith(isSnowing: true));
      }
    });
    on<AddSnowItem>((e, emit) {
      final newList = List<SnowModel>.from(state.listSnow)..add(e.item);
      emit(state.copyWith(listSnow: newList));
    });
    on<UpdateSnowPosition>((e, emit) {
      final newList = List<SnowModel>.from(state.listSnow);
      if (e.index >= 0 && e.index < newList.length) {
        final item = newList[e.index];
        item.left = e.left;
        item.top = e.top;
        emit(state.copyWith(listSnow: newList));
      }
    });
    on<StartDragThali>((e, emit) => emit(state.copyWith(isDragging: true)));
    on<UpdateThaliPosition>((e, emit) {
      if (state.isDragging) {
        emit(
          state.copyWith(
            positionX: state.positionX + e.dx,
            positionY: state.positionY + e.dy,
          ),
        );
      }
    });
    on<EndDragThali>((e, emit) => emit(state.copyWith(isDragging: false)));
    on<PlayShankhDebug>((e, emit) async => await _playShankhDebug());
    on<StopShankhSound>((e, emit) async {
      await stopShankh();
    });
    on<PlayOrToggleShankh>((e, emit) async {
      if (state.isPlayingShankh) {
        await playerShankh.pause();
        emit(state.copyWith(isPlayingShankh: false));
      } else {
        await playerShankh.seek(Duration.zero);
        await playerShankh.play();
        emit(state.copyWith(isPlayingShankh: true));
      }
    });
    on<PlayHanumanChalisa>((e, emit) async {
      if (!state.isPlayingHanuman) {
       // await audioPlayer.setAsset('assets/shri-hanuman-chalisa.mp3');
        await audioPlayer.play();
        emit(state.copyWith(isPlayingHanuman: true));
      } else {
        await audioPlayer.stop();
        emit(state.copyWith(isPlayingHanuman: false));
      }
    });
    on<PlayAartiAudioEvent>((e, emit) async => await _playAartiInternal(emit));
    on<StopAllAudio>((e, emit) async {
      await audioPlayer.stop();
      await aartiPlayer.stop();
      await playerShankh.stop();
      emit(
        state.copyWith(
          isPlayingAarti: false,
          isPlayingHanuman: false,
          isPlayingShankh: false,
        ),
      );
    });

    on<LoadCarousel>(
      (e, emit) => emit(state.copyWith(items: e.items, currentIndex: 0)),
    );

    on<SelectGodImage>((event, emit) {
      emit(state.copyWith(selectedGodImageId: event.selectedId));
    });
    on<ScrollCarousel>((e, emit) {
      if (state.items.isEmpty) return;
      int newIndex = state.currentIndex + e.delta;
      if (newIndex < 0) newIndex = 0;
      if (newIndex >= state.items.length) newIndex = state.items.length - 1;
      emit(state.copyWith(currentIndex: newIndex));
    });

    // -------------------------------
    // Music Handlers
    // -------------------------------
    on<LoadMusicPlaylist>((e, emit) async {
      emit(state.copyWith(playlist: e.urls, currentTrackIndex: 0));
      if (e.urls.isNotEmpty) {
        await audioPlayer.setUrl(e.urls.first);
        emit(
          state.copyWith(currentTrackTitle: "Track 1", isPlayingMusic: false),
        );
      }
    });

    on<PlayMusicAtIndex>((e, emit) async {
      if (e.index < 0 || e.index >= state.playlist.length) return;
      final url = state.playlist[e.index];
      try {
        await audioPlayer.setUrl(url);
        await audioPlayer.play();
        emit(
          state.copyWith(
            currentTrackIndex: e.index,
            isPlayingMusic: true,
            currentTrackTitle: "Track ${e.index + 1}",
          ),
        );
      } catch (err) {
      }
    });

    on<TogglePlayPauseMusic>((e, emit) async {
      if (state.isPlayingMusic) {
        await audioPlayer.pause();
        emit(state.copyWith(isPlayingMusic: false));
      } else {
        await audioPlayer.play();
        emit(state.copyWith(isPlayingMusic: true));
      }
    });

    on<NextMusicTrack>((e, emit) {
      final nextIndex = state.currentTrackIndex + 1;
      if (nextIndex >= state.playlist.length) return;
      add(PlayMusicAtIndex(nextIndex));
    });

    on<PreviousMusicTrack>((e, emit) {
      final prevIndex = state.currentTrackIndex - 1;
      if (prevIndex < 0) return;
      add(PlayMusicAtIndex(prevIndex));
    });

    on<UpdateMusicPosition>(
      (e, emit) => emit(state.copyWith(currentPosition: e.position)),
    );

    on<UpdateMusicDuration>(
      (e, emit) => emit(state.copyWith(currentDuration: e.duration)),
    );

    on<LoadBhagwanData>((event, emit) {
      emit(state.copyWith(bhagwanList: event.data));
    });
  }

  // -------------------------------
  // Helpers
  // -------------------------------

  Future<void> stopShankh() async {
    try {
      await playerShankh.stop(); // stops playback
      emit(state.copyWith(isPlayingShankh: false)); // update UI/state
    } catch (e) {
    }
  }

  void setBellControllers(AnimationController left, AnimationController right) {
    leftBellController = left;
    rightBellController = right;
  }

  void setThaliController(AnimationController thali) {
    thaliController = thali;
  }

  void _startBells() {
    _bellStopTimer?.cancel();
    leftBellController?.repeat();
    Future.delayed(const Duration(milliseconds: 40), () {
      rightBellController?.repeat();
    });
    _bellStopTimer = Timer(const Duration(seconds: 3), _stopBellsAndCenter);
  }

  void _startBellsForAarti() {
    // Timer cancel karne ki zarurat nahi, kyunki ab use nahi kar rahe
    leftBellController?.repeat();
    Future.delayed(const Duration(milliseconds: 40), () {
      rightBellController?.repeat();
    });
  }

  void _startSnowForAarti() {
    // Agar already snow chal raha hai to dobara start na kare
    if (_snowTimer != null) return;

    _snowTimer = Timer.periodic(const Duration(milliseconds: 200), (t) {
      final item = SnowModel(
        size: (math.Random().nextInt(16) + 20).toDouble(),
        top: -10,
        left: (math.Random().nextDouble() * 100),
        duration: math.Random().nextInt(8) + 4,
      );
      add(AddSnowItem(item));
      // ❌ koi auto-stop nahi — continuously snow girta rahega
    });
  }

  void _stopBellsAndCenter() {
    _bellStopTimer?.cancel();
    leftBellController?.stop();
    rightBellController?.stop();
    final settleDuration = const Duration(milliseconds: 400);
    leftBellController?.animateTo(
      0.0,
      duration: settleDuration,
      curve: Curves.easeOut,
    );
    rightBellController?.animateTo(
      0.0,
      duration: settleDuration,
      curve: Curves.easeOut,
    );
  }

  void _startSnowInternal() {
    if (_snowTimer != null) return;

    _snowTimer = Timer.periodic(const Duration(milliseconds: 200), (t) {
      final item = SnowModel(
        size: (math.Random().nextInt(16) + 20).toDouble(),
        top: -10,
        left: (math.Random().nextDouble() * 100),
        duration: math.Random().nextInt(8) + 4,
      );
      add(AddSnowItem(item));
      if (t.tick > 50) _stopSnowInternal();
    });
  }

  void _stopSnowInternal() {
    _snowTimer?.cancel();
    _snowTimer = null;
  }

  Future<void> _playShankhDebug() async {
    try {
      final bd = await rootBundle.load('assets/shankh-sound.mp3');
      if (bd.lengthInBytes < 10) return;
      final tmpDir = await getTemporaryDirectory();
      final tmpFilePath =
          '${tmpDir.path}/shankh_debug_${DateTime.now().millisecondsSinceEpoch}.mp3';
      final tmpFile = File(tmpFilePath);
      await tmpFile.writeAsBytes(bd.buffer.asUint8List());

      await playerShankh.stop();
      await playerShankh.setLoopMode(LoopMode.off);
      await playerShankh.setFilePath(tmpFilePath);
      await playerShankh.seek(Duration.zero);
      await playerShankh.play();
    } catch (e) {
    }
  }

  Future<void> _playAartiInternal(Emitter<HomeState> emit) async {
    try {
      await aartiPlayer.setAsset('assets/shankh-sound.mp3');
      await aartiPlayer.play();
      emit(state.copyWith(isPlayingAarti: true));
    } catch (e) {
    }
  }

  Future<void> _stopAartiInternal() async {
    try {
      await aartiPlayer.pause();
    } catch (e) {}
  }

  @override
  Future<void> close() async {
    _snowTimer?.cancel();
    _bellStopTimer?.cancel();
    _shankhStateSub?.cancel();
    await playerShankh.dispose();
    await audioPlayer.dispose();
    await aartiPlayer.dispose();
    return super.close();
  }
}
