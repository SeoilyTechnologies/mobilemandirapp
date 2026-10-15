// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationApiResponse {

 bool get success; String get message; NotificationData? get data; dynamic get errors;
/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationApiResponseCopyWith<NotificationApiResponse> get copyWith => _$NotificationApiResponseCopyWithImpl<NotificationApiResponse>(this as NotificationApiResponse, _$identity);

  /// Serializes this NotificationApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'NotificationApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $NotificationApiResponseCopyWith<$Res>  {
  factory $NotificationApiResponseCopyWith(NotificationApiResponse value, $Res Function(NotificationApiResponse) _then) = _$NotificationApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, NotificationData? data, dynamic errors
});


$NotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$NotificationApiResponseCopyWithImpl<$Res>
    implements $NotificationApiResponseCopyWith<$Res> {
  _$NotificationApiResponseCopyWithImpl(this._self, this._then);

  final NotificationApiResponse _self;
  final $Res Function(NotificationApiResponse) _then;

/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationApiResponse].
extension NotificationApiResponsePatterns on NotificationApiResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationApiResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationApiResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationApiResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  NotificationData? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  NotificationData? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _NotificationApiResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  NotificationData? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _NotificationApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationApiResponse implements NotificationApiResponse {
  const _NotificationApiResponse({this.success = false, this.message = '', this.data, this.errors});
  factory _NotificationApiResponse.fromJson(Map<String, dynamic> json) => _$NotificationApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override final  NotificationData? data;
@override final  dynamic errors;

/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationApiResponseCopyWith<_NotificationApiResponse> get copyWith => __$NotificationApiResponseCopyWithImpl<_NotificationApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'NotificationApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$NotificationApiResponseCopyWith<$Res> implements $NotificationApiResponseCopyWith<$Res> {
  factory _$NotificationApiResponseCopyWith(_NotificationApiResponse value, $Res Function(_NotificationApiResponse) _then) = __$NotificationApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, NotificationData? data, dynamic errors
});


