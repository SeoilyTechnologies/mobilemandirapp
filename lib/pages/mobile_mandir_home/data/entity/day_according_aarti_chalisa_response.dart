import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_according_aarti_chalisa_response.freezed.dart';
part 'day_according_aarti_chalisa_response.g.dart';

/// ===============================
/// Top-level Response
/// ===============================
@freezed
abstract class DayAccordingAartiChalisaResponse with _$DayAccordingAartiChalisaResponse {
  const factory DayAccordingAartiChalisaResponse({
    @JsonKey(name: 'success')
    @Default(false)
    bool success,

    @JsonKey(name: 'message')
    @Default('')
    String message,

    @JsonKey(name: 'data')
    @Default(DayAartiChalisaData())
    DayAartiChalisaData data,
  }) = _DayAccordingAartiChalisaResponse;

  factory DayAccordingAartiChalisaResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$DayAccordingAartiChalisaResponseFromJson(json);
}

/// ===============================
/// data: { day, count, list }
/// ===============================
@freezed
abstract class DayAartiChalisaData with _$DayAartiChalisaData {
  const factory DayAartiChalisaData({
    @JsonKey(name: 'day')
    @Default('')
    String day,

    @JsonKey(name: 'count')
    @Default(0)
    int count,

    @JsonKey(name: 'list')
    @Default(<DayAartiChalisaItem>[])
    List<DayAartiChalisaItem> list,
  }) = _DayAartiChalisaData;

  factory DayAartiChalisaData.fromJson(Map<String, dynamic> json) =>
      _$DayAartiChalisaDataFromJson(json);
}

/// ===============================
/// list item: single aarti/chalisa/mantra record
/// ===============================
@freezed
abstract class DayAartiChalisaItem with _$DayAartiChalisaItem {
  const factory DayAartiChalisaItem({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    /// "aarti" / "chalisa" / "mantra" / "baan"
    @JsonKey(name: 'type')
    @Default('')
    String type,

    @JsonKey(name: 'audioAsset')
    @Default('')
    String audioAsset,

    @JsonKey(name: 'lyricsKey')
    @Default('')
    String lyricsKey,

    @JsonKey(name: 'isAddedInWishlist')
    @Default(false)
    bool isAddedInWishlist,


    @JsonKey(name: 'god')
    @Default(DayGodData())
    DayGodData god,
  }) = _DayAartiChalisaItem;

  factory DayAartiChalisaItem.fromJson(Map<String, dynamic> json) =>
      _$DayAartiChalisaItemFromJson(json);
}

/// ===============================
/// Nested God object
/// ===============================
@freezed
abstract class DayGodData with _$DayGodData {
  const factory DayGodData({
    @JsonKey(name: '_id')
    @Default('')
    String id,

    @JsonKey(name: 'god_name')
    @Default('')
    String godName,

    @JsonKey(name: 'thumbnail')
    @Default('')
    String thumbnail,

    @JsonKey(name: 'related_month')
    @Default(<String>[])
    List<String> relatedMonth,

    @JsonKey(name: 'related_days')
    @Default(<String>[])
    List<String> relatedDays,

    @JsonKey(name: 'detail_hi')
    @Default('')
    String detailHi,

    @JsonKey(name: 'detail_en')
    @Default('')
    String detailEn,

    @JsonKey(name: 'godimage')
    @Default(<String>[])
    List<String> godimage,

    @JsonKey(name: '__v')
    @Default(0)
    int v,
  }) = _DayGodData;

  factory DayGodData.fromJson(Map<String, dynamic> json) =>
      _$DayGodDataFromJson(json);
}
