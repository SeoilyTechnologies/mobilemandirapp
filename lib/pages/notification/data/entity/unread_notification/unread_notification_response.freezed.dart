// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unread_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnreadNotificationResponse {

 bool get success; String get message; UnreadNotificationData get data; dynamic get errors;
/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadNotificationResponseCopyWith<UnreadNotificationResponse> get copyWith => _$UnreadNotificationResponseCopyWithImpl<UnreadNotificationResponse>(this as UnreadNotificationResponse, _$identity);

  /// Serializes this UnreadNotificationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadNotificationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'UnreadNotificationResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UnreadNotificationResponseCopyWith<$Res>  {
  factory $UnreadNotificationResponseCopyWith(UnreadNotificationResponse value, $Res Function(UnreadNotificationResponse) _then) = _$UnreadNotificationResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, UnreadNotificationData data, dynamic errors
});


$UnreadNotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$UnreadNotificationResponseCopyWithImpl<$Res>
    implements $UnreadNotificationResponseCopyWith<$Res> {
  _$UnreadNotificationResponseCopyWithImpl(this._self, this._then);

  final UnreadNotificationResponse _self;
  final $Res Function(UnreadNotificationResponse) _then;

/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UnreadNotificationData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnreadNotificationDataCopyWith<$Res> get data {
  
  return $UnreadNotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnreadNotificationResponse].
extension UnreadNotificationResponsePatterns on UnreadNotificationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnreadNotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnreadNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnreadNotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _UnreadNotificationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnreadNotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UnreadNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  UnreadNotificationData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnreadNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  UnreadNotificationData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _UnreadNotificationResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  UnreadNotificationData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _UnreadNotificationResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnreadNotificationResponse implements UnreadNotificationResponse {
  const _UnreadNotificationResponse({this.success = false, this.message = '', this.data = const UnreadNotificationData(), this.errors = null});
  factory _UnreadNotificationResponse.fromJson(Map<String, dynamic> json) => _$UnreadNotificationResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  UnreadNotificationData data;
@override@JsonKey() final  dynamic errors;

/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreadNotificationResponseCopyWith<_UnreadNotificationResponse> get copyWith => __$UnreadNotificationResponseCopyWithImpl<_UnreadNotificationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnreadNotificationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnreadNotificationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'UnreadNotificationResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$UnreadNotificationResponseCopyWith<$Res> implements $UnreadNotificationResponseCopyWith<$Res> {
  factory _$UnreadNotificationResponseCopyWith(_UnreadNotificationResponse value, $Res Function(_UnreadNotificationResponse) _then) = __$UnreadNotificationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, UnreadNotificationData data, dynamic errors
});


@override $UnreadNotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class __$UnreadNotificationResponseCopyWithImpl<$Res>
    implements _$UnreadNotificationResponseCopyWith<$Res> {
  __$UnreadNotificationResponseCopyWithImpl(this._self, this._then);

  final _UnreadNotificationResponse _self;
  final $Res Function(_UnreadNotificationResponse) _then;

/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_UnreadNotificationResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UnreadNotificationData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of UnreadNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnreadNotificationDataCopyWith<$Res> get data {
  
  return $UnreadNotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UnreadNotificationData {

 int get unreadCount;
/// Create a copy of UnreadNotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadNotificationDataCopyWith<UnreadNotificationData> get copyWith => _$UnreadNotificationDataCopyWithImpl<UnreadNotificationData>(this as UnreadNotificationData, _$identity);

  /// Serializes this UnreadNotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadNotificationData&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unreadCount);

@override
String toString() {
  return 'UnreadNotificationData(unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $UnreadNotificationDataCopyWith<$Res>  {
  factory $UnreadNotificationDataCopyWith(UnreadNotificationData value, $Res Function(UnreadNotificationData) _then) = _$UnreadNotificationDataCopyWithImpl;
@useResult
$Res call({
 int unreadCount
});




}
/// @nodoc
class _$UnreadNotificationDataCopyWithImpl<$Res>
    implements $UnreadNotificationDataCopyWith<$Res> {
  _$UnreadNotificationDataCopyWithImpl(this._self, this._then);

  final UnreadNotificationData _self;
  final $Res Function(UnreadNotificationData) _then;

/// Create a copy of UnreadNotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unreadCount = null,}) {
  return _then(_self.copyWith(
unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UnreadNotificationData].
extension UnreadNotificationDataPatterns on UnreadNotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnreadNotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnreadNotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnreadNotificationData value)  $default,){
final _that = this;
switch (_that) {
case _UnreadNotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnreadNotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _UnreadNotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnreadNotificationData() when $default != null:
return $default(_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _UnreadNotificationData():
return $default(_that.unreadCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _UnreadNotificationData() when $default != null:
return $default(_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnreadNotificationData implements UnreadNotificationData {
  const _UnreadNotificationData({this.unreadCount = 0});
  factory _UnreadNotificationData.fromJson(Map<String, dynamic> json) => _$UnreadNotificationDataFromJson(json);

@override@JsonKey() final  int unreadCount;

/// Create a copy of UnreadNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreadNotificationDataCopyWith<_UnreadNotificationData> get copyWith => __$UnreadNotificationDataCopyWithImpl<_UnreadNotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnreadNotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnreadNotificationData&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unreadCount);

@override
String toString() {
  return 'UnreadNotificationData(unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$UnreadNotificationDataCopyWith<$Res> implements $UnreadNotificationDataCopyWith<$Res> {
  factory _$UnreadNotificationDataCopyWith(_UnreadNotificationData value, $Res Function(_UnreadNotificationData) _then) = __$UnreadNotificationDataCopyWithImpl;
@override @useResult
$Res call({
 int unreadCount
});




}
/// @nodoc
class __$UnreadNotificationDataCopyWithImpl<$Res>
    implements _$UnreadNotificationDataCopyWith<$Res> {
  __$UnreadNotificationDataCopyWithImpl(this._self, this._then);

  final _UnreadNotificationData _self;
  final $Res Function(_UnreadNotificationData) _then;

/// Create a copy of UnreadNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unreadCount = null,}) {
  return _then(_UnreadNotificationData(
unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
