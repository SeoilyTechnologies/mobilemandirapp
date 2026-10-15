// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationApiResponse _$NotificationApiResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationApiResponse(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? null
      : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'],
);

Map<String, dynamic> _$NotificationApiResponseToJson(
  _NotificationApiResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

_NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    _NotificationData(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? null
          : NotificationPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NotificationDataToJson(_NotificationData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
      'unreadCount': instance.unreadCount,
    };

_NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    _NotificationItem(
      id: json['_id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      appType: json['appType'] as String? ?? '',
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      type: json['type'] as String? ?? '',
      sevaId: json['sevaId'] as String?,
      vendorId: json['vendorId'] as String?,
      godId: json['godId'] as String?,
      aartiId: json['aartiId'] as String?,
      contentId: json['contentId'] as String?,
      serviceId: json['serviceId'] as String?,
      data: json['data'] == null
          ? null
          : NotificationPayload.fromJson(json['data'] as Map<String, dynamic>),
      topics:
          (json['topics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      messageIds:
          (json['messageIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isRead: json['isRead'] as bool? ?? false,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      isDemo: json['isDemo'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NotificationItemToJson(_NotificationItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'appType': instance.appType,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'sevaId': instance.sevaId,
      'vendorId': instance.vendorId,
      'godId': instance.godId,
      'aartiId': instance.aartiId,
      'contentId': instance.contentId,
      'serviceId': instance.serviceId,
      'data': instance.data,
      'topics': instance.topics,
      'messageIds': instance.messageIds,
      'isRead': instance.isRead,
      'readAt': instance.readAt?.toIso8601String(),
      'isDemo': instance.isDemo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
    };

_NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) =>
    _NotificationPayload(
      sevaId: json['sevaId'] as String?,
      vendorId: json['vendorId'] as String?,
      godId: json['godId'] as String?,
      aartiId: json['aartiId'] as String?,
      contentId: json['contentId'] as String?,
      serviceId: json['serviceId'] as String?,
      type: json['type'] as String? ?? '',
      isDemo: json['isDemo'] as String? ?? 'false',
    );

Map<String, dynamic> _$NotificationPayloadToJson(
  _NotificationPayload instance,
) => <String, dynamic>{
  'sevaId': instance.sevaId,
  'vendorId': instance.vendorId,
  'godId': instance.godId,
  'aartiId': instance.aartiId,
  'contentId': instance.contentId,
  'serviceId': instance.serviceId,
  'type': instance.type,
  'isDemo': instance.isDemo,
};

_NotificationPagination _$NotificationPaginationFromJson(
  Map<String, dynamic> json,
) => _NotificationPagination(
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  total: (json['total'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$NotificationPaginationToJson(
  _NotificationPagination instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'totalPages': instance.totalPages,
};
