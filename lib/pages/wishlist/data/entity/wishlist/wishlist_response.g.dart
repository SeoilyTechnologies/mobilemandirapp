// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) =>
    _WishlistResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WishlistResponseToJson(_WishlistResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'lang': instance.lang,
      'count': instance.count,
      'data': instance.data,
    };

_WishlistItem _$WishlistItemFromJson(Map<String, dynamic> json) =>
    _WishlistItem(
      id: json['_id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      audioAsset: json['audioAsset'] as String? ?? '',
      audioDuration: json['audio_duration'] as String? ?? '',
      title: json['title'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      mainBanner: json['main_banner'] as String? ?? '',
      lyricBannerImage: json['lyric_banner_image'] as String? ?? '',
      lyrics:
          (json['lyrics'] as List<dynamic>?)
              ?.map((e) => LyricsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      testLyrics: json['testLyrics'] as String? ?? '',
      youtubeLink: json['youtubeLink'] as String? ?? '',
      god: json['god'] == null
          ? null
          : GodModel.fromJson(json['god'] as Map<String, dynamic>),
      isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$WishlistItemToJson(_WishlistItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'audioAsset': instance.audioAsset,
      'audio_duration': instance.audioDuration,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'main_banner': instance.mainBanner,
      'lyric_banner_image': instance.lyricBannerImage,
      'lyrics': instance.lyrics,
      'testLyrics': instance.testLyrics,
      'youtubeLink': instance.youtubeLink,
      'god': instance.god,
      'isAddedInWishlist': instance.isAddedInWishlist,
      'createdAt': instance.createdAt,
    };

_Lyrics _$LyricsFromJson(Map<String, dynamic> json) => _Lyrics(
  start: json['start'] == null
      ? null
      : Time.fromJson(json['start'] as Map<String, dynamic>),
  end: json['end'] == null
      ? null
      : Time.fromJson(json['end'] as Map<String, dynamic>),
  text: json['text'] as String? ?? '',
);

Map<String, dynamic> _$LyricsToJson(_Lyrics instance) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
  'text': instance.text,
};

_Time _$TimeFromJson(Map<String, dynamic> json) => _Time(
  seconds: (json['seconds'] as num?)?.toInt() ?? 0,
  milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TimeToJson(_Time instance) => <String, dynamic>{
  'seconds': instance.seconds,
  'milliseconds': instance.milliseconds,
};

_God _$GodFromJson(Map<String, dynamic> json) => _God(
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
  relatedDays:
      (json['related_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  relatedFestival:
      (json['related_festival'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  mainTemples:
      (json['main_temples'] as List<dynamic>?)
          ?.map((e) => Temple.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  thumbnail: json['thumbnail'] as String? ?? '',
  godimage:
      (json['godimage'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$GodToJson(_God instance) => <String, dynamic>{
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
  'related_god': instance.relatedGod,
  'related_tithi': instance.relatedTithi,
  'related_days': instance.relatedDays,
  'related_festival': instance.relatedFestival,
  'main_temples': instance.mainTemples,
  'thumbnail': instance.thumbnail,
  'godimage': instance.godimage,
};

_Temple _$TempleFromJson(Map<String, dynamic> json) => _Temple(
  templeName: json['temple_name'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$TempleToJson(_Temple instance) => <String, dynamic>{
  'temple_name': instance.templeName,
  'location': instance.location,
  'image': instance.image,
};
