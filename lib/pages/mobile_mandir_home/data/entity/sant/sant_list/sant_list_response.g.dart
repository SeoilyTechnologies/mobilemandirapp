// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sant_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SantListResponse _$SantListResponseFromJson(Map<String, dynamic> json) =>
    _SantListResponse(
      success: json['success'] as bool? ?? false,
      total: (json['total'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Sant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Sant>[],
    );

Map<String, dynamic> _$SantListResponseToJson(_SantListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'total': instance.total,
      'data': instance.data,
    };

_Sant _$SantFromJson(Map<String, dynamic> json) => _Sant(
  id: json['_id'] as String? ?? "",
  name: json['name'] as String? ?? "",
  dob: json['dob'] as String? ?? "",
  isAddedInWishlist: json['isAddedInWishlist'] as bool? ?? false,
  city: json['city'] as String? ?? "",
  state: json['state'] as String? ?? "",
  dobPlace: json['dob_place'] as String? ?? "",
  birthPlace: json['birthPlace'] as String? ?? "",
  guru: json['guru'] as String? ?? "",
  about: json['about'] as String? ?? "",
  designation: json['designation'] as String? ?? "",
  education: json['education'] as String? ?? "",
  aashram: json['aashram'] as String? ?? "",
  ashram:
      (json['ashram'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  specialist: json['specialist'] as String? ?? "",
  experienceYears: json['experience_years'] as num? ?? 0,
  followersCount: json['followers_count'] as num? ?? 0,
  location: json['location'] as String? ?? "",
  mobile: json['mobile'] as String? ?? "",
  email: json['email'] as String? ?? "",
  website: json['website'] as String? ?? "",
  socialLinks: json['social_links'] == null
      ? const SocialLinks()
      : SocialLinks.fromJson(json['social_links'] as Map<String, dynamic>),
  image: json['image'] as String? ?? "",
  thumbnailImage: json['thumbnailImage'] as String? ?? "",
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  videoLink: json['videoLink'] as String? ?? "",
  relatedGods:
      (json['relatedGods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  relatedTeachings:
      (json['relatedTeachings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  status: json['status'] as String? ?? "",
  createdAt: json['createdAt'] as String? ?? "",
  updatedAt: json['updatedAt'] as String? ?? "",
);

Map<String, dynamic> _$SantToJson(_Sant instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'dob': instance.dob,
  'isAddedInWishlist': instance.isAddedInWishlist,
  'city': instance.city,
  'state': instance.state,
  'dob_place': instance.dobPlace,
  'birthPlace': instance.birthPlace,
  'guru': instance.guru,
  'about': instance.about,
  'designation': instance.designation,
  'education': instance.education,
  'aashram': instance.aashram,
  'ashram': instance.ashram,
  'specialist': instance.specialist,
  'experience_years': instance.experienceYears,
  'followers_count': instance.followersCount,
  'location': instance.location,
  'mobile': instance.mobile,
  'email': instance.email,
  'website': instance.website,
  'social_links': instance.socialLinks,
  'image': instance.image,
  'thumbnailImage': instance.thumbnailImage,
  'images': instance.images,
  'videoLink': instance.videoLink,
  'relatedGods': instance.relatedGods,
  'relatedTeachings': instance.relatedTeachings,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_SocialLinks _$SocialLinksFromJson(Map<String, dynamic> json) => _SocialLinks(
  facebook: json['facebook'] as String? ?? "",
  instagram: json['instagram'] as String? ?? "",
  xTwitter: json['x_twitter'] as String? ?? "",
  youtube: json['youtube'] as String? ?? "",
);

Map<String, dynamic> _$SocialLinksToJson(_SocialLinks instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'x_twitter': instance.xTwitter,
      'youtube': instance.youtube,
    };
