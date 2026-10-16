// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DynamicPageState {

 String get slug; bool get isLoading; DynamicPageModel? get page; String get error;
/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicPageStateCopyWith<DynamicPageState> get copyWith => _$DynamicPageStateCopyWithImpl<DynamicPageState>(this as DynamicPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicPageState&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.page, page) || other.page == page)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,slug,isLoading,page,error);

@override
String toString() {
  return 'DynamicPageState(slug: $slug, isLoading: $isLoading, page: $page, error: $error)';
}


}

/// @nodoc
abstract mixin class $DynamicPageStateCopyWith<$Res>  {
  factory $DynamicPageStateCopyWith(DynamicPageState value, $Res Function(DynamicPageState) _then) = _$DynamicPageStateCopyWithImpl;
@useResult
$Res call({
 String slug, bool isLoading, DynamicPageModel? page, String error
});


$DynamicPageModelCopyWith<$Res>? get page;

}
/// @nodoc
class _$DynamicPageStateCopyWithImpl<$Res>
    implements $DynamicPageStateCopyWith<$Res> {
  _$DynamicPageStateCopyWithImpl(this._self, this._then);

  final DynamicPageState _self;
  final $Res Function(DynamicPageState) _then;

/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? isLoading = null,Object? page = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as DynamicPageModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicPageModelCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $DynamicPageModelCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicPageState].
extension DynamicPageStatePatterns on DynamicPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicPageState value)  $default,){
final _that = this;
switch (_that) {
case _DynamicPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicPageState value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  bool isLoading,  DynamicPageModel? page,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicPageState() when $default != null:
return $default(_that.slug,_that.isLoading,_that.page,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  bool isLoading,  DynamicPageModel? page,  String error)  $default,) {final _that = this;
switch (_that) {
case _DynamicPageState():
return $default(_that.slug,_that.isLoading,_that.page,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  bool isLoading,  DynamicPageModel? page,  String error)?  $default,) {final _that = this;
switch (_that) {
case _DynamicPageState() when $default != null:
return $default(_that.slug,_that.isLoading,_that.page,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _DynamicPageState implements DynamicPageState {
  const _DynamicPageState({this.slug = '', this.isLoading = false, this.page, this.error = ''});
  

@override@JsonKey() final  String slug;
@override@JsonKey() final  bool isLoading;
@override final  DynamicPageModel? page;
@override@JsonKey() final  String error;

/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicPageStateCopyWith<_DynamicPageState> get copyWith => __$DynamicPageStateCopyWithImpl<_DynamicPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicPageState&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.page, page) || other.page == page)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,slug,isLoading,page,error);

@override
String toString() {
  return 'DynamicPageState(slug: $slug, isLoading: $isLoading, page: $page, error: $error)';
}


}

/// @nodoc
abstract mixin class _$DynamicPageStateCopyWith<$Res> implements $DynamicPageStateCopyWith<$Res> {
  factory _$DynamicPageStateCopyWith(_DynamicPageState value, $Res Function(_DynamicPageState) _then) = __$DynamicPageStateCopyWithImpl;
@override @useResult
$Res call({
 String slug, bool isLoading, DynamicPageModel? page, String error
});


@override $DynamicPageModelCopyWith<$Res>? get page;

}
/// @nodoc
class __$DynamicPageStateCopyWithImpl<$Res>
    implements _$DynamicPageStateCopyWith<$Res> {
  __$DynamicPageStateCopyWithImpl(this._self, this._then);

  final _DynamicPageState _self;
  final $Res Function(_DynamicPageState) _then;

/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? isLoading = null,Object? page = freezed,Object? error = null,}) {
  return _then(_DynamicPageState(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as DynamicPageModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DynamicPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicPageModelCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $DynamicPageModelCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}

// dart format on
