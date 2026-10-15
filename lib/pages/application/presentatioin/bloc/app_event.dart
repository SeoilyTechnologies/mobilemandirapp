part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();
}

class TriggerAppEvent extends AppEvent {
  final int index;
  TriggerAppEvent(this.index) : super();

  @override
  List<Object?> get props => [index];
}

class ForceUpdateEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}

class UserDataUpdate extends AppEvent {
  @override
  List<Object?> get props => [];
}
class HandleBackPressEvent extends AppEvent {
  final DateTime lastPressedAt;

  HandleBackPressEvent(this.lastPressedAt);

  @override
  List<Object?> get props => [lastPressedAt];
}

class HideShowMusciActionButtons extends AppEvent {
  final bool isShowMusicAction;

  HideShowMusciActionButtons(this.isShowMusicAction);

  @override
  List<Object?> get props => [isShowMusicAction];
}


class TriggerDrawerEvent extends AppEvent {
  final int drawerIndex;
  TriggerDrawerEvent(this.drawerIndex);

  @override
  List<Object?> get props => [drawerIndex];
}

class GetUnreadNotificationCountEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}







