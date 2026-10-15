import 'package:equatable/equatable.dart';

import '../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../track_model.dart';

enum TrackRepeatMode {
  off,
  one,
  queue,
}

class AartiPlayerState extends Equatable {
  final bool isPlaying;
  final bool isNotificationResponse;
  final bool isClickFronNotification;
  final TrackRepeatMode repeatMode;

  // Full computed playback queue (ordered: history + current + sameGod + nextDays)
  final List<Track> queue;
  final int currentQueueIndex;

  // Priority-tracked sub-sections for smart queue rebuilding
  final List<Track> sameGodQueue;   // Remaining same-god items (unplayed)
  final List<Track> nextDaysQueue;  // Remaining next-days items (unplayed)

  final bool isOnlyLyrics;
  final double speed;
  final Duration position;
  final Duration duration;
  final Track? track;
  final String selectedLanguage;
  final int selectedTab;
  final AartiResponse aartiResponseGetAartiById;
  final double listenedSeconds;
  final Duration lastPosition;
  final bool rewardSentForCurrentLoop;
  final bool trackRewardCompleted;

  // Backward compatible loop getter for UI widgets
  bool get isLooping => repeatMode == TrackRepeatMode.one;

  const AartiPlayerState({
    this.isPlaying = false,
    this.isNotificationResponse = false,
    this.isClickFronNotification = false,
    this.repeatMode = TrackRepeatMode.off,
    this.queue = const [],
    this.currentQueueIndex = 0,
    this.sameGodQueue = const [],
    this.nextDaysQueue = const [],
    this.isOnlyLyrics = false,
    this.selectedTab = 0,
    this.speed = 1.0,
    this.selectedLanguage = "en",
    this.position = Duration.zero,
    this.duration = Duration.zero,
    this.track,
    this.aartiResponseGetAartiById = const AartiResponse(),
    this.listenedSeconds = 0,
    this.lastPosition = Duration.zero,
    this.rewardSentForCurrentLoop = false,
    this.trackRewardCompleted = false,
  });

  AartiPlayerState copyWith({
    String? selectedLanguage,
    bool? isPlaying,
    bool? isNotificationResponse,
    bool? isClickFronNotification,
    TrackRepeatMode? repeatMode,
    List<Track>? queue,
    int? currentQueueIndex,
    List<Track>? sameGodQueue,
    List<Track>? nextDaysQueue,
    bool? isOnlyLyrics,
    double? speed,
    int? selectedTab,
    Duration? position,
    Duration? duration,
    Track? track,
    AartiResponse? aartiResponseGetAartiById,
    double? listenedSeconds,
    Duration? lastPosition,
    bool? rewardSentForCurrentLoop,
    bool? trackRewardCompleted,
  }) {
    return AartiPlayerState(
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
      isOnlyLyrics: isOnlyLyrics ?? this.isOnlyLyrics,
      isNotificationResponse: isNotificationResponse ?? this.isNotificationResponse,
      isClickFronNotification: isClickFronNotification ?? this.isClickFronNotification,
      isPlaying: isPlaying ?? this.isPlaying,
      selectedTab: selectedTab ?? this.selectedTab,
      repeatMode: repeatMode ?? this.repeatMode,
      queue: queue ?? this.queue,
      currentQueueIndex: currentQueueIndex ?? this.currentQueueIndex,
      sameGodQueue: sameGodQueue ?? this.sameGodQueue,
      nextDaysQueue: nextDaysQueue ?? this.nextDaysQueue,
      speed: speed ?? this.speed,
      position: position ?? this.position,
      aartiResponseGetAartiById: aartiResponseGetAartiById ?? this.aartiResponseGetAartiById,
      duration: duration ?? this.duration,
      track: track ?? this.track,
      listenedSeconds: listenedSeconds ?? this.listenedSeconds,
      lastPosition: lastPosition ?? this.lastPosition,
      rewardSentForCurrentLoop: rewardSentForCurrentLoop ?? this.rewardSentForCurrentLoop,
      trackRewardCompleted: trackRewardCompleted ?? this.trackRewardCompleted,
    );
  }

  @override
  List<Object?> get props => [
    isPlaying,
    selectedTab,
    repeatMode,
    queue,
    currentQueueIndex,
    sameGodQueue,
    nextDaysQueue,
    speed,
    isOnlyLyrics,
    position,
    duration,
    track,
    aartiResponseGetAartiById,
    isClickFronNotification,
    isNotificationResponse,
    selectedLanguage,
    listenedSeconds,
    lastPosition,
    rewardSentForCurrentLoop,
    trackRewardCompleted,
  ];
}
