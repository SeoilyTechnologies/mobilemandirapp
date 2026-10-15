// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'god_detail_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GodDetailApiResponse _$GodDetailApiResponseFromJson(
  Map<String, dynamic> json,
) => _GodDetailApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? const GodDetailData()
      : GodDetailData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$GodDetailApiResponseToJson(
  _GodDetailApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_GodDetailData _$GodDetailDataFromJson(Map<String, dynamic> json) =>
    _GodDetailData(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      testLyrics_hi: json['testLyrics_hi'] as String? ?? '',
      testLyrics_en: json['testLyrics_en'] as String? ?? '',
      image: json['image'] as String? ?? '',
      isWishlist: json['isWishlist'] as bool? ?? false,
      isPopular: json['isPopular'] as bool? ?? false,
      popularity: (json['popularity'] as num?)?.toInt() ?? 0,
      category: json['category'] as String? ?? '',
      birthPlace: json['birthPlace'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
      avatarOf: json['avatarOf'] as String? ?? '',
      weapons: json['weapons'] as String? ?? '',
      vahans: json['vahans'] as String? ?? '',
      alternateNames: json['alternateNames'] as String? ?? '',
      favoriteFoods: json['favoriteFoods'] as String? ?? '',
      favoriteColors: json['favoriteColors'] as String? ?? '',
      tithis: json['tithis'] as String? ?? '',
      days:
          (json['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      festivals:
          (json['festivals'] as List<dynamic>?)
              ?.map((e) => FestivalModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FestivalModel>[],
      familyMembers:
          (json['familyMembers'] as List<dynamic>?)
              ?.map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FamilyMember>[],
      avatarsAndForms:
          (json['avatarsAndForms'] as List<dynamic>?)
              ?.map((e) => GodReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GodReference>[],
      relatedGods:
          (json['relatedGods'] as List<dynamic>?)
              ?.map((e) => GodReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GodReference>[],
      suggestedSevas:
          (json['suggestedSevas'] as List<dynamic>?)
              ?.map((e) => SuggestedSeva.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SuggestedSeva>[],
      temples:
          (json['temple'] as List<dynamic>?)
              ?.map((e) => TempleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TempleModel>[],
      devotional:
          (json['devotional'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      vendorSeva:
          (json['vendorSeva'] as List<dynamic>?)
              ?.map((e) => VendorSeva.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VendorSeva>[],
    );

Map<String, dynamic> _$GodDetailDataToJson(_GodDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'testLyrics_hi': instance.testLyrics_hi,
      'testLyrics_en': instance.testLyrics_en,
      'image': instance.image,
      'isWishlist': instance.isWishlist,
      'isPopular': instance.isPopular,
      'popularity': instance.popularity,
      'category': instance.category,
      'birthPlace': instance.birthPlace,
      'gender': instance.gender,
      'shortDescription': instance.shortDescription,
      'detail': instance.detail,
      'avatarOf': instance.avatarOf,
      'weapons': instance.weapons,
      'vahans': instance.vahans,
      'alternateNames': instance.alternateNames,
      'favoriteFoods': instance.favoriteFoods,
      'favoriteColors': instance.favoriteColors,
      'tithis': instance.tithis,
      'days': instance.days,
      'festivals': instance.festivals,
      'familyMembers': instance.familyMembers,
      'avatarsAndForms': instance.avatarsAndForms,
      'relatedGods': instance.relatedGods,
      'suggestedSevas': instance.suggestedSevas,
      'temple': instance.temples,
      'devotional': instance.devotional,
      'vendorSeva': instance.vendorSeva,
    };

_DevotionalItem _$DevotionalItemFromJson(Map<String, dynamic> json) =>
    _DevotionalItem(
      id: json['_id'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      testLyrics_hi: json['testLyrics_hi'] as String? ?? '',
      testLyrics_en: json['testLyrics_en'] as String? ?? '',
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      audioAsset: json['audioAsset'] as String? ?? '',
      audioDuration: json['audio_duration'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      mainBanner: json['main_banner'] as String? ?? '',
      lyricBannerImage: json['lyric_banner_image'] as String? ?? '',
      lyrics: json['lyrics'] as List<dynamic>? ?? const [],
      testLyrics: json['testLyrics'] as String? ?? '',
      youtubeLink: json['youtubeLink'] as String? ?? '',
      god: json['god'] == null
          ? const GodModel()
          : GodModel.fromJson(json['god'] as Map<String, dynamic>),
      isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
      sewa:
          (json['sewa'] as List<dynamic>?)
              ?.map((e) => SuggestedSeva.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SuggestedSeva>[],
      vendorSeva:
          (json['vendorSeva'] as List<dynamic>?)
              ?.map((e) => VendorSeva.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VendorSeva>[],
      contentType: json['contentType'] == null
          ? const ContentTypeModel()
          : ContentTypeModel.fromJson(
              json['contentType'] as Map<String, dynamic>,
            ),
      audioFile: json['audioFile'] == null
          ? null
          : MediaFile.fromJson(json['audioFile'] as Map<String, dynamic>),
      smallThumbnail: json['smallThumbnail'] == null
          ? null
          : MediaFile.fromJson(json['smallThumbnail'] as Map<String, dynamic>),
      thumbnailImage: json['thumbnailImage'] == null
          ? null
          : MediaFile.fromJson(json['thumbnailImage'] as Map<String, dynamic>),
      pdfImage: json['pdfImage'] == null
          ? null
          : MediaFile.fromJson(json['pdfImage'] as Map<String, dynamic>),
      videoLink: json['videoLink'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$DevotionalItemToJson(_DevotionalItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'slug': instance.slug,
      'testLyrics_hi': instance.testLyrics_hi,
      'testLyrics_en': instance.testLyrics_en,
      'type': instance.type,
      'title': instance.title,
      'audioAsset': instance.audioAsset,
      'audio_duration': instance.audioDuration,
      'thumbnail': instance.thumbnail,
      'main_banner': instance.mainBanner,
      'lyric_banner_image': instance.lyricBannerImage,
      'lyrics': instance.lyrics,
      'testLyrics': instance.testLyrics,
      'youtubeLink': instance.youtubeLink,
      'god': instance.god,
      'isAddedInWishlist': instance.isAddedInWishlist,
      'sewa': instance.sewa,
      'vendorSeva': instance.vendorSeva,
      'contentType': instance.contentType,
      'audioFile': instance.audioFile,
      'smallThumbnail': instance.smallThumbnail,
      'thumbnailImage': instance.thumbnailImage,
      'pdfImage': instance.pdfImage,
      'videoLink': instance.videoLink,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_DevotionalGod _$DevotionalGodFromJson(Map<String, dynamic> json) =>
    _DevotionalGod(
      id: json['_id'] as String? ?? '',
      godName: json['god_name'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$DevotionalGodToJson(_DevotionalGod instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'god_name': instance.godName,
      'thumbnail': instance.thumbnail,
    };

_ContentTypeModel _$ContentTypeModelFromJson(Map<String, dynamic> json) =>
    _ContentTypeModel(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
    );

Map<String, dynamic> _$ContentTypeModelToJson(_ContentTypeModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_MediaFile _$MediaFileFromJson(Map<String, dynamic> json) => _MediaFile(
  id: json['_id'] as String? ?? '',
  url: json['url'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$MediaFileToJson(_MediaFile instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'url': instance.url,
      'type': instance.type,
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

_FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) =>
    _FamilyMember(
      id: json['id'] as String? ?? '',
      relation: json['relation'] as String? ?? '',
      name: json['name'] as String? ?? '',
      isClick: json['isClick'] as bool? ?? false,
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$FamilyMemberToJson(_FamilyMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relation': instance.relation,
      'name': instance.name,
      'isClick': instance.isClick,
      'image': instance.image,
    };

_GodReference _$GodReferenceFromJson(Map<String, dynamic> json) =>
    _GodReference(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      image: json['image'] as String? ?? '',
      category: json['category'] as String? ?? '',
      location: json['location'] as String? ?? '',
    );

Map<String, dynamic> _$GodReferenceToJson(_GodReference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'category': instance.category,
      'location': instance.location,
    };

_SuggestedSeva _$SuggestedSevaFromJson(Map<String, dynamic> json) =>
    _SuggestedSeva(
      id: json['_id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SuggestedSevaToJson(_SuggestedSeva instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
    };

_TempleModel _$TempleModelFromJson(Map<String, dynamic> json) => _TempleModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  location: json['location'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$TempleModelToJson(_TempleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'image': instance.image,
    };

_DevotionalData _$DevotionalDataFromJson(Map<String, dynamic> json) =>
    _DevotionalData(
      aarti:
          (json['aarti'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      chalisa:
          (json['chalisa'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      mantra:
          (json['mantra'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      bhajan:
          (json['bhajan'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      stuti:
          (json['stuti'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      katha:
          (json['katha'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
      other:
          (json['other'] as List<dynamic>?)
              ?.map((e) => DevotionalItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DevotionalItem>[],
    );

Map<String, dynamic> _$DevotionalDataToJson(_DevotionalData instance) =>
    <String, dynamic>{
      'aarti': instance.aarti,
      'chalisa': instance.chalisa,
      'mantra': instance.mantra,
      'bhajan': instance.bhajan,
      'stuti': instance.stuti,
      'katha': instance.katha,
      'other': instance.other,
    };

_VendorSeva _$VendorSevaFromJson(Map<String, dynamic> json) => _VendorSeva(
  id: json['_id'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  name: json['name'] as String? ?? '',
  lines:
      (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  backgroundColor: json['backgroundColor'] as String? ?? '',
  backgroundColorEnd: json['backgroundColorEnd'] as String? ?? '',
  iconUrl: json['iconUrl'] as String? ?? '',
  iconType: json['iconType'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$VendorSevaToJson(_VendorSeva instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'lines': instance.lines,
      'backgroundColor': instance.backgroundColor,
      'backgroundColorEnd': instance.backgroundColorEnd,
      'iconUrl': instance.iconUrl,
      'iconType': instance.iconType,
      'order': instance.order,
    };
