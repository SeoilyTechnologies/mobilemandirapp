import 'package:equatable/equatable.dart';

import '../track_model.dart';

abstract class AartiPlayerEvent extends Equatable {
  const AartiPlayerEvent();

  @override
  List<Object?> get props => [];
}

class UpdateIsPlaying extends AartiPlayerEvent {
  final bool isPlaying;

  UpdateIsPlaying(this.isPlaying);
}

class PlayListLyricsTab extends AartiPlayerEvent {
  final int selectedTab;

  PlayListLyricsTab(this.selectedTab);
}

class ResetNotificationClick extends AartiPlayerEvent {

  ResetNotificationClick();
}


class LoadTrack extends AartiPlayerEvent {
  final Track track;
  final bool isManual;

  const LoadTrack(this.track, {this.isManual = true});

  @override
  List<Object?> get props => [track, isManual];
}

class PlayNextTrack extends AartiPlayerEvent {
  final bool isAuto;
  const PlayNextTrack({this.isAuto = false});

  @override
  List<Object?> get props => [isAuto];
}

class PlayPreviousTrack extends AartiPlayerEvent {}

class RefreshQueueWithRecommendations extends AartiPlayerEvent {
  final List<dynamic> sameGodList;
  final List<dynamic> nextDaysList;

  const RefreshQueueWithRecommendations({
    required this.sameGodList,
    required this.nextDaysList,
  });

  @override
  List<Object?> get props => [sameGodList, nextDaysList];
}

class GetAartiByAartiIdEventPlayer extends AartiPlayerEvent {
  final String aartiId;

  const GetAartiByAartiIdEventPlayer(this.aartiId);
}

class PlayPauseAudio extends AartiPlayerEvent {}

class OnlyShowLyrics extends AartiPlayerEvent {
  final bool isOnlyForLyrics;

  const OnlyShowLyrics(this.isOnlyForLyrics);
}

class PauseAudio extends AartiPlayerEvent {}

class RewindAudio extends AartiPlayerEvent {}

class LoopToggle extends AartiPlayerEvent {}

class SpeedChange extends AartiPlayerEvent {
  final double speed;

  const SpeedChange(this.speed);
}

class PositionChanged extends AartiPlayerEvent {
  final Duration position;

  const PositionChanged(this.position);
}

class DurationChanged extends AartiPlayerEvent {
  final Duration duration;

  const DurationChanged(this.duration);
}

class AudioCompleted extends AartiPlayerEvent {}

class TogglePlayPause extends AartiPlayerEvent {}

class SeekAudio extends AartiPlayerEvent {
  final Duration position;

  SeekAudio(this.position);
}
class UpdateWishlistStatus extends AartiPlayerEvent {
  final bool isAdded;

  const UpdateWishlistStatus(this.isAdded);
}

class UpdateSliderPosition extends AartiPlayerEvent {
  final Duration position;

  UpdateSliderPosition(this.position);
}

class ResetTrackRewardCompleted extends AartiPlayerEvent {
  const ResetTrackRewardCompleted();
}

class ChangeLyricsLanguage extends AartiPlayerEvent {
  final String language; // default | en | hi

  const ChangeLyricsLanguage(this.language);

  @override
  List<Object?> get props => [language];
}

class UpdateTrackLyrics extends AartiPlayerEvent {
  final String? hiText;
  final String? enText;
  final String? htmlText;

  const UpdateTrackLyrics({this.hiText, this.enText, this.htmlText});

  @override
  List<Object?> get props => [hiText, enText, htmlText];
}