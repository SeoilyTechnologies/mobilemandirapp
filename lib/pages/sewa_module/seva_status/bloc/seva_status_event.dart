import 'package:freezed_annotation/freezed_annotation.dart';

part 'seva_status_event.freezed.dart';

@freezed
abstract class SevaStatusEvent with _$SevaStatusEvent {
  const factory SevaStatusEvent.getStatus({
    required String id,
  }) = GetStatus;
}