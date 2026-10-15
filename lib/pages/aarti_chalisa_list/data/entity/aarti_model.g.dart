// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aarti_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AartiResponse _$AartiResponseFromJson(Map<String, dynamic> json) =>
    _AartiResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => AartiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? const AartiPagination()
          : AartiPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AartiResponseToJson(_AartiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'lang': instance.lang,
      'count': instance.count,
      'data': instance.data,
      'pagination': instance.pagination,
    };

_AartiPagination _$AartiPaginationFromJson(Map<String, dynamic> json) =>
    _AartiPagination(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AartiPaginationToJson(_AartiPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_AartiModel _$AartiModelFromJson(Map<String, dynamic> json) => _AartiModel(
  id: json['_id'] as String? ?? "",
  type: json['type'] as String? ?? "",
  slug: json['slug'] as String? ?? "",
  testLyrics_hi: json['testLyrics_hi'] as String? ?? "",
  testLyrics_en: json['testLyrics_en'] as String? ?? "",
  audioAsset: json['audioAsset'] as String? ?? "",
  lyric_banner_image: json['lyric_banner_image'] as String? ?? "",
  youtubeLink: json['youtubeLink'] as String? ?? "",
  testLyrics: json['testLyrics'] as String? ?? "",
  audioDuration: json['audio_duration'] as String? ?? "",
  title: json['title'] as String? ?? "",
  thumbnail: json['thumbnail'] as String? ?? "",
  mainBanner: json['main_banner'] as String? ?? "",
  lyrics:
      (json['lyrics'] as List<dynamic>?)
          ?.map((e) => LyricsModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  god: json['god'] == null
      ? const GodModel()
      : GodModel.fromJson(json['god'] as Map<String, dynamic>),
  isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
  createdAt: json['createdAt'] as String? ?? "",
  date: json['date'] as String? ?? "",
  updatedAt: json['updatedAt'] as String? ?? "",
);

Map<String, dynamic> _$AartiModelToJson(_AartiModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'slug': instance.slug,
      'testLyrics_hi': instance.testLyrics_hi,
      'testLyrics_en': instance.testLyrics_en,
      'audioAsset': instance.audioAsset,
      'lyric_banner_image': instance.lyric_banner_image,
      'youtubeLink': instance.youtubeLink,
      'testLyrics': instance.testLyrics,
      'audio_duration': instance.audioDuration,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'main_banner': instance.mainBanner,
      'lyrics': instance.lyrics,
      'god': instance.god,
      'isAddedInWishlist': instance.isAddedInWishlist,
      'createdAt': instance.createdAt,
      'date': instance.date,
      'updatedAt': instance.updatedAt,
    };

_LyricsModel _$LyricsModelFromJson(Map<String, dynamic> json) => _LyricsModel(
  start: json['start'] == null
      ? const TimeStamp()
      : TimeStamp.fromJson(json['start'] as Map<String, dynamic>),
  end: json['end'] == null
      ? const TimeStamp()
      : TimeStamp.fromJson(json['end'] as Map<String, dynamic>),
  text: json['text'] as String? ?? "",
);

Map<String, dynamic> _$LyricsModelToJson(_LyricsModel instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'text': instance.text,
    };

_TimeStamp _$TimeStampFromJson(Map<String, dynamic> json) => _TimeStamp(
  seconds: (json['seconds'] as num?)?.toInt() ?? 0,
  milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TimeStampToJson(_TimeStamp instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
    };

_FestivalModel _$FestivalModelFromJson(Map<String, dynamic> json) =>
    _FestivalModel(
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      when: json['when'] as String? ?? '',
    );

Map<String, dynamic> _$FestivalModelToJson(_FestivalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'when': instance.when,
    };

_GodModel _$GodModelFromJson(Map<String, dynamic> json) => _GodModel(
  id: json['_id'] as String? ?? '',
  godName: json['god_name'] as String? ?? '',
  birthPlace: json['birth_place'] as String? ?? '',
  fatherName: json['father_name'] as String? ?? '',
  motherName: json['mother_name'] as String? ?? '',
  detail: json['detail'] as String? ?? '',
  wife:
      (json['wife'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  favFood:
      (json['fav_food'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  favColor:
      (json['fav_color'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  relatedMonth:
      (json['related_month'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  relatedDays:
      (json['related_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  relatedGod:
      (json['related_god'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  relatedTithi:
      (json['related_tithi'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  festivals:
      (json['related_festival'] as List<dynamic>?)
          ?.map((e) => FestivalModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FestivalModel>[],
  mainTemples:
      (json['main_temples'] as List<dynamic>?)
          ?.map((e) => TempleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  familyMembers:
      (json['familyMembers'] as List<dynamic>?)
          ?.map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FamilyMember>[],
  temples:
      (json['temple'] as List<dynamic>?)
          ?.map((e) => TempleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TempleModel>[],
  thumbnail: json['thumbnail'] as String? ?? '',
  godImages:
      (json['godimage'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$GodModelToJson(_GodModel instance) => <String, dynamic>{
  '_id': instance.id,
  'god_name': instance.godName,
  'birth_place': instance.birthPlace,
  'father_name': instance.fatherName,
  'mother_name': instance.motherName,
  'detail': instance.detail,
  'wife': instance.wife,
  'fav_food': instance.favFood,
  'fav_color': instance.favColor,
  'related_month': instance.relatedMonth,
  'related_days': instance.relatedDays,
  'related_god': instance.relatedGod,
  'related_tithi': instance.relatedTithi,
  'related_festival': instance.festivals,
  'main_temples': instance.mainTemples,
  'familyMembers': instance.familyMembers,
  'temple': instance.temples,
  'thumbnail': instance.thumbnail,
  'godimage': instance.godImages,
};

_TempleModel _$TempleModelFromJson(Map<String, dynamic> json) => _TempleModel(
  id: json['_id'] as String? ?? '',
  templeName: json['name'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$TempleModelToJson(_TempleModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.templeName,
      'location': instance.location,
      'image': instance.image,
    };
