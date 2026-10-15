import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_update_response.freezed.dart';
part 'force_update_response.g.dart';

@freezed
abstract class ForceUpdateResponse with _$ForceUpdateResponse {
  const factory ForceUpdateResponse({
    @Default(false) bool success,
    @Default(ForceUpdateData()) ForceUpdateData data,
  }) = _ForceUpdateResponse;

  factory ForceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ForceUpdateResponseFromJson(json);
}

@freezed
abstract class ForceUpdateData with _$ForceUpdateData {
  const factory ForceUpdateData({
    @JsonKey(name: 'latest_version_android')
    @Default('')
    String latestVersionAndroid,

    @JsonKey(name: 'latest_version_ios')
    @Default('')
    String latestVersionIos,

    @JsonKey(name: 'min_required_version_android')
    @Default('')
    String minRequiredVersionAndroid,

    @JsonKey(name: 'min_required_version_ios')
    @Default('')
    String minRequiredVersionIos,

    @JsonKey(name: 'force_update')
    @Default(false)
    bool forceUpdate,

    @JsonKey(name: 'update_url_android')
    @Default('')
    String updateUrlAndroid,

    @JsonKey(name: 'update_url_ios')
    @Default('')
    String updateUrlIos,
  }) = _ForceUpdateData;

  factory ForceUpdateData.fromJson(Map<String, dynamic> json) =>
      _$ForceUpdateDataFromJson(json);
}