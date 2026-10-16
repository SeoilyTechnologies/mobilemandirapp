import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_tab_models.freezed.dart';
part 'dynamic_tab_models.g.dart';

/* ==========================================================
   Admin-driven home tabs + section pages
   GET home-tab/list        → HomeTabListResponse
   GET home-tab/page/:slug  → DynamicPageResponse
   Every field has a default so bad / partial server data never throws.
   ========================================================== */

@freezed
abstract class HomeTabListResponse with _$HomeTabListResponse {
  const factory HomeTabListResponse({
    @Default(false) bool success,
    // false → app keeps its built-in tabs
    @Default(false) bool enabled,
    @Default([]) List<HomeTabModel> data,
  }) = _HomeTabListResponse;

  factory HomeTabListResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeTabListResponseFromJson(json);
}

@freezed
abstract class HomeTabModel with _$HomeTabModel {
  const HomeTabModel._();

  const factory HomeTabModel({
    @Default('') String key,
    // NATIVE (built-in screen) | DYNAMIC (section page)
    @Default('NATIVE') String kind,
    // Empty for built-in tabs → app's translated name.
    @Default('') String title,
    DynamicMedia? icon,
    @Default(false) bool requiresLogin,
    // App opens on this tab (set by admin, only while the tab is visible).
    @Default(false) bool isDefault,
    @Default('') String pageSlug,
    DynamicTheme? theme,
    DynamicBannerModel? banner,
  }) = _HomeTabModel;

  bool get isDynamic => kind == 'DYNAMIC';

  factory HomeTabModel.fromJson(Map<String, dynamic> json) =>
      _$HomeTabModelFromJson(json);
}

@freezed
abstract class DynamicMedia with _$DynamicMedia {
  const factory DynamicMedia({
    @Default('') String id,
    @Default('') String url,
    // image | gif | svg
    @Default('image') String format,
  }) = _DynamicMedia;

  factory DynamicMedia.fromJson(Map<String, dynamic> json) =>
      _$DynamicMediaFromJson(json);
}

@freezed
abstract class DynamicTheme with _$DynamicTheme {
  const factory DynamicTheme({
    @Default('') String gradientStart,
    @Default('') String gradientEnd,
    @Default(161.5) double gradientAngle,
    @Default('') String pageBgColor,
    @Default('') String primaryColor,
    @Default('') String secondaryColor,
  }) = _DynamicTheme;

  factory DynamicTheme.fromJson(Map<String, dynamic> json) =>
      _$DynamicThemeFromJson(json);
}

@freezed
abstract class DynamicAction with _$DynamicAction {
  const factory DynamicAction({
    @Default('NONE') String type,
    @Default('') String value,
    @Default('') String url,
  }) = _DynamicAction;

  factory DynamicAction.fromJson(Map<String, dynamic> json) =>
      _$DynamicActionFromJson(json);
}

@freezed
abstract class DynamicBannerModel with _$DynamicBannerModel {
  const factory DynamicBannerModel({
    // image | gif | svg | html
    @Default('image') String format,
    @Default('') String url,
    @Default('') String html,
    // Height in design px at 393 width; 0 = media aspect ratio.
    @Default(0) double height,
    @Default(DynamicAction()) DynamicAction action,
  }) = _DynamicBannerModel;

  factory DynamicBannerModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicBannerModelFromJson(json);
}

@freezed
abstract class DynamicPageResponse with _$DynamicPageResponse {
  const factory DynamicPageResponse({
    @Default(false) bool success,
    DynamicPageModel? data,
  }) = _DynamicPageResponse;

  factory DynamicPageResponse.fromJson(Map<String, dynamic> json) =>
      _$DynamicPageResponseFromJson(json);
}

@freezed
abstract class DynamicPageModel with _$DynamicPageModel {
  const factory DynamicPageModel({
    @Default('') String slug,
    @Default('') String title,
    DynamicTheme? theme,
    DynamicBannerModel? banner,
    // Card image used where the page is listed (Festival & Event).
    DynamicMedia? image,
    @Default([]) List<String> tags,
    @Default('') String festivalSlug,
    @Default('') String festivalDate,
    @Default([]) List<DynamicSectionModel> sections,
  }) = _DynamicPageModel;

  factory DynamicPageModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicPageModelFromJson(json);
}

/* ==========================================================
   Tagged page listing ("Festival & Event")
   GET home-tab/page-tags → PageTagListResponse
   GET home-tab/pages     → PageListResponse
   ========================================================== */

@freezed
abstract class PageTagModel with _$PageTagModel {
  const factory PageTagModel({
    @Default('') String key,
    @Default('') String name,
    // #RRGGBB or empty
    @Default('') String color,
  }) = _PageTagModel;

  factory PageTagModel.fromJson(Map<String, dynamic> json) =>
      _$PageTagModelFromJson(json);
}

@freezed
abstract class PageTagListResponse with _$PageTagListResponse {
  const factory PageTagListResponse({
    @Default(false) bool success,
    @Default([]) List<PageTagModel> data,
  }) = _PageTagListResponse;

  factory PageTagListResponse.fromJson(Map<String, dynamic> json) =>
      _$PageTagListResponseFromJson(json);
}

@freezed
abstract class PageListItemModel with _$PageListItemModel {
  const factory PageListItemModel({
    @Default('') String slug,
    @Default('') String title,
    DynamicMedia? image,
    @Default([]) List<String> tags,
    @Default(false) bool isFeatured,
    // YYYY-MM-DD; empty when the page has no festival date.
    @Default('') String festivalDate,
    int? daysLeft,
  }) = _PageListItemModel;

  factory PageListItemModel.fromJson(Map<String, dynamic> json) =>
      _$PageListItemModelFromJson(json);
}

@freezed
abstract class PageListResponse with _$PageListResponse {
  const factory PageListResponse({
    @Default(false) bool success,
    // Year listing only: server is still fetching some dates → ask again shortly.
    @Default(false) bool pending,
    PageListItemModel? featured,
    @Default([]) List<PageListItemModel> data,
  }) = _PageListResponse;

  factory PageListResponse.fromJson(Map<String, dynamic> json) =>
      _$PageListResponseFromJson(json);
}

@freezed
abstract class DynamicSectionModel with _$DynamicSectionModel {
  const factory DynamicSectionModel({
    @Default('') String id,
    @Default('') String type,
    @Default('') String title,
    @Default(true) bool showOrnament,
    // Per-type settings, already localized by the server.
    @Default({}) Map<String, dynamic> config,
    DynamicBannerModel? banner,
    @Default([]) List<DynamicItemModel> items,
  }) = _DynamicSectionModel;

  factory DynamicSectionModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicSectionModelFromJson(json);
}

@freezed
abstract class DynamicItemModel with _$DynamicItemModel {
  const factory DynamicItemModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String subtitle,
    DynamicMedia? media,
    @Default('') String badge,
    @Default('') String gradientStart,
    @Default('') String gradientEnd,
    @Default({}) Map<String, dynamic> extra,
    @Default(DynamicAction()) DynamicAction action,
  }) = _DynamicItemModel;

  factory DynamicItemModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicItemModelFromJson(json);
}
