// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_tab_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeTabListResponse _$HomeTabListResponseFromJson(Map<String, dynamic> json) =>
    _HomeTabListResponse(
      success: json['success'] as bool? ?? false,
      enabled: json['enabled'] as bool? ?? false,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => HomeTabModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeTabListResponseToJson(
  _HomeTabListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'enabled': instance.enabled,
  'data': instance.data,
};

_HomeTabModel _$HomeTabModelFromJson(Map<String, dynamic> json) =>
    _HomeTabModel(
      key: json['key'] as String? ?? '',
      kind: json['kind'] as String? ?? 'NATIVE',
      title: json['title'] as String? ?? '',
      icon: json['icon'] == null
          ? null
          : DynamicMedia.fromJson(json['icon'] as Map<String, dynamic>),
      requiresLogin: json['requiresLogin'] as bool? ?? false,
      isDefault: json['isDefault'] as bool? ?? false,
      pageSlug: json['pageSlug'] as String? ?? '',
      theme: json['theme'] == null
          ? null
          : DynamicTheme.fromJson(json['theme'] as Map<String, dynamic>),
      banner: json['banner'] == null
          ? null
          : DynamicBannerModel.fromJson(json['banner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeTabModelToJson(_HomeTabModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'kind': instance.kind,
      'title': instance.title,
      'icon': instance.icon,
      'requiresLogin': instance.requiresLogin,
      'isDefault': instance.isDefault,
      'pageSlug': instance.pageSlug,
      'theme': instance.theme,
      'banner': instance.banner,
    };

_DynamicMedia _$DynamicMediaFromJson(Map<String, dynamic> json) =>
    _DynamicMedia(
      id: json['id'] as String? ?? '',
      url: json['url'] as String? ?? '',
      format: json['format'] as String? ?? 'image',
    );

Map<String, dynamic> _$DynamicMediaToJson(_DynamicMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'format': instance.format,
    };

_DynamicTheme _$DynamicThemeFromJson(Map<String, dynamic> json) =>
    _DynamicTheme(
      gradientStart: json['gradientStart'] as String? ?? '',
      gradientEnd: json['gradientEnd'] as String? ?? '',
      gradientAngle: (json['gradientAngle'] as num?)?.toDouble() ?? 161.5,
      pageBgColor: json['pageBgColor'] as String? ?? '',
      primaryColor: json['primaryColor'] as String? ?? '',
      secondaryColor: json['secondaryColor'] as String? ?? '',
    );

Map<String, dynamic> _$DynamicThemeToJson(_DynamicTheme instance) =>
    <String, dynamic>{
      'gradientStart': instance.gradientStart,
      'gradientEnd': instance.gradientEnd,
      'gradientAngle': instance.gradientAngle,
      'pageBgColor': instance.pageBgColor,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
    };

_DynamicAction _$DynamicActionFromJson(Map<String, dynamic> json) =>
    _DynamicAction(
      type: json['type'] as String? ?? 'NONE',
      value: json['value'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$DynamicActionToJson(_DynamicAction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'url': instance.url,
    };

_DynamicBannerModel _$DynamicBannerModelFromJson(Map<String, dynamic> json) =>
    _DynamicBannerModel(
      format: json['format'] as String? ?? 'image',
      url: json['url'] as String? ?? '',
      html: json['html'] as String? ?? '',
      height: (json['height'] as num?)?.toDouble() ?? 0,
      action: json['action'] == null
          ? const DynamicAction()
          : DynamicAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DynamicBannerModelToJson(_DynamicBannerModel instance) =>
    <String, dynamic>{
      'format': instance.format,
      'url': instance.url,
      'html': instance.html,
      'height': instance.height,
      'action': instance.action,
    };

_DynamicPageResponse _$DynamicPageResponseFromJson(Map<String, dynamic> json) =>
    _DynamicPageResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] == null
          ? null
          : DynamicPageModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DynamicPageResponseToJson(
  _DynamicPageResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_DynamicPageModel _$DynamicPageModelFromJson(Map<String, dynamic> json) =>
    _DynamicPageModel(
      slug: json['slug'] as String? ?? '',
      title: json['title'] as String? ?? '',
      theme: json['theme'] == null
          ? null
          : DynamicTheme.fromJson(json['theme'] as Map<String, dynamic>),
      banner: json['banner'] == null
          ? null
          : DynamicBannerModel.fromJson(json['banner'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : DynamicMedia.fromJson(json['image'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      festivalSlug: json['festivalSlug'] as String? ?? '',
      festivalDate: json['festivalDate'] as String? ?? '',
      sections:
          (json['sections'] as List<dynamic>?)
              ?.map(
                (e) => DynamicSectionModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DynamicPageModelToJson(_DynamicPageModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'theme': instance.theme,
      'banner': instance.banner,
      'image': instance.image,
      'tags': instance.tags,
      'festivalSlug': instance.festivalSlug,
      'festivalDate': instance.festivalDate,
      'sections': instance.sections,
    };

_PageTagModel _$PageTagModelFromJson(Map<String, dynamic> json) =>
    _PageTagModel(
      key: json['key'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: json['color'] as String? ?? '',
    );

Map<String, dynamic> _$PageTagModelToJson(_PageTagModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'color': instance.color,
    };

_PageTagListResponse _$PageTagListResponseFromJson(Map<String, dynamic> json) =>
    _PageTagListResponse(
      success: json['success'] as bool? ?? false,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => PageTagModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PageTagListResponseToJson(
  _PageTagListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_PageListItemModel _$PageListItemModelFromJson(Map<String, dynamic> json) =>
    _PageListItemModel(
      slug: json['slug'] as String? ?? '',
      title: json['title'] as String? ?? '',
      image: json['image'] == null
          ? null
          : DynamicMedia.fromJson(json['image'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      isFeatured: json['isFeatured'] as bool? ?? false,
      festivalDate: json['festivalDate'] as String? ?? '',
      daysLeft: (json['daysLeft'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PageListItemModelToJson(_PageListItemModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'image': instance.image,
      'tags': instance.tags,
      'isFeatured': instance.isFeatured,
      'festivalDate': instance.festivalDate,
      'daysLeft': instance.daysLeft,
    };

_PageListResponse _$PageListResponseFromJson(
  Map<String, dynamic> json,
) => _PageListResponse(
  success: json['success'] as bool? ?? false,
  pending: json['pending'] as bool? ?? false,
  featured: json['featured'] == null
      ? null
      : PageListItemModel.fromJson(json['featured'] as Map<String, dynamic>),
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => PageListItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PageListResponseToJson(_PageListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'pending': instance.pending,
      'featured': instance.featured,
      'data': instance.data,
    };

_DynamicSectionModel _$DynamicSectionModelFromJson(Map<String, dynamic> json) =>
    _DynamicSectionModel(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      showOrnament: json['showOrnament'] as bool? ?? true,
      config: json['config'] as Map<String, dynamic>? ?? const {},
      banner: json['banner'] == null
          ? null
          : DynamicBannerModel.fromJson(json['banner'] as Map<String, dynamic>),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => DynamicItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DynamicSectionModelToJson(
  _DynamicSectionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'title': instance.title,
  'showOrnament': instance.showOrnament,
  'config': instance.config,
  'banner': instance.banner,
  'items': instance.items,
};

_DynamicItemModel _$DynamicItemModelFromJson(Map<String, dynamic> json) =>
    _DynamicItemModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      media: json['media'] == null
          ? null
          : DynamicMedia.fromJson(json['media'] as Map<String, dynamic>),
      badge: json['badge'] as String? ?? '',
      gradientStart: json['gradientStart'] as String? ?? '',
      gradientEnd: json['gradientEnd'] as String? ?? '',
      extra: json['extra'] as Map<String, dynamic>? ?? const {},
      action: json['action'] == null
          ? const DynamicAction()
          : DynamicAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DynamicItemModelToJson(_DynamicItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'media': instance.media,
      'badge': instance.badge,
      'gradientStart': instance.gradientStart,
      'gradientEnd': instance.gradientEnd,
      'extra': instance.extra,
      'action': instance.action,
    };
