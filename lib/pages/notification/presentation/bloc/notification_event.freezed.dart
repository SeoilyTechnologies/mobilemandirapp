// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchNotifications value)?  fetch,TResult Function( FetchMoreNotifications value)?  fetchMore,TResult Function( MarkAsRead value)?  markAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that);case FetchMoreNotifications() when fetchMore != null:
return fetchMore(_that);case MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchNotifications value)  fetch,required TResult Function( FetchMoreNotifications value)  fetchMore,required TResult Function( MarkAsRead value)  markAsRead,}){
final _that = this;
switch (_that) {
case FetchNotifications():
return fetch(_that);case FetchMoreNotifications():
return fetchMore(_that);case MarkAsRead():
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchNotifications value)?  fetch,TResult? Function( FetchMoreNotifications value)?  fetchMore,TResult? Function( MarkAsRead value)?  markAsRead,}){
final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that);case FetchMoreNotifications() when fetchMore != null:
return fetchMore(_that);case MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isRefresh)?  fetch,TResult Function()?  fetchMore,TResult Function( String notificationId,  int index)?  markAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that.isRefresh);case FetchMoreNotifications() when fetchMore != null:
return fetchMore();case MarkAsRead() when markAsRead != null:
return markAsRead(_that.notificationId,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isRefresh)  fetch,required TResult Function()  fetchMore,required TResult Function( String notificationId,  int index)  markAsRead,}) {final _that = this;
switch (_that) {
case FetchNotifications():
return fetch(_that.isRefresh);case FetchMoreNotifications():
return fetchMore();case MarkAsRead():
return markAsRead(_that.notificationId,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isRefresh)?  fetch,TResult? Function()?  fetchMore,TResult? Function( String notificationId,  int index)?  markAsRead,}) {final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that.isRefresh);case FetchMoreNotifications() when fetchMore != null:
return fetchMore();case MarkAsRead() when markAsRead != null:
return markAsRead(_that.notificationId,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class FetchNotifications implements NotificationEvent {
  const FetchNotifications({required this.isRefresh});
  

 final  bool isRefresh;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchNotificationsCopyWith<FetchNotifications> get copyWith => _$FetchNotificationsCopyWithImpl<FetchNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchNotifications&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh);

@override
String toString() {
  return 'NotificationEvent.fetch(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class $FetchNotificationsCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $FetchNotificationsCopyWith(FetchNotifications value, $Res Function(FetchNotifications) _then) = _$FetchNotificationsCopyWithImpl;
@useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class _$FetchNotificationsCopyWithImpl<$Res>
    implements $FetchNotificationsCopyWith<$Res> {
  _$FetchNotificationsCopyWithImpl(this._self, this._then);

  final FetchNotifications _self;
  final $Res Function(FetchNotifications) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,}) {
  return _then(FetchNotifications(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FetchMoreNotifications implements NotificationEvent {
  const FetchMoreNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMoreNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.fetchMore()';
}


}




/// @nodoc


class MarkAsRead implements NotificationEvent {
  const MarkAsRead({required this.notificationId, required this.index});
  

 final  String notificationId;
 final  int index;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkAsReadCopyWith<MarkAsRead> get copyWith => _$MarkAsReadCopyWithImpl<MarkAsRead>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAsRead&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,index);

@override
String toString() {
  return 'NotificationEvent.markAsRead(notificationId: $notificationId, index: $index)';
}


}

/// @nodoc
abstract mixin class $MarkAsReadCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $MarkAsReadCopyWith(MarkAsRead value, $Res Function(MarkAsRead) _then) = _$MarkAsReadCopyWithImpl;
@useResult
$Res call({
 String notificationId, int index
});




}
/// @nodoc
class _$MarkAsReadCopyWithImpl<$Res>
    implements $MarkAsReadCopyWith<$Res> {
  _$MarkAsReadCopyWithImpl(this._self, this._then);

  final MarkAsRead _self;
  final $Res Function(MarkAsRead) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? index = null,}) {
  return _then(MarkAsRead(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
