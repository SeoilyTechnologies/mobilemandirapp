// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sant_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SantDetailResponse _$SantDetailResponseFromJson(Map<String, dynamic> json) =>
    _SantDetailResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] == null
          ? const SantDetail()
          : SantDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SantDetailResponseToJson(_SantDetailResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_SantDetail _$SantDetailFromJson(Map<String, dynamic> json) => _SantDetail(
  id: json['_id'] as String? ?? "",
  name: json['name'] as String? ?? "",
  dob: json['dob'] as String? ?? "",
  dobPlace: json['dob_place'] as String? ?? "",
  guru: json['guru'] as String? ?? "",
  about: json['about'] as String? ?? "",
  designation: json['designation'] as String? ?? "",
  education: json['education'] as String? ?? "",
  aashram: json['aashram'] as String? ?? "",
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
  status: json['status'] as String? ?? "",
);

Map<String, dynamic> _$SantDetailToJson(_SantDetail instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'dob': instance.dob,
      'dob_place': instance.dobPlace,
      'guru': instance.guru,
      'about': instance.about,
      'designation': instance.designation,
      'education': instance.education,
      'aashram': instance.aashram,
      'specialist': instance.specialist,
      'experience_years': instance.experienceYears,
      'followers_count': instance.followersCount,
      'location': instance.location,
      'mobile': instance.mobile,
      'email': instance.email,
      'website': instance.website,
      'social_links': instance.socialLinks,
      'image': instance.image,
      'status': instance.status,
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
