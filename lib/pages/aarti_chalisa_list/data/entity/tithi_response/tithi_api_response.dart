import 'package:freezed_annotation/freezed_annotation.dart';

part 'tithi_api_response.freezed.dart';
part 'tithi_api_response.g.dart';

@freezed
abstract class TithiApiResponse with _$TithiApiResponse {
  const factory TithiApiResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(<TithiData>[]) List<TithiData> data,
    @Default(null) dynamic errors,
  }) = _TithiApiResponse;

  factory TithiApiResponse.fromJson(Map<String, dynamic> json) =>
      _$TithiApiResponseFromJson(json);
}

@freezed
abstract class TithiData with _$TithiData {
  const factory TithiData({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String name,
    @Default('') String hi,
    @Default('') String en,
  }) = _TithiData;

  factory TithiData.fromJson(Map<String, dynamic> json) =>
      _$TithiDataFromJson(json);
}