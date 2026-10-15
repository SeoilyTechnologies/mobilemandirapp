// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_according_aarti_chalisa_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayAccordingAartiChalisaResponse _$DayAccordingAartiChalisaResponseFromJson(
  Map<String, dynamic> json,
) => _DayAccordingAartiChalisaResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const DayAartiChalisaData()
      : DayAartiChalisaData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DayAccordingAartiChalisaResponseToJson(
  _DayAccordingAartiChalisaResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_DayAartiChalisaData _$DayAartiChalisaDataFromJson(Map<String, dynamic> json) =>
    _DayAartiChalisaData(
      day: json['day'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
      list:
          (json['list'] as List<dynamic>?)
              ?.map(
                (e) => DayAartiChalisaItem.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <DayAartiChalisaItem>[],
    );

Map<String, dynamic> _$DayAartiChalisaDataToJson(
  _DayAartiChalisaData instance,
) => <String, dynamic>{
  'day': instance.day,
  'count': instance.count,
  'list': instance.list,
};

_DayAartiChalisaItem _$DayAartiChalisaItemFromJson(Map<String, dynamic> json) =>
    _DayAartiChalisaItem(
      id: json['_id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      audioAsset: json['audioAsset'] as String? ?? '',
      lyricsKey: json['lyricsKey'] as String? ?? '',
      isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
      god: json['god'] == null
          ? const DayGodData()
          : DayGodData.fromJson(json['god'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayAartiChalisaItemToJson(
  _DayAartiChalisaItem instance,
) => <String, dynamic>{
  '_id': instance.id,
  'type': instance.type,
  'audioAsset': instance.audioAsset,
  'lyricsKey': instance.lyricsKey,
  'isAddedInWishlist': instance.isAddedInWishlist,
  'god': instance.god,
};

_DayGodData _$DayGodDataFromJson(Map<String, dynamic> json) => _DayGodData(
  id: json['_id'] as String? ?? '',
  godName: json['god_name'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
  relatedMonth:
      (json['related_month'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedDays:
      (json['related_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  detailHi: json['detail_hi'] as String? ?? '',
  detailEn: json['detail_en'] as String? ?? '',
  godimage:
      (json['godimage'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  v: (json['__v'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DayGodDataToJson(_DayGodData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'god_name': instance.godName,
      'thumbnail': instance.thumbnail,
      'related_month': instance.relatedMonth,
      'related_days': instance.relatedDays,
      'detail_hi': instance.detailHi,
      'detail_en': instance.detailEn,
      'godimage': instance.godimage,
      '__v': instance.v,
    };