@override $NotificationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$NotificationApiResponseCopyWithImpl<$Res>
    implements _$NotificationApiResponseCopyWith<$Res> {
  __$NotificationApiResponseCopyWithImpl(this._self, this._then);

  final _NotificationApiResponse _self;
  final $Res Function(_NotificationApiResponse) _then;

/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_NotificationApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of NotificationApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationData {

 List<NotificationItem> get items; NotificationPagination? get pagination; int get unreadCount;
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<NotificationData> get copyWith => _$NotificationDataCopyWithImpl<NotificationData>(this as NotificationData, _$identity);

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination,unreadCount);

@override
String toString() {
  return 'NotificationData(items: $items, pagination: $pagination, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $NotificationDataCopyWith<$Res>  {
  factory $NotificationDataCopyWith(NotificationData value, $Res Function(NotificationData) _then) = _$NotificationDataCopyWithImpl;
@useResult
$Res call({
 List<NotificationItem> items, NotificationPagination? pagination, int unreadCount
});


$NotificationPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._self, this._then);

  final NotificationData _self;
  final $Res Function(NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = freezed,Object? unreadCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as NotificationPagination?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $NotificationPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationData].
extension NotificationDataPatterns on NotificationData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationData value)  $default,){
final _that = this;
switch (_that) {
case _NotificationData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationItem> items,  NotificationPagination? pagination,  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.items,_that.pagination,_that.unreadCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationItem> items,  NotificationPagination? pagination,  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _NotificationData():
return $default(_that.items,_that.pagination,_that.unreadCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationItem> items,  NotificationPagination? pagination,  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.items,_that.pagination,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationData implements NotificationData {
  const _NotificationData({final  List<NotificationItem> items = const [], this.pagination, this.unreadCount = 0}): _items = items;
  factory _NotificationData.fromJson(Map<String, dynamic> json) => _$NotificationDataFromJson(json);

 final  List<NotificationItem> _items;
@override@JsonKey() List<NotificationItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  NotificationPagination? pagination;
@override@JsonKey() final  int unreadCount;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDataCopyWith<_NotificationData> get copyWith => __$NotificationDataCopyWithImpl<_NotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination,unreadCount);

@override
String toString() {
  return 'NotificationData(items: $items, pagination: $pagination, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$NotificationDataCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory _$NotificationDataCopyWith(_NotificationData value, $Res Function(_NotificationData) _then) = __$NotificationDataCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationItem> items, NotificationPagination? pagination, int unreadCount
});


@override $NotificationPaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$NotificationDataCopyWithImpl<$Res>
    implements _$NotificationDataCopyWith<$Res> {
  __$NotificationDataCopyWithImpl(this._self, this._then);

  final _NotificationData _self;
  final $Res Function(_NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = freezed,Object? unreadCount = null,}) {
  return _then(_NotificationData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as NotificationPagination?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $NotificationPaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$NotificationItem {

@JsonKey(name: '_id') String get id; String get userId; String get appType; String get title; String get body; String get type; String? get sevaId; String? get vendorId; String? get godId; String? get aartiId; String? get contentId; String? get serviceId; NotificationPayload? get data; List<String> get topics; List<String> get messageIds; bool get isRead; DateTime? get readAt; bool get isDemo; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int get version;
/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationItemCopyWith<NotificationItem> get copyWith => _$NotificationItemCopyWithImpl<NotificationItem>(this as NotificationItem, _$identity);

  /// Serializes this NotificationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appType, appType) || other.appType == appType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.godId, godId) || other.godId == godId)&&(identical(other.aartiId, aartiId) || other.aartiId == aartiId)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.topics, topics)&&const DeepCollectionEquality().equals(other.messageIds, messageIds)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,appType,title,body,type,sevaId,vendorId,godId,aartiId,contentId,serviceId,data,const DeepCollectionEquality().hash(topics),const DeepCollectionEquality().hash(messageIds),isRead,readAt,isDemo,createdAt,updatedAt,version]);

@override
String toString() {
  return 'NotificationItem(id: $id, userId: $userId, appType: $appType, title: $title, body: $body, type: $type, sevaId: $sevaId, vendorId: $vendorId, godId: $godId, aartiId: $aartiId, contentId: $contentId, serviceId: $serviceId, data: $data, topics: $topics, messageIds: $messageIds, isRead: $isRead, readAt: $readAt, isDemo: $isDemo, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $NotificationItemCopyWith<$Res>  {
  factory $NotificationItemCopyWith(NotificationItem value, $Res Function(NotificationItem) _then) = _$NotificationItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String userId, String appType, String title, String body, String type, String? sevaId, String? vendorId, String? godId, String? aartiId, String? contentId, String? serviceId, NotificationPayload? data, List<String> topics, List<String> messageIds, bool isRead, DateTime? readAt, bool isDemo, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int version
});


$NotificationPayloadCopyWith<$Res>? get data;

}
/// @nodoc
class _$NotificationItemCopyWithImpl<$Res>
    implements $NotificationItemCopyWith<$Res> {
  _$NotificationItemCopyWithImpl(this._self, this._then);

  final NotificationItem _self;
  final $Res Function(NotificationItem) _then;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? appType = null,Object? title = null,Object? body = null,Object? type = null,Object? sevaId = freezed,Object? vendorId = freezed,Object? godId = freezed,Object? aartiId = freezed,Object? contentId = freezed,Object? serviceId = freezed,Object? data = freezed,Object? topics = null,Object? messageIds = null,Object? isRead = null,Object? readAt = freezed,Object? isDemo = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appType: null == appType ? _self.appType : appType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sevaId: freezed == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,godId: freezed == godId ? _self.godId : godId // ignore: cast_nullable_to_non_nullable
as String?,aartiId: freezed == aartiId ? _self.aartiId : aartiId // ignore: cast_nullable_to_non_nullable
as String?,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationPayload?,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,messageIds: null == messageIds ? _self.messageIds : messageIds // ignore: cast_nullable_to_non_nullable
as List<String>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPayloadCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationPayloadCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationItem].
extension NotificationItemPatterns on NotificationItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationItem value)  $default,){
final _that = this;
switch (_that) {
case _NotificationItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationItem value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userId,  String appType,  String title,  String body,  String type,  String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  NotificationPayload? data,  List<String> topics,  List<String> messageIds,  bool isRead,  DateTime? readAt,  bool isDemo,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that.id,_that.userId,_that.appType,_that.title,_that.body,_that.type,_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.data,_that.topics,_that.messageIds,_that.isRead,_that.readAt,_that.isDemo,_that.createdAt,_that.updatedAt,_that.version);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userId,  String appType,  String title,  String body,  String type,  String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  NotificationPayload? data,  List<String> topics,  List<String> messageIds,  bool isRead,  DateTime? readAt,  bool isDemo,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int version)  $default,) {final _that = this;
switch (_that) {
case _NotificationItem():
return $default(_that.id,_that.userId,_that.appType,_that.title,_that.body,_that.type,_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.data,_that.topics,_that.messageIds,_that.isRead,_that.readAt,_that.isDemo,_that.createdAt,_that.updatedAt,_that.version);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String userId,  String appType,  String title,  String body,  String type,  String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  NotificationPayload? data,  List<String> topics,  List<String> messageIds,  bool isRead,  DateTime? readAt,  bool isDemo,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int version)?  $default,) {final _that = this;
switch (_that) {
case _NotificationItem() when $default != null:
return $default(_that.id,_that.userId,_that.appType,_that.title,_that.body,_that.type,_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.data,_that.topics,_that.messageIds,_that.isRead,_that.readAt,_that.isDemo,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationItem implements NotificationItem {
  const _NotificationItem({@JsonKey(name: '_id') this.id = '', this.userId = '', this.appType = '', this.title = '', this.body = '', this.type = '', this.sevaId, this.vendorId, this.godId, this.aartiId, this.contentId, this.serviceId, this.data, final  List<String> topics = const [], final  List<String> messageIds = const [], this.isRead = false, this.readAt, this.isDemo = false, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version = 0}): _topics = topics,_messageIds = messageIds;
  factory _NotificationItem.fromJson(Map<String, dynamic> json) => _$NotificationItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String userId;
@override@JsonKey() final  String appType;
@override@JsonKey() final  String title;
@override@JsonKey() final  String body;
@override@JsonKey() final  String type;
@override final  String? sevaId;
@override final  String? vendorId;
@override final  String? godId;
@override final  String? aartiId;
@override final  String? contentId;
@override final  String? serviceId;
@override final  NotificationPayload? data;
 final  List<String> _topics;
@override@JsonKey() List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

 final  List<String> _messageIds;
@override@JsonKey() List<String> get messageIds {
  if (_messageIds is EqualUnmodifiableListView) return _messageIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messageIds);
}

@override@JsonKey() final  bool isRead;
@override final  DateTime? readAt;
@override@JsonKey() final  bool isDemo;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int version;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationItemCopyWith<_NotificationItem> get copyWith => __$NotificationItemCopyWithImpl<_NotificationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appType, appType) || other.appType == appType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.godId, godId) || other.godId == godId)&&(identical(other.aartiId, aartiId) || other.aartiId == aartiId)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._topics, _topics)&&const DeepCollectionEquality().equals(other._messageIds, _messageIds)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,appType,title,body,type,sevaId,vendorId,godId,aartiId,contentId,serviceId,data,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_messageIds),isRead,readAt,isDemo,createdAt,updatedAt,version]);

