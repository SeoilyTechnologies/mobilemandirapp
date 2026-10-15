// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) =>
    _BannerResponse(
      success: json['success'] as bool? ?? false,
      lang: json['lang'] as String? ?? 'en',
      count: (json['count'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BannerResponseToJson(_BannerResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'lang': instance.lang,
      'count': instance.count,
      'data': instance.data,
    };

_PanchangBannerModel _$PanchangBannerModelFromJson(Map<String, dynamic> json) =>
    _PanchangBannerModel(
      success: json['success'] as bool? ?? false,
      input: json['input'] == null
          ? null
          : InputModel.fromJson(json['input'] as Map<String, dynamic>),
      header: json['header'] == null
          ? null
          : HeaderModel.fromJson(json['header'] as Map<String, dynamic>),
      tithi: json['tithi'] == null
          ? null
          : TithiModel.fromJson(json['tithi'] as Map<String, dynamic>),
      vikramSamvat: json['vikramSamvat'] as String? ?? '',
      samvatsara: json['samvatsara'] as String? ?? '',
      hinduMonth: json['hinduMonth'] as String? ?? '',
    );

Map<String, dynamic> _$PanchangBannerModelToJson(
  _PanchangBannerModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'input': instance.input,
  'header': instance.header,
  'tithi': instance.tithi,
  'vikramSamvat': instance.vikramSamvat,
  'samvatsara': instance.samvatsara,
  'hinduMonth': instance.hinduMonth,
};

_InputModel _$InputModelFromJson(Map<String, dynamic> json) => _InputModel(
  latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
  longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
  date: json['date'] as String? ?? '',
  lang: json['lang'] as String? ?? 'en',
);

Map<String, dynamic> _$InputModelToJson(_InputModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'date': instance.date,
      'lang': instance.lang,
    };

_HeaderModel _$HeaderModelFromJson(Map<String, dynamic> json) => _HeaderModel(
  locationLabel: json['locationLabel'] as String? ?? '',
  dateDisplay: json['dateDisplay'] as String? ?? '',
  tithiLine: json['tithiLine'] as String? ?? '',
  pakshaLine: json['pakshaLine'] as String? ?? '',
  samvatLine: json['samvatLine'] as String? ?? '',
);

Map<String, dynamic> _$HeaderModelToJson(_HeaderModel instance) =>
    <String, dynamic>{
      'locationLabel': instance.locationLabel,
      'dateDisplay': instance.dateDisplay,
      'tithiLine': instance.tithiLine,
      'pakshaLine': instance.pakshaLine,
      'samvatLine': instance.samvatLine,
    };

_TithiModel _$TithiModelFromJson(Map<String, dynamic> json) => _TithiModel(
  number: (json['number'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  paksha: json['paksha'] as String? ?? '',
  display: json['display'] as String? ?? '',
  upto: json['upto'] as String? ?? '',
);

Map<String, dynamic> _$TithiModelToJson(_TithiModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'paksha': instance.paksha,
      'display': instance.display,
      'upto': instance.upto,
    };

_TodaySevaModel _$TodaySevaModelFromJson(Map<String, dynamic> json) =>
    _TodaySevaModel(
      vendorSeva:
          (json['vendorSeva'] as List<dynamic>?)
              ?.map((e) => VendorSevaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TodaySevaModelToJson(_TodaySevaModel instance) =>
    <String, dynamic>{'vendorSeva': instance.vendorSeva};

_VendorSevaModel _$VendorSevaModelFromJson(Map<String, dynamic> json) =>
    _VendorSevaModel(
      id: json['_id'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      name: json['name'] as String? ?? '',
      lines:
          (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      backgroundColor: json['backgroundColor'] as String? ?? '',
      backgroundColorEnd: json['backgroundColorEnd'] as String? ?? '',
      iconUrl: json['iconUrl'] as String? ?? '',
      iconType: json['iconType'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$VendorSevaModelToJson(_VendorSevaModel instance) =>
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

_BannerItem _$BannerItemFromJson(Map<String, dynamic> json) => _BannerItem(
  id: json['_id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  bannerImage: json['banner_image'] as String? ?? '',
  bannerType: json['bannerType'] as String? ?? '',
  actionType: json['actionType'] as String? ?? '',
  buttonText: json['buttonText'] as String? ?? '',
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? false,
  data: json['data'] as Map<String, dynamic>? ?? const {},
  panchangdata: json['panchangdata'] as Map<String, dynamic>? ?? const {},
  sevaData: json['sevaData'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$BannerItemToJson(_BannerItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'banner_image': instance.bannerImage,
      'bannerType': instance.bannerType,
      'actionType': instance.actionType,
      'buttonText': instance.buttonText,
      'priority': instance.priority,
      'isActive': instance.isActive,
      'data': instance.data,
      'panchangdata': instance.panchangdata,
      'sevaData': instance.sevaData,
    };
