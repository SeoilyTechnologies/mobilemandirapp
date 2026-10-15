import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../entity/home_foryou/home_for_your_api_response.dart';

part 'gloable_search_api_response.freezed.dart';
part 'gloable_search_api_response.g.dart';

@freezed
abstract class GloableSearchApiResponse with _$GloableSearchApiResponse {
  const factory GloableSearchApiResponse({
    @Default(false) bool success,
    @Default('') String q,
    @Default(GlobalSearchCounts()) GlobalSearchCounts counts,
    @Default(GlobalSearchData()) GlobalSearchData data,
  }) = _GloableSearchApiResponse;

  factory GloableSearchApiResponse.fromJson(Map<String, dynamic> json) =>
      _$GloableSearchApiResponseFromJson(json);
}

@freezed
abstract class GlobalSearchCounts with _$GlobalSearchCounts {
  const factory GlobalSearchCounts({
    @Default(0) int god,
    @Default(0) int aartichalisa,
    @Default(0) int temple,
    @Default(0) int sant,
    @Default(0) int total,
  }) = _GlobalSearchCounts;

  factory GlobalSearchCounts.fromJson(Map<String, dynamic> json) =>
      _$GlobalSearchCountsFromJson(json);
}

@freezed
abstract class GlobalSearchData with _$GlobalSearchData {
  const factory GlobalSearchData({
    @Default([]) List<GlobalSearchItem> god,
    @Default([]) List<GlobalSearchItem> aartichalisa,
    @Default([]) List<GlobalSearchItem> temple,
    @Default([]) List<GlobalSearchItem> sant,
  }) = _GlobalSearchData;

  factory GlobalSearchData.fromJson(Map<String, dynamic> json) =>
      _$GlobalSearchDataFromJson(json);
}

@freezed
abstract class GlobalSearchItem with _$GlobalSearchItem {
  const GlobalSearchItem._();

  const factory GlobalSearchItem({
    @Default('') String contentType,
    @Default('') String contentId,

    GodData? godData,
    TempleData? templeData,
    SantData? santData,
    AartiModel? aartiData,
  }) = _GlobalSearchItem;

  factory GlobalSearchItem.fromJson(Map<String, dynamic> json) {
    final type = (json['contentType'] ?? '').toString().toLowerCase();

    return GlobalSearchItem(
      contentType: json['contentType'] ?? '',
      contentId: json['contentId'] ?? '',
      godData: type == 'god'
          ? GodData.fromJson(json['data'] ?? {})
          : null,
      templeData: type == 'temple'
          ? TempleData.fromJson(json['data'] ?? {})
          : null,
      santData: type == 'sant'
          ? SantData.fromJson(json['data'] ?? {})
          : null,
      aartiData: !['god', 'temple', 'sant'].contains(type)
          ? AartiModel.fromJson(json['data'] ?? {})
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'contentType': contentType,
    'contentId': contentId,
  };
}