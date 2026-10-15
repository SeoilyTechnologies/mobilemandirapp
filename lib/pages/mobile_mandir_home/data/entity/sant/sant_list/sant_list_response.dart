import 'package:freezed_annotation/freezed_annotation.dart';

part 'sant_list_response.freezed.dart';
part 'sant_list_response.g.dart';

@freezed
abstract class SantListResponse with _$SantListResponse {
  const factory SantListResponse({
    @JsonKey(name: "success") @Default(false) bool success,
    @JsonKey(name: "total") @Default(0) int total,
    @JsonKey(name: "data") @Default(<Sant>[]) List<Sant> data,
  }) = _SantListResponse;

  factory SantListResponse.fromJson(Map<String, dynamic> json) =>
      _$SantListResponseFromJson(json);
}

@freezed
abstract class Sant with _$Sant {
  const factory Sant({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "dob") @Default("") String dob,
    @JsonKey(name: "isAddedInWishlist") @Default(false) bool isAddedInWishlist,
    @JsonKey(name: "city") @Default("") String city,
    @JsonKey(name: "state") @Default("") String state,

    @JsonKey(name: "dob_place") @Default("") String dobPlace,
    @JsonKey(name: "birthPlace") @Default("") String birthPlace,

    @JsonKey(name: "guru") @Default("") String guru,
    @JsonKey(name: "about") @Default("") String about,
    @JsonKey(name: "designation") @Default("") String designation,
    @JsonKey(name: "education") @Default("") String education,

    @JsonKey(name: "aashram") @Default("") String aashram,

    @JsonKey(name: "ashram")
    @Default(<String>[])
    List<String> ashram,

    @JsonKey(name: "specialist") @Default("") String specialist,

    @JsonKey(name: "experience_years")
    @Default(0)
    num experienceYears,

    @JsonKey(name: "followers_count")
    @Default(0)
    num followersCount,

    @JsonKey(name: "location") @Default("") String location,
    @JsonKey(name: "mobile") @Default("") String mobile,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "website") @Default("") String website,

    @JsonKey(name: "social_links")
    @Default(SocialLinks())
    SocialLinks socialLinks,

    @JsonKey(name: "image") @Default("") String image,

    @JsonKey(name: "thumbnailImage")
    @Default("")
    String thumbnailImage,

    @JsonKey(name: "images")
    @Default(<String>[])
    List<String> images,

    @JsonKey(name: "videoLink")
    @Default("")
    String videoLink,

    @JsonKey(name: "relatedGods")
    @Default(<String>[])
    List<String> relatedGods,

    @JsonKey(name: "relatedTeachings")
    @Default(<String>[])
    List<String> relatedTeachings,

    @JsonKey(name: "status")
    @Default("")
    String status,

    @JsonKey(name: "createdAt")
    @Default("")
    String createdAt,

    @JsonKey(name: "updatedAt")
    @Default("")
    String updatedAt,
  }) = _Sant;

  factory Sant.fromJson(Map<String, dynamic> json) =>
      _$SantFromJson(json);
}

@freezed
abstract class SocialLinks with _$SocialLinks {
  const factory SocialLinks({
    @JsonKey(name: "facebook") @Default("") String facebook,
    @JsonKey(name: "instagram") @Default("") String instagram,
    @JsonKey(name: "x_twitter") @Default("") String xTwitter,
    @JsonKey(name: "youtube") @Default("") String youtube,
  }) = _SocialLinks;

  factory SocialLinks.fromJson(Map<String, dynamic> json) =>
      _$SocialLinksFromJson(json);
}
