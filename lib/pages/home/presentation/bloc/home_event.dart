import 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class InitHome extends HomeEvent {}
class ToggleBells extends HomeEvent {}
class StartAarti extends HomeEvent {}
class StopAarti extends HomeEvent {}
class LoadCarousel extends HomeEvent {
  final List<CarouselItem> items;
  LoadCarousel(this.items);
}
class SelectGodImage extends HomeEvent {
  final int selectedId;
  SelectGodImage(this.selectedId);
}
class ScrollCarousel extends HomeEvent {
  final int delta;
  ScrollCarousel(this.delta);
}
class ToggleSnow extends HomeEvent {}
class AddSnowItem extends HomeEvent {
  final SnowModel item;
  const AddSnowItem(this.item);
}
class UpdateSnowPosition extends HomeEvent {
  final int index;
  final double left;
  final double top;
  const UpdateSnowPosition(this.index, {required this.left, required this.top});
}
class StartDragThali extends HomeEvent {}
class UpdateThaliPosition extends HomeEvent {
  final double dx;
  final double dy;
  const UpdateThaliPosition(this.dx, this.dy);
}
class EndDragThali extends HomeEvent {}

class PlayShankhDebug extends HomeEvent {}
class PlayOrToggleShankh extends HomeEvent {}
class PlayHanumanChalisa extends HomeEvent {}
class PlayAartiAudioEvent extends HomeEvent {}
class StopShankhSound extends HomeEvent {}

class StopAllAudio extends HomeEvent {}

// -----------------------------
// Music Events
// -----------------------------
class LoadMusicPlaylist extends HomeEvent {
  final List<String> urls;
  LoadMusicPlaylist(this.urls);
}
class PlayMusicAtIndex extends HomeEvent {
  final int index;
  PlayMusicAtIndex(this.index);
}
class TogglePlayPauseMusic extends HomeEvent {}
class NextMusicTrack extends HomeEvent {}
class PreviousMusicTrack extends HomeEvent {}
class UpdateMusicPosition extends HomeEvent {
  final Duration position;
  UpdateMusicPosition(this.position);
}
class UpdateMusicDuration extends HomeEvent {
  final Duration duration;
  UpdateMusicDuration(this.duration);
}
class LoadBhagwanData extends HomeEvent {
  final List<Map<String, String>> data;
  LoadBhagwanData(this.data);
}
