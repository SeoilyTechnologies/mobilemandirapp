// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {

 int get index; DateTime? get lastBackPressTime; bool get isError; String get errorMessage; String get bookedSessionCount; String get error; bool get isLoading; bool get isShowMusicAction; bool get isLoadingreport; int get drawerIndex; UnreadNotificationResponse get unreadNotification; ForceUpdateData get data; LoginResponse get userdata;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&(identical(other.index, index) || other.index == index)&&(identical(other.lastBackPressTime, lastBackPressTime) || other.lastBackPressTime == lastBackPressTime)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.bookedSessionCount, bookedSessionCount) || other.bookedSessionCount == bookedSessionCount)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isShowMusicAction, isShowMusicAction) || other.isShowMusicAction == isShowMusicAction)&&(identical(other.isLoadingreport, isLoadingreport) || other.isLoadingreport == isLoadingreport)&&(identical(other.drawerIndex, drawerIndex) || other.drawerIndex == drawerIndex)&&(identical(other.unreadNotification, unreadNotification) || other.unreadNotification == unreadNotification)&&(identical(other.data, data) || other.data == data)&&(identical(other.userdata, userdata) || other.userdata == userdata));
}


@override
int get hashCode => Object.hash(runtimeType,index,lastBackPressTime,isError,errorMessage,bookedSessionCount,error,isLoading,isShowMusicAction,isLoadingreport,drawerIndex,unreadNotification,data,userdata);

@override
String toString() {
  return 'AppState(index: $index, lastBackPressTime: $lastBackPressTime, isError: $isError, errorMessage: $errorMessage, bookedSessionCount: $bookedSessionCount, error: $error, isLoading: $isLoading, isShowMusicAction: $isShowMusicAction, isLoadingreport: $isLoadingreport, drawerIndex: $drawerIndex, unreadNotification: $unreadNotification, data: $data, userdata: $userdata)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 int index, DateTime? lastBackPressTime, bool isError, String errorMessage, String bookedSessionCount, String error, bool isLoading, bool isShowMusicAction, bool isLoadingreport, int drawerIndex, UnreadNotificationResponse unreadNotification, ForceUpdateData data, LoginResponse userdata
});


$UnreadNotificationResponseCopyWith<$Res> get unreadNotification;$ForceUpdateDataCopyWith<$Res> get data;$LoginResponseCopyWith<$Res> get userdata;

}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? lastBackPressTime = freezed,Object? isError = null,Object? errorMessage = null,Object? bookedSessionCount = null,Object? error = null,Object? isLoading = null,Object? isShowMusicAction = null,Object? isLoadingreport = null,Object? drawerIndex = null,Object? unreadNotification = null,Object? data = null,Object? userdata = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lastBackPressTime: freezed == lastBackPressTime ? _self.lastBackPressTime : lastBackPressTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,bookedSessionCount: null == bookedSessionCount ? _self.bookedSessionCount : bookedSessionCount // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isShowMusicAction: null == isShowMusicAction ? _self.isShowMusicAction : isShowMusicAction // ignore: cast_nullable_to_non_nullable
as bool,isLoadingreport: null == isLoadingreport ? _self.isLoadingreport : isLoadingreport // ignore: cast_nullable_to_non_nullable
as bool,drawerIndex: null == drawerIndex ? _self.drawerIndex : drawerIndex // ignore: cast_nullable_to_non_nullable
as int,unreadNotification: null == unreadNotification ? _self.unreadNotification : unreadNotification // ignore: cast_nullable_to_non_nullable
as UnreadNotificationResponse,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ForceUpdateData,userdata: null == userdata ? _self.userdata : userdata // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnreadNotificationResponseCopyWith<$Res> get unreadNotification {
  
  return $UnreadNotificationResponseCopyWith<$Res>(_self.unreadNotification, (value) {
    return _then(_self.copyWith(unreadNotification: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForceUpdateDataCopyWith<$Res> get data {
  
  return $ForceUpdateDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get userdata {
  
  return $LoginResponseCopyWith<$Res>(_self.userdata, (value) {
    return _then(_self.copyWith(userdata: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppState value)  $default,){
final _that = this;
switch (_that) {
case _AppState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppState value)?  $default,){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  DateTime? lastBackPressTime,  bool isError,  String errorMessage,  String bookedSessionCount,  String error,  bool isLoading,  bool isShowMusicAction,  bool isLoadingreport,  int drawerIndex,  UnreadNotificationResponse unreadNotification,  ForceUpdateData data,  LoginResponse userdata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.index,_that.lastBackPressTime,_that.isError,_that.errorMessage,_that.bookedSessionCount,_that.error,_that.isLoading,_that.isShowMusicAction,_that.isLoadingreport,_that.drawerIndex,_that.unreadNotification,_that.data,_that.userdata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  DateTime? lastBackPressTime,  bool isError,  String errorMessage,  String bookedSessionCount,  String error,  bool isLoading,  bool isShowMusicAction,  bool isLoadingreport,  int drawerIndex,  UnreadNotificationResponse unreadNotification,  ForceUpdateData data,  LoginResponse userdata)  $default,) {final _that = this;
switch (_that) {
case _AppState():
return $default(_that.index,_that.lastBackPressTime,_that.isError,_that.errorMessage,_that.bookedSessionCount,_that.error,_that.isLoading,_that.isShowMusicAction,_that.isLoadingreport,_that.drawerIndex,_that.unreadNotification,_that.data,_that.userdata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  DateTime? lastBackPressTime,  bool isError,  String errorMessage,  String bookedSessionCount,  String error,  bool isLoading,  bool isShowMusicAction,  bool isLoadingreport,  int drawerIndex,  UnreadNotificationResponse unreadNotification,  ForceUpdateData data,  LoginResponse userdata)?  $default,) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.index,_that.lastBackPressTime,_that.isError,_that.errorMessage,_that.bookedSessionCount,_that.error,_that.isLoading,_that.isShowMusicAction,_that.isLoadingreport,_that.drawerIndex,_that.unreadNotification,_that.data,_that.userdata);case _:
  return null;

}
}

}

/// @nodoc


class _AppState implements AppState {
  const _AppState({this.index = 0, this.lastBackPressTime, this.isError = false, this.errorMessage = '', this.bookedSessionCount = '0', this.error = '', this.isLoading = false, this.isShowMusicAction = false, this.isLoadingreport = false, this.drawerIndex = 0, this.unreadNotification = const UnreadNotificationResponse(), this.data = const ForceUpdateData(), this.userdata = const LoginResponse()});
  

@override@JsonKey() final  int index;
@override final  DateTime? lastBackPressTime;
@override@JsonKey() final  bool isError;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String bookedSessionCount;
@override@JsonKey() final  String error;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isShowMusicAction;
@override@JsonKey() final  bool isLoadingreport;
@override@JsonKey() final  int drawerIndex;
@override@JsonKey() final  UnreadNotificationResponse unreadNotification;
@override@JsonKey() final  ForceUpdateData data;
@override@JsonKey() final  LoginResponse userdata;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&(identical(other.index, index) || other.index == index)&&(identical(other.lastBackPressTime, lastBackPressTime) || other.lastBackPressTime == lastBackPressTime)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.bookedSessionCount, bookedSessionCount) || other.bookedSessionCount == bookedSessionCount)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isShowMusicAction, isShowMusicAction) || other.isShowMusicAction == isShowMusicAction)&&(identical(other.isLoadingreport, isLoadingreport) || other.isLoadingreport == isLoadingreport)&&(identical(other.drawerIndex, drawerIndex) || other.drawerIndex == drawerIndex)&&(identical(other.unreadNotification, unreadNotification) || other.unreadNotification == unreadNotification)&&(identical(other.data, data) || other.data == data)&&(identical(other.userdata, userdata) || other.userdata == userdata));
}


