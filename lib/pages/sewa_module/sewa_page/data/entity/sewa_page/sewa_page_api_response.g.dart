// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sewa_page_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SewaPageApiResponse _$SewaPageApiResponseFromJson(Map<String, dynamic> json) =>
    _SewaPageApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const SewaData()
          : SewaData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$SewaPageApiResponseToJson(
  _SewaPageApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_SewaData _$SewaDataFromJson(Map<String, dynamic> json) => _SewaData(
  id: json['_id'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  name: json['name'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameHi: json['nameHi'] as String? ?? '',
  description: json['description'] as String? ?? '',
  backgroundColor: json['backgroundColor'] as String? ?? '',
  backgroundColorEnd: json['backgroundColorEnd'] as String? ?? '',
  icon: json['icon'] as String? ?? '',
  gifIcon: json['gifIcon'] as String? ?? '',
  video: json['video'] as String? ?? '',
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  youtubePlaylistId: json['youtubePlaylistId'] as String? ?? '',
  metaTitle: json['metaTitle'] as String? ?? '',
  metaDescription: json['metaDescription'] as String? ?? '',
  pageContent: json['pageContent'] == null
      ? const SewaPageContent()
      : SewaPageContent.fromJson(json['pageContent'] as Map<String, dynamic>),
  offerings:
      (json['offerings'] as List<dynamic>?)
          ?.map((e) => Offering.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Offering>[],
  lines:
      (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  amountOptions:
      (json['amountOptions'] as List<dynamic>?)
          ?.map((e) => AmountOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AmountOption>[],
  oneTimeAmountOptions:
      (json['oneTimeAmountOptions'] as List<dynamic>?)
          ?.map((e) => AmountOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AmountOption>[],
  monthlyAmountOptions:
      (json['monthlyAmountOptions'] as List<dynamic>?)
          ?.map((e) => AmountOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AmountOption>[],
  tithis:
      (json['tithis'] as List<dynamic>?)
          ?.map((e) => TithiOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TithiOption>[],
  isActive: json['isActive'] as bool? ?? false,
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SewaDataToJson(_SewaData instance) => <String, dynamic>{
  '_id': instance.id,
  'slug': instance.slug,
  'name': instance.name,
  'nameEn': instance.nameEn,
  'nameHi': instance.nameHi,
  'description': instance.description,
  'backgroundColor': instance.backgroundColor,
  'backgroundColorEnd': instance.backgroundColorEnd,
  'icon': instance.icon,
  'gifIcon': instance.gifIcon,
  'video': instance.video,
  'images': instance.images,
  'youtubePlaylistId': instance.youtubePlaylistId,
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
  'pageContent': instance.pageContent,
  'offerings': instance.offerings,
  'lines': instance.lines,
  'amountOptions': instance.amountOptions,
  'oneTimeAmountOptions': instance.oneTimeAmountOptions,
  'monthlyAmountOptions': instance.monthlyAmountOptions,
  'tithis': instance.tithis,
  'isActive': instance.isActive,
  'order': instance.order,
};

_SewaPageContent _$SewaPageContentFromJson(Map<String, dynamic> json) =>
    _SewaPageContent(
      heading: json['heading'] == null
          ? const LocalizedText()
          : LocalizedText.fromJson(json['heading'] as Map<String, dynamic>),
      paragraph: json['paragraph'] == null
          ? const LocalizedText()
          : LocalizedText.fromJson(json['paragraph'] as Map<String, dynamic>),
      subHeading: json['subHeading'] == null
          ? const LocalizedText()
          : LocalizedText.fromJson(json['subHeading'] as Map<String, dynamic>),
      bullets:
          (json['bullets'] as List<dynamic>?)
              ?.map((e) => LocalizedText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LocalizedText>[],
      faqHeading: json['faqHeading'] == null
          ? const LocalizedText()
          : LocalizedText.fromJson(json['faqHeading'] as Map<String, dynamic>),
      faqDescription: json['faqDescription'] == null
          ? const LocalizedText()
          : LocalizedText.fromJson(
              json['faqDescription'] as Map<String, dynamic>,
            ),
      faqs:
          (json['faqs'] as List<dynamic>?)
              ?.map((e) => SewaFaq.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SewaFaq>[],
    );

Map<String, dynamic> _$SewaPageContentToJson(_SewaPageContent instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'paragraph': instance.paragraph,
      'subHeading': instance.subHeading,
      'bullets': instance.bullets,
      'faqHeading': instance.faqHeading,
      'faqDescription': instance.faqDescription,
      'faqs': instance.faqs,
    };

_LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    _LocalizedText(
      en: json['en'] as String? ?? '',
      hi: json['hi'] as String? ?? '',
    );

Map<String, dynamic> _$LocalizedTextToJson(_LocalizedText instance) =>
    <String, dynamic>{'en': instance.en, 'hi': instance.hi};

_SewaFaq _$SewaFaqFromJson(Map<String, dynamic> json) => _SewaFaq(
  question: json['question'] == null
      ? const LocalizedText()
      : LocalizedText.fromJson(json['question'] as Map<String, dynamic>),
  answer: json['answer'] == null
      ? const LocalizedText()
      : LocalizedText.fromJson(json['answer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SewaFaqToJson(_SewaFaq instance) => <String, dynamic>{
  'question': instance.question,
  'answer': instance.answer,
};

_Offering _$OfferingFromJson(Map<String, dynamic> json) => _Offering(
  name: json['name'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameHi: json['nameHi'] as String? ?? '',
  imageUrl: json['imageUrl'] as String? ?? '',
  isActive: json['isActive'] as bool? ?? true,
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$OfferingToJson(_Offering instance) => <String, dynamic>{
  'name': instance.name,
  'nameEn': instance.nameEn,
  'nameHi': instance.nameHi,
  'imageUrl': instance.imageUrl,
  'isActive': instance.isActive,
  'order': instance.order,
};

_AmountOption _$AmountOptionFromJson(Map<String, dynamic> json) =>
    _AmountOption(
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      label: json['label'] as String? ?? '',
      badge: json['badge'] as String? ?? '',
    );

Map<String, dynamic> _$AmountOptionToJson(_AmountOption instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'label': instance.label,
      'badge': instance.badge,
    };

_TithiOption _$TithiOptionFromJson(Map<String, dynamic> json) => _TithiOption(
  id: json['_id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameHi: json['nameHi'] as String? ?? '',
  code: json['code'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TithiOptionToJson(_TithiOption instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'nameEn': instance.nameEn,
      'nameHi': instance.nameHi,
      'code': instance.code,
      'order': instance.order,
    };
