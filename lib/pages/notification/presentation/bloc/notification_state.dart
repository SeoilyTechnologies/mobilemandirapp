import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/notification_api_response.dart';

part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<NotificationItem> items,
    @Default(false) bool isLoading,
    @Default(false) bool isMoreLoading,
    @Default('') String errorMessage,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(0) int totalItems,
    @Default(false) bool hasReachedMax,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState();
}
