// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DynamicPageEvent {

 String get slug;
/// Create a copy of DynamicPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicPageEventCopyWith<DynamicPageEvent> get copyWith => _$DynamicPageEventCopyWithImpl<DynamicPageEvent>(this as DynamicPageEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicPageEvent&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,slug);

@override
String toString() {
  return 'DynamicPageEvent(slug: $slug)';
}


}

/// @nodoc
abstract mixin class $DynamicPageEventCopyWith<$Res>  {
  factory $DynamicPageEventCopyWith(DynamicPageEvent value, $Res Function(DynamicPageEvent) _then) = _$DynamicPageEventCopyWithImpl;
@useResult
$Res call({
 String slug
});




}
/// @nodoc
class _$DynamicPageEventCopyWithImpl<$Res>
    implements $DynamicPageEventCopyWith<$Res> {
  _$DynamicPageEventCopyWithImpl(this._self, this._then);

  final DynamicPageEvent _self;
  final $Res Function(DynamicPageEvent) _then;

/// Create a copy of DynamicPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DynamicPageEvent].
extension DynamicPageEventPatterns on DynamicPageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadDynamicPage value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadDynamicPage() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadDynamicPage value)  load,}){
final _that = this;
switch (_that) {
case LoadDynamicPage():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadDynamicPage value)?  load,}){
final _that = this;
switch (_that) {
case LoadDynamicPage() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String slug)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadDynamicPage() when load != null:
return load(_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String slug)  load,}) {final _that = this;
switch (_that) {
case LoadDynamicPage():
return load(_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String slug)?  load,}) {final _that = this;
switch (_that) {
case LoadDynamicPage() when load != null:
return load(_that.slug);case _:
  return null;

}
}

}

/// @nodoc


class LoadDynamicPage implements DynamicPageEvent {
  const LoadDynamicPage(this.slug);
  

@override final  String slug;

/// Create a copy of DynamicPageEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadDynamicPageCopyWith<LoadDynamicPage> get copyWith => _$LoadDynamicPageCopyWithImpl<LoadDynamicPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDynamicPage&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,slug);

@override
String toString() {
  return 'DynamicPageEvent.load(slug: $slug)';
}


}

/// @nodoc
abstract mixin class $LoadDynamicPageCopyWith<$Res> implements $DynamicPageEventCopyWith<$Res> {
  factory $LoadDynamicPageCopyWith(LoadDynamicPage value, $Res Function(LoadDynamicPage) _then) = _$LoadDynamicPageCopyWithImpl;
@override @useResult
$Res call({
 String slug
});




}
/// @nodoc
class _$LoadDynamicPageCopyWithImpl<$Res>
    implements $LoadDynamicPageCopyWith<$Res> {
  _$LoadDynamicPageCopyWithImpl(this._self, this._then);

  final LoadDynamicPage _self;
  final $Res Function(LoadDynamicPage) _then;

/// Create a copy of DynamicPageEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,}) {
  return _then(LoadDynamicPage(
null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