@override
String toString() {
  return 'NotificationItem(id: $id, userId: $userId, appType: $appType, title: $title, body: $body, type: $type, sevaId: $sevaId, vendorId: $vendorId, godId: $godId, aartiId: $aartiId, contentId: $contentId, serviceId: $serviceId, data: $data, topics: $topics, messageIds: $messageIds, isRead: $isRead, readAt: $readAt, isDemo: $isDemo, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$NotificationItemCopyWith<$Res> implements $NotificationItemCopyWith<$Res> {
  factory _$NotificationItemCopyWith(_NotificationItem value, $Res Function(_NotificationItem) _then) = __$NotificationItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String userId, String appType, String title, String body, String type, String? sevaId, String? vendorId, String? godId, String? aartiId, String? contentId, String? serviceId, NotificationPayload? data, List<String> topics, List<String> messageIds, bool isRead, DateTime? readAt, bool isDemo, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int version
});


@override $NotificationPayloadCopyWith<$Res>? get data;

}
/// @nodoc
class __$NotificationItemCopyWithImpl<$Res>
    implements _$NotificationItemCopyWith<$Res> {
  __$NotificationItemCopyWithImpl(this._self, this._then);

  final _NotificationItem _self;
  final $Res Function(_NotificationItem) _then;

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? appType = null,Object? title = null,Object? body = null,Object? type = null,Object? sevaId = freezed,Object? vendorId = freezed,Object? godId = freezed,Object? aartiId = freezed,Object? contentId = freezed,Object? serviceId = freezed,Object? data = freezed,Object? topics = null,Object? messageIds = null,Object? isRead = null,Object? readAt = freezed,Object? isDemo = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = null,}) {
  return _then(_NotificationItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appType: null == appType ? _self.appType : appType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sevaId: freezed == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,godId: freezed == godId ? _self.godId : godId // ignore: cast_nullable_to_non_nullable
as String?,aartiId: freezed == aartiId ? _self.aartiId : aartiId // ignore: cast_nullable_to_non_nullable
as String?,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationPayload?,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,messageIds: null == messageIds ? _self._messageIds : messageIds // ignore: cast_nullable_to_non_nullable
as List<String>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of NotificationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPayloadCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationPayloadCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationPayload {

 String? get sevaId; String? get vendorId; String? get godId; String? get aartiId; String? get contentId; String? get serviceId; String get type; String get isDemo;
/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPayloadCopyWith<NotificationPayload> get copyWith => _$NotificationPayloadCopyWithImpl<NotificationPayload>(this as NotificationPayload, _$identity);

  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPayload&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.godId, godId) || other.godId == godId)&&(identical(other.aartiId, aartiId) || other.aartiId == aartiId)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sevaId,vendorId,godId,aartiId,contentId,serviceId,type,isDemo);

