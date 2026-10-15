import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

import '../../../auth/signin/data/entity/forceupdate_response/force_update_response.dart';
import '../../../notification/data/entity/unread_notification/unread_notification_response.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(0) int index,
    DateTime? lastBackPressTime,
    @Default(false) bool isError,
    @Default('') String errorMessage,
    @Default('0') String bookedSessionCount,
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default(false) bool isShowMusicAction,
    @Default(false) bool isLoadingreport,
    @Default(0) int drawerIndex,
    @Default(UnreadNotificationResponse()) UnreadNotificationResponse unreadNotification,
    @Default(ForceUpdateData()) ForceUpdateData data,
    @Default(LoginResponse()) LoginResponse userdata,
  }) = _AppState;

  factory AppState.initial() => const AppState();
}