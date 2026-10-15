import 'package:freezed_annotation/freezed_annotation.dart';

part 'sant_detail_response.freezed.dart';
part 'sant_detail_response.g.dart';

@freezed
abstract class SantDetailResponse with _$SantDetailResponse {
  const factory SantDetailResponse({
    @JsonKey(name: "success") @Default(false) bool success,
    @JsonKey(name: "data") @Default(SantDetail()) SantDetail data,
  }) = _SantDetailResponse;

  factory SantDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$SantDetailResponseFromJson(json);
}

@freezed
abstract class SantDetail with _$SantDetail {
  const factory SantDetail({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "dob") @Default("") String dob,
    @JsonKey(name: "dob_place") @Default("") String dobPlace,
    @JsonKey(name: "guru") @Default("") String guru,
    @JsonKey(name: "about") @Default("") String about,
    @JsonKey(name: "designation") @Default("") String designation,
    @JsonKey(name: "education") @Default("") String education,
    @JsonKey(name: "aashram") @Default("") String aashram,
    @JsonKey(name: "specialist") @Default("") String specialist,
    @JsonKey(name: "experience_years") @Default(0) num experienceYears,
    @JsonKey(name: "followers_count") @Default(0) num followersCount,
    @JsonKey(name: "location") @Default("") String location,
    @JsonKey(name: "mobile") @Default("") String mobile,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "website") @Default("") String website,
    @JsonKey(name: "social_links") @Default(SocialLinks()) SocialLinks socialLinks,
    @JsonKey(name: "image") @Default("") String image,
    @JsonKey(name: "status") @Default("") String status,
  }) = _SantDetail;

  factory SantDetail.fromJson(Map<String, dynamic> json) =>
      _$SantDetailFromJson(json);
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
