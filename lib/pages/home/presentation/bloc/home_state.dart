import 'home_bloc.dart';

class HomeState {
  final int selectedGodImageId;
  final bool isSnowing;
  final List<SnowModel> listSnow;
  final bool aartiRunning;
  final double positionX;
  final double positionY;
  final bool isDragging;
  final bool isPlayingShankh;
  final bool isPlayingHanuman;
  final bool isPlayingAarti;
  final List<CarouselItem> items;
  final int currentIndex;

  // Music fields
  final List<String> playlist;
  final int currentTrackIndex;
  final bool isPlayingMusic;
  final String? currentTrackTitle;
  final Duration currentPosition;
  final Duration currentDuration;


  final List<Map<String, String>> bhagwanList;


  HomeState({
    required this.selectedGodImageId,
    required this.isSnowing,
    required this.listSnow,
    required this.aartiRunning,
    required this.positionX,
    required this.positionY,
    required this.isDragging,
    required this.isPlayingShankh,
    required this.isPlayingHanuman,
    required this.isPlayingAarti,
    required this.items,
    this.currentIndex = 0,
    this.playlist = const [],
    this.currentTrackIndex = 0,
    this.isPlayingMusic = false,
    this.currentTrackTitle,
    this.currentPosition = Duration.zero,
    this.currentDuration = Duration.zero,

    this.bhagwanList = const [], // add this line

  });

  factory HomeState.initial() => HomeState(
    selectedGodImageId:0,
    isSnowing: false,
    listSnow: const [],
    aartiRunning: false,
    positionX: 0.0,
    positionY: 0.0,
    isDragging: false,
    isPlayingShankh: false,
    isPlayingHanuman: false,
    isPlayingAarti: false,
    items: [],
    bhagwanList: [],
  );

  HomeState copyWith({
    int? selectedGodImageId,
    bool? isSnowing,
    List<SnowModel>? listSnow,
    bool? aartiRunning,
    double? positionX,
    double? positionY,
    bool? isDragging,
    bool? isPlayingShankh,
    bool? isPlayingHanuman,
    bool? isPlayingAarti,
    List<CarouselItem>? items,
    int? currentIndex,
    List<String>? playlist,
    int? currentTrackIndex,
    bool? isPlayingMusic,
    String? currentTrackTitle,
    Duration? currentPosition,
    Duration? currentDuration,
    List<Map<String, String>>? bhagwanList,

  }) {
    return HomeState(
      selectedGodImageId:selectedGodImageId??this.selectedGodImageId,
      isSnowing: isSnowing ?? this.isSnowing,
      listSnow: listSnow ?? this.listSnow,
      aartiRunning: aartiRunning ?? this.aartiRunning,
      positionX: positionX ?? this.positionX,
      positionY: positionY ?? this.positionY,
      isDragging: isDragging ?? this.isDragging,
      isPlayingShankh: isPlayingShankh ?? this.isPlayingShankh,
      isPlayingHanuman: isPlayingHanuman ?? this.isPlayingHanuman,
      isPlayingAarti: isPlayingAarti ?? this.isPlayingAarti,
      items: items ?? this.items,
      currentIndex: currentIndex ?? this.currentIndex,
      playlist: playlist ?? this.playlist,
      currentTrackIndex: currentTrackIndex ?? this.currentTrackIndex,
      isPlayingMusic: isPlayingMusic ?? this.isPlayingMusic,
      currentTrackTitle: currentTrackTitle ?? this.currentTrackTitle,
      currentPosition: currentPosition ?? this.currentPosition,
      currentDuration: currentDuration ?? this.currentDuration,
      bhagwanList: bhagwanList ?? this.bhagwanList,
    );
  }
}