@override
String toString() {
  return 'NotificationPayload(sevaId: $sevaId, vendorId: $vendorId, godId: $godId, aartiId: $aartiId, contentId: $contentId, serviceId: $serviceId, type: $type, isDemo: $isDemo)';
}


}

/// @nodoc
abstract mixin class $NotificationPayloadCopyWith<$Res>  {
  factory $NotificationPayloadCopyWith(NotificationPayload value, $Res Function(NotificationPayload) _then) = _$NotificationPayloadCopyWithImpl;
@useResult
$Res call({
 String? sevaId, String? vendorId, String? godId, String? aartiId, String? contentId, String? serviceId, String type, String isDemo
});




}
/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._self, this._then);

  final NotificationPayload _self;
  final $Res Function(NotificationPayload) _then;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sevaId = freezed,Object? vendorId = freezed,Object? godId = freezed,Object? aartiId = freezed,Object? contentId = freezed,Object? serviceId = freezed,Object? type = null,Object? isDemo = null,}) {
  return _then(_self.copyWith(
sevaId: freezed == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,godId: freezed == godId ? _self.godId : godId // ignore: cast_nullable_to_non_nullable
as String?,aartiId: freezed == aartiId ? _self.aartiId : aartiId // ignore: cast_nullable_to_non_nullable
as String?,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPayload].
extension NotificationPayloadPatterns on NotificationPayload {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPayload value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPayload():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPayload value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  String type,  String isDemo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.type,_that.isDemo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  String type,  String isDemo)  $default,) {final _that = this;
switch (_that) {
case _NotificationPayload():
return $default(_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.type,_that.isDemo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? sevaId,  String? vendorId,  String? godId,  String? aartiId,  String? contentId,  String? serviceId,  String type,  String isDemo)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that.sevaId,_that.vendorId,_that.godId,_that.aartiId,_that.contentId,_that.serviceId,_that.type,_that.isDemo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPayload implements NotificationPayload {
  const _NotificationPayload({this.sevaId, this.vendorId, this.godId, this.aartiId, this.contentId, this.serviceId, this.type = '', this.isDemo = 'false'});
  factory _NotificationPayload.fromJson(Map<String, dynamic> json) => _$NotificationPayloadFromJson(json);

@override final  String? sevaId;
@override final  String? vendorId;
@override final  String? godId;
@override final  String? aartiId;
@override final  String? contentId;
@override final  String? serviceId;
@override@JsonKey() final  String type;
@override@JsonKey() final  String isDemo;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPayloadCopyWith<_NotificationPayload> get copyWith => __$NotificationPayloadCopyWithImpl<_NotificationPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPayload&&(identical(other.sevaId, sevaId) || other.sevaId == sevaId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.godId, godId) || other.godId == godId)&&(identical(other.aartiId, aartiId) || other.aartiId == aartiId)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sevaId,vendorId,godId,aartiId,contentId,serviceId,type,isDemo);

@override
String toString() {
  return 'NotificationPayload(sevaId: $sevaId, vendorId: $vendorId, godId: $godId, aartiId: $aartiId, contentId: $contentId, serviceId: $serviceId, type: $type, isDemo: $isDemo)';
}


}

/// @nodoc
abstract mixin class _$NotificationPayloadCopyWith<$Res> implements $NotificationPayloadCopyWith<$Res> {
  factory _$NotificationPayloadCopyWith(_NotificationPayload value, $Res Function(_NotificationPayload) _then) = __$NotificationPayloadCopyWithImpl;
@override @useResult
$Res call({
 String? sevaId, String? vendorId, String? godId, String? aartiId, String? contentId, String? serviceId, String type, String isDemo
});




}
/// @nodoc
class __$NotificationPayloadCopyWithImpl<$Res>
    implements _$NotificationPayloadCopyWith<$Res> {
  __$NotificationPayloadCopyWithImpl(this._self, this._then);

  final _NotificationPayload _self;
  final $Res Function(_NotificationPayload) _then;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sevaId = freezed,Object? vendorId = freezed,Object? godId = freezed,Object? aartiId = freezed,Object? contentId = freezed,Object? serviceId = freezed,Object? type = null,Object? isDemo = null,}) {
  return _then(_NotificationPayload(
sevaId: freezed == sevaId ? _self.sevaId : sevaId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,godId: freezed == godId ? _self.godId : godId // ignore: cast_nullable_to_non_nullable
as String?,aartiId: freezed == aartiId ? _self.aartiId : aartiId // ignore: cast_nullable_to_non_nullable
as String?,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NotificationPagination {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPaginationCopyWith<NotificationPagination> get copyWith => _$NotificationPaginationCopyWithImpl<NotificationPagination>(this as NotificationPagination, _$identity);

  /// Serializes this NotificationPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPagination&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'NotificationPagination(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $NotificationPaginationCopyWith<$Res>  {
  factory $NotificationPaginationCopyWith(NotificationPagination value, $Res Function(NotificationPagination) _then) = _$NotificationPaginationCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$NotificationPaginationCopyWithImpl<$Res>
    implements $NotificationPaginationCopyWith<$Res> {
  _$NotificationPaginationCopyWithImpl(this._self, this._then);

  final NotificationPagination _self;
  final $Res Function(NotificationPagination) _then;

/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPagination].
extension NotificationPaginationPatterns on NotificationPagination {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPagination value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPagination():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPagination value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _NotificationPagination():
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPagination() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPagination implements NotificationPagination {
  const _NotificationPagination({this.page = 1, this.limit = 20, this.total = 0, this.totalPages = 0});
  factory _NotificationPagination.fromJson(Map<String, dynamic> json) => _$NotificationPaginationFromJson(json);

@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int total;
@override@JsonKey() final  int totalPages;

/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPaginationCopyWith<_NotificationPagination> get copyWith => __$NotificationPaginationCopyWithImpl<_NotificationPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPagination&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'NotificationPagination(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$NotificationPaginationCopyWith<$Res> implements $NotificationPaginationCopyWith<$Res> {
  factory _$NotificationPaginationCopyWith(_NotificationPagination value, $Res Function(_NotificationPagination) _then) = __$NotificationPaginationCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$NotificationPaginationCopyWithImpl<$Res>
    implements _$NotificationPaginationCopyWith<$Res> {
  __$NotificationPaginationCopyWithImpl(this._self, this._then);

  final _NotificationPagination _self;
  final $Res Function(_NotificationPagination) _then;

/// Create a copy of NotificationPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_NotificationPagination(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