@override
int get hashCode => Object.hash(runtimeType,index,lastBackPressTime,isError,errorMessage,bookedSessionCount,error,isLoading,isShowMusicAction,isLoadingreport,drawerIndex,unreadNotification,data,userdata);

@override
String toString() {
  return 'AppState(index: $index, lastBackPressTime: $lastBackPressTime, isError: $isError, errorMessage: $errorMessage, bookedSessionCount: $bookedSessionCount, error: $error, isLoading: $isLoading, isShowMusicAction: $isShowMusicAction, isLoadingreport: $isLoadingreport, drawerIndex: $drawerIndex, unreadNotification: $unreadNotification, data: $data, userdata: $userdata)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 int index, DateTime? lastBackPressTime, bool isError, String errorMessage, String bookedSessionCount, String error, bool isLoading, bool isShowMusicAction, bool isLoadingreport, int drawerIndex, UnreadNotificationResponse unreadNotification, ForceUpdateData data, LoginResponse userdata
});


@override $UnreadNotificationResponseCopyWith<$Res> get unreadNotification;@override $ForceUpdateDataCopyWith<$Res> get data;@override $LoginResponseCopyWith<$Res> get userdata;

}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? lastBackPressTime = freezed,Object? isError = null,Object? errorMessage = null,Object? bookedSessionCount = null,Object? error = null,Object? isLoading = null,Object? isShowMusicAction = null,Object? isLoadingreport = null,Object? drawerIndex = null,Object? unreadNotification = null,Object? data = null,Object? userdata = null,}) {
  return _then(_AppState(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lastBackPressTime: freezed == lastBackPressTime ? _self.lastBackPressTime : lastBackPressTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,bookedSessionCount: null == bookedSessionCount ? _self.bookedSessionCount : bookedSessionCount // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isShowMusicAction: null == isShowMusicAction ? _self.isShowMusicAction : isShowMusicAction // ignore: cast_nullable_to_non_nullable
as bool,isLoadingreport: null == isLoadingreport ? _self.isLoadingreport : isLoadingreport // ignore: cast_nullable_to_non_nullable
as bool,drawerIndex: null == drawerIndex ? _self.drawerIndex : drawerIndex // ignore: cast_nullable_to_non_nullable
as int,unreadNotification: null == unreadNotification ? _self.unreadNotification : unreadNotification // ignore: cast_nullable_to_non_nullable
as UnreadNotificationResponse,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ForceUpdateData,userdata: null == userdata ? _self.userdata : userdata // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnreadNotificationResponseCopyWith<$Res> get unreadNotification {
  
  return $UnreadNotificationResponseCopyWith<$Res>(_self.unreadNotification, (value) {
    return _then(_self.copyWith(unreadNotification: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForceUpdateDataCopyWith<$Res> get data {
  
  return $ForceUpdateDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get userdata {
  
  return $LoginResponseCopyWith<$Res>(_self.userdata, (value) {
    return _then(_self.copyWith(userdata: value));
  });
}
}

// dart format on
