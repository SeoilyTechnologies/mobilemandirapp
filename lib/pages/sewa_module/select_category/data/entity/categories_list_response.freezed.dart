// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoriesListResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') List<CategoryItem> get data;@JsonKey(name: 'errors') dynamic get errors;
/// Create a copy of CategoriesListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesListResponseCopyWith<CategoriesListResponse> get copyWith => _$CategoriesListResponseCopyWithImpl<CategoriesListResponse>(this as CategoriesListResponse, _$identity);

  /// Serializes this CategoriesListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'CategoriesListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $CategoriesListResponseCopyWith<$Res>  {
  factory $CategoriesListResponseCopyWith(CategoriesListResponse value, $Res Function(CategoriesListResponse) _then) = _$CategoriesListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') List<CategoryItem> data,@JsonKey(name: 'errors') dynamic errors
});




}
/// @nodoc
class _$CategoriesListResponseCopyWithImpl<$Res>
    implements $CategoriesListResponseCopyWith<$Res> {
  _$CategoriesListResponseCopyWithImpl(this._self, this._then);

  final CategoriesListResponse _self;
  final $Res Function(CategoriesListResponse) _then;

/// Create a copy of CategoriesListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryItem>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoriesListResponse].
extension CategoriesListResponsePatterns on CategoriesListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesListResponse value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<CategoryItem> data, @JsonKey(name: 'errors')  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<CategoryItem> data, @JsonKey(name: 'errors')  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _CategoriesListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<CategoryItem> data, @JsonKey(name: 'errors')  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoriesListResponse implements CategoriesListResponse {
  const _CategoriesListResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'message') this.message = '', @JsonKey(name: 'data') final  List<CategoryItem> data = const <CategoryItem>[], @JsonKey(name: 'errors') this.errors}): _data = data;
  factory _CategoriesListResponse.fromJson(Map<String, dynamic> json) => _$CategoriesListResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'message') final  String message;
 final  List<CategoryItem> _data;
@override@JsonKey(name: 'data') List<CategoryItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey(name: 'errors') final  dynamic errors;

/// Create a copy of CategoriesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesListResponseCopyWith<_CategoriesListResponse> get copyWith => __$CategoriesListResponseCopyWithImpl<_CategoriesListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'CategoriesListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$CategoriesListResponseCopyWith<$Res> implements $CategoriesListResponseCopyWith<$Res> {
  factory _$CategoriesListResponseCopyWith(_CategoriesListResponse value, $Res Function(_CategoriesListResponse) _then) = __$CategoriesListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') List<CategoryItem> data,@JsonKey(name: 'errors') dynamic errors
});




}
/// @nodoc
class __$CategoriesListResponseCopyWithImpl<$Res>
    implements _$CategoriesListResponseCopyWith<$Res> {
  __$CategoriesListResponseCopyWithImpl(this._self, this._then);

  final _CategoriesListResponse _self;
  final $Res Function(_CategoriesListResponse) _then;

/// Create a copy of CategoriesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_CategoriesListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryItem>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$CategoryItem {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'description') String get description;@JsonKey(name: 'backgroundColor') String get backgroundColor;@JsonKey(name: 'backgroundColorEnd') String get backgroundColorEnd;@JsonKey(name: 'icon') String get icon;@JsonKey(name: 'isActive') bool get isActive;@JsonKey(name: 'order') int get order;
/// Create a copy of CategoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryItemCopyWith<CategoryItem> get copyWith => _$CategoryItemCopyWithImpl<CategoryItem>(this as CategoryItem, _$identity);

  /// Serializes this CategoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,backgroundColor,backgroundColorEnd,icon,isActive,order);

@override
String toString() {
  return 'CategoryItem(id: $id, name: $name, description: $description, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, icon: $icon, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class $CategoryItemCopyWith<$Res>  {
  factory $CategoryItemCopyWith(CategoryItem value, $Res Function(CategoryItem) _then) = _$CategoryItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String description,@JsonKey(name: 'backgroundColor') String backgroundColor,@JsonKey(name: 'backgroundColorEnd') String backgroundColorEnd,@JsonKey(name: 'icon') String icon,@JsonKey(name: 'isActive') bool isActive,@JsonKey(name: 'order') int order
});




}
/// @nodoc
class _$CategoryItemCopyWithImpl<$Res>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._self, this._then);

  final CategoryItem _self;
  final $Res Function(CategoryItem) _then;

/// Create a copy of CategoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? icon = null,Object? isActive = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryItem].
extension CategoryItemPatterns on CategoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryItem value)  $default,){
final _that = this;
switch (_that) {
case _CategoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'icon')  String icon, @JsonKey(name: 'isActive')  bool isActive, @JsonKey(name: 'order')  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'icon')  String icon, @JsonKey(name: 'isActive')  bool isActive, @JsonKey(name: 'order')  int order)  $default,) {final _that = this;
switch (_that) {
case _CategoryItem():
return $default(_that.id,_that.name,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'backgroundColor')  String backgroundColor, @JsonKey(name: 'backgroundColorEnd')  String backgroundColorEnd, @JsonKey(name: 'icon')  String icon, @JsonKey(name: 'isActive')  bool isActive, @JsonKey(name: 'order')  int order)?  $default,) {final _that = this;
switch (_that) {
case _CategoryItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.isActive,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryItem implements CategoryItem {
  const _CategoryItem({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'backgroundColor') this.backgroundColor = '', @JsonKey(name: 'backgroundColorEnd') this.backgroundColorEnd = '', @JsonKey(name: 'icon') this.icon = '', @JsonKey(name: 'isActive') this.isActive = false, @JsonKey(name: 'order') this.order = 0});
  factory _CategoryItem.fromJson(Map<String, dynamic> json) => _$CategoryItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'backgroundColor') final  String backgroundColor;
@override@JsonKey(name: 'backgroundColorEnd') final  String backgroundColorEnd;
@override@JsonKey(name: 'icon') final  String icon;
@override@JsonKey(name: 'isActive') final  bool isActive;
@override@JsonKey(name: 'order') final  int order;

/// Create a copy of CategoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryItemCopyWith<_CategoryItem> get copyWith => __$CategoryItemCopyWithImpl<_CategoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,backgroundColor,backgroundColorEnd,icon,isActive,order);

@override
String toString() {
  return 'CategoryItem(id: $id, name: $name, description: $description, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, icon: $icon, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CategoryItemCopyWith<$Res> implements $CategoryItemCopyWith<$Res> {
  factory _$CategoryItemCopyWith(_CategoryItem value, $Res Function(_CategoryItem) _then) = __$CategoryItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String description,@JsonKey(name: 'backgroundColor') String backgroundColor,@JsonKey(name: 'backgroundColorEnd') String backgroundColorEnd,@JsonKey(name: 'icon') String icon,@JsonKey(name: 'isActive') bool isActive,@JsonKey(name: 'order') int order
});




}
/// @nodoc
class __$CategoryItemCopyWithImpl<$Res>
    implements _$CategoryItemCopyWith<$Res> {
  __$CategoryItemCopyWithImpl(this._self, this._then);

  final _CategoryItem _self;
  final $Res Function(_CategoryItem) _then;

/// Create a copy of CategoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? icon = null,Object? isActive = null,Object? order = null,}) {
  return _then(_CategoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
