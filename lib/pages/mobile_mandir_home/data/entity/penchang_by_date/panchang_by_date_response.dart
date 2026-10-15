import 'package:freezed_annotation/freezed_annotation.dart';
import 'calendar_day_model.dart';

part 'panchang_by_date_response.freezed.dart';
part 'panchang_by_date_response.g.dart';

@freezed
abstract class PanchangByDateResponse with _$PanchangByDateResponse {
  const factory PanchangByDateResponse({
    @JsonKey(name: "success") @Default(false) bool success,
    @JsonKey(name: "data") CalendarDayModell? data,
  }) = _PanchangByDateResponse;

  factory PanchangByDateResponse.fromJson(Map<String, dynamic> json) =>
      _$PanchangByDateResponseFromJson(json);
}
