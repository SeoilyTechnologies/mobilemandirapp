import 'package:freezed_annotation/freezed_annotation.dart';

part 'naam_jaap_new_god_list_response.freezed.dart';
part 'naam_jaap_new_god_list_response.g.dart';

@freezed
abstract class NaamJaapNewGodListResponse with _$NaamJaapNewGodListResponse {
  const factory NaamJaapNewGodListResponse({
    @Default(false) bool success,
    @Default('') String message,
    @Default(NaamJaapNewGodListData()) NaamJaapNewGodListData data,
    @Default(null) dynamic errors,
  }) = _NaamJaapNewGodListResponse;

  factory NaamJaapNewGodListResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$NaamJaapNewGodListResponseFromJson(json);
}

@freezed
abstract class NaamJaapNewGodListData with _$NaamJaapNewGodListData {
  const factory NaamJaapNewGodListData({
    @Default(<String>[]) List<String> mantraContentTypeIds,
    @Default(<God>[]) List<God> gods,
  }) = _NaamJaapNewGodListData;

  factory NaamJaapNewGodListData.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$NaamJaapNewGodListDataFromJson(json);
}

@freezed
abstract class God with _$God {
  const factory God({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @Default('')
    String name,

    @Default(NameLocalized())
    NameLocalized nameLocalized,

    @Default('')
    String thumbnailUrl,

    @Default('')
    String slug,
  }) = _God;

  factory God.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$GodFromJson(json);
}

@freezed
abstract class NameLocalized with _$NameLocalized {
  const factory NameLocalized({
    @Default('') String en,
    @Default('') String hi,
  }) = _NameLocalized;

  factory NameLocalized.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$NameLocalizedFromJson(json);
}