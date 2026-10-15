// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_god_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularGodApiResponse {

 bool get success; String get message; PopularGodData get data; dynamic get errors;
/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularGodApiResponseCopyWith<PopularGodApiResponse> get copyWith => _$PopularGodApiResponseCopyWithImpl<PopularGodApiResponse>(this as PopularGodApiResponse, _$identity);

  /// Serializes this PopularGodApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularGodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PopularGodApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $PopularGodApiResponseCopyWith<$Res>  {
  factory $PopularGodApiResponseCopyWith(PopularGodApiResponse value, $Res Function(PopularGodApiResponse) _then) = _$PopularGodApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, PopularGodData data, dynamic errors
});


$PopularGodDataCopyWith<$Res> get data;

}
/// @nodoc
class _$PopularGodApiResponseCopyWithImpl<$Res>
    implements $PopularGodApiResponseCopyWith<$Res> {
  _$PopularGodApiResponseCopyWithImpl(this._self, this._then);

  final PopularGodApiResponse _self;
  final $Res Function(PopularGodApiResponse) _then;

/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PopularGodData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularGodDataCopyWith<$Res> get data {
  
  return $PopularGodDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PopularGodApiResponse].
extension PopularGodApiResponsePatterns on PopularGodApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularGodApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularGodApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _PopularGodApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularGodApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PopularGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  PopularGodData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  PopularGodData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _PopularGodApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  PopularGodData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _PopularGodApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularGodApiResponse implements PopularGodApiResponse {
  const _PopularGodApiResponse({this.success = false, this.message = '', this.data = const PopularGodData(), this.errors = null});
  factory _PopularGodApiResponse.fromJson(Map<String, dynamic> json) => _$PopularGodApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  PopularGodData data;
@override@JsonKey() final  dynamic errors;

/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularGodApiResponseCopyWith<_PopularGodApiResponse> get copyWith => __$PopularGodApiResponseCopyWithImpl<_PopularGodApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularGodApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularGodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PopularGodApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$PopularGodApiResponseCopyWith<$Res> implements $PopularGodApiResponseCopyWith<$Res> {
  factory _$PopularGodApiResponseCopyWith(_PopularGodApiResponse value, $Res Function(_PopularGodApiResponse) _then) = __$PopularGodApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, PopularGodData data, dynamic errors
});


@override $PopularGodDataCopyWith<$Res> get data;

}
/// @nodoc
class __$PopularGodApiResponseCopyWithImpl<$Res>
    implements _$PopularGodApiResponseCopyWith<$Res> {
  __$PopularGodApiResponseCopyWithImpl(this._self, this._then);

  final _PopularGodApiResponse _self;
  final $Res Function(_PopularGodApiResponse) _then;

/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_PopularGodApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PopularGodData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PopularGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularGodDataCopyWith<$Res> get data {
  
  return $PopularGodDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PopularGodData {

 List<PopularGodItem> get items; PopularGodPagination get pagination;
/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularGodDataCopyWith<PopularGodData> get copyWith => _$PopularGodDataCopyWithImpl<PopularGodData>(this as PopularGodData, _$identity);

  /// Serializes this PopularGodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularGodData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'PopularGodData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PopularGodDataCopyWith<$Res>  {
  factory $PopularGodDataCopyWith(PopularGodData value, $Res Function(PopularGodData) _then) = _$PopularGodDataCopyWithImpl;
@useResult
$Res call({
 List<PopularGodItem> items, PopularGodPagination pagination
});


$PopularGodPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$PopularGodDataCopyWithImpl<$Res>
    implements $PopularGodDataCopyWith<$Res> {
  _$PopularGodDataCopyWithImpl(this._self, this._then);

  final PopularGodData _self;
  final $Res Function(PopularGodData) _then;

/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PopularGodItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PopularGodPagination,
  ));
}
/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularGodPaginationCopyWith<$Res> get pagination {
  
  return $PopularGodPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [PopularGodData].
extension PopularGodDataPatterns on PopularGodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularGodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularGodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularGodData value)  $default,){
final _that = this;
switch (_that) {
case _PopularGodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularGodData value)?  $default,){
final _that = this;
switch (_that) {
case _PopularGodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PopularGodItem> items,  PopularGodPagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularGodData() when $default != null:
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PopularGodItem> items,  PopularGodPagination pagination)  $default,) {final _that = this;
switch (_that) {
case _PopularGodData():
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PopularGodItem> items,  PopularGodPagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _PopularGodData() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularGodData implements PopularGodData {
  const _PopularGodData({final  List<PopularGodItem> items = const <PopularGodItem>[], this.pagination = const PopularGodPagination()}): _items = items;
  factory _PopularGodData.fromJson(Map<String, dynamic> json) => _$PopularGodDataFromJson(json);

 final  List<PopularGodItem> _items;
@override@JsonKey() List<PopularGodItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  PopularGodPagination pagination;

/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularGodDataCopyWith<_PopularGodData> get copyWith => __$PopularGodDataCopyWithImpl<_PopularGodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularGodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularGodData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'PopularGodData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PopularGodDataCopyWith<$Res> implements $PopularGodDataCopyWith<$Res> {
  factory _$PopularGodDataCopyWith(_PopularGodData value, $Res Function(_PopularGodData) _then) = __$PopularGodDataCopyWithImpl;
@override @useResult
$Res call({
 List<PopularGodItem> items, PopularGodPagination pagination
});


@override $PopularGodPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$PopularGodDataCopyWithImpl<$Res>
    implements _$PopularGodDataCopyWith<$Res> {
  __$PopularGodDataCopyWithImpl(this._self, this._then);

  final _PopularGodData _self;
  final $Res Function(_PopularGodData) _then;

/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_PopularGodData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PopularGodItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PopularGodPagination,
  ));
}

/// Create a copy of PopularGodData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularGodPaginationCopyWith<$Res> get pagination {
  
  return $PopularGodPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$PopularGodItem {

 String get id; String get title; String get slug; String get category; String get location; String get image; bool get isWishlist;
/// Create a copy of PopularGodItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularGodItemCopyWith<PopularGodItem> get copyWith => _$PopularGodItemCopyWithImpl<PopularGodItem>(this as PopularGodItem, _$identity);

  /// Serializes this PopularGodItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularGodItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'PopularGodItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $PopularGodItemCopyWith<$Res>  {
  factory $PopularGodItemCopyWith(PopularGodItem value, $Res Function(PopularGodItem) _then) = _$PopularGodItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String slug, String category, String location, String image, bool isWishlist
});




}
/// @nodoc
class _$PopularGodItemCopyWithImpl<$Res>
    implements $PopularGodItemCopyWith<$Res> {
  _$PopularGodItemCopyWithImpl(this._self, this._then);

  final PopularGodItem _self;
  final $Res Function(PopularGodItem) _then;

/// Create a copy of PopularGodItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? category = null,Object? location = null,Object? image = null,Object? isWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularGodItem].
extension PopularGodItemPatterns on PopularGodItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularGodItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularGodItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularGodItem value)  $default,){
final _that = this;
switch (_that) {
case _PopularGodItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularGodItem value)?  $default,){
final _that = this;
switch (_that) {
case _PopularGodItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String category,  String location,  String image,  bool isWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularGodItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String category,  String location,  String image,  bool isWishlist)  $default,) {final _that = this;
switch (_that) {
case _PopularGodItem():
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String slug,  String category,  String location,  String image,  bool isWishlist)?  $default,) {final _that = this;
switch (_that) {
case _PopularGodItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularGodItem implements PopularGodItem {
  const _PopularGodItem({this.id = '', this.title = '', this.slug = '', this.category = '', this.location = '', this.image = '', this.isWishlist = false});
  factory _PopularGodItem.fromJson(Map<String, dynamic> json) => _$PopularGodItemFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String category;
@override@JsonKey() final  String location;
@override@JsonKey() final  String image;
@override@JsonKey() final  bool isWishlist;

/// Create a copy of PopularGodItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularGodItemCopyWith<_PopularGodItem> get copyWith => __$PopularGodItemCopyWithImpl<_PopularGodItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularGodItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularGodItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'PopularGodItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$PopularGodItemCopyWith<$Res> implements $PopularGodItemCopyWith<$Res> {
  factory _$PopularGodItemCopyWith(_PopularGodItem value, $Res Function(_PopularGodItem) _then) = __$PopularGodItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String slug, String category, String location, String image, bool isWishlist
});




}
/// @nodoc
class __$PopularGodItemCopyWithImpl<$Res>
    implements _$PopularGodItemCopyWith<$Res> {
  __$PopularGodItemCopyWithImpl(this._self, this._then);

  final _PopularGodItem _self;
  final $Res Function(_PopularGodItem) _then;

/// Create a copy of PopularGodItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? category = null,Object? location = null,Object? image = null,Object? isWishlist = null,}) {
  return _then(_PopularGodItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PopularGodPagination {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of PopularGodPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularGodPaginationCopyWith<PopularGodPagination> get copyWith => _$PopularGodPaginationCopyWithImpl<PopularGodPagination>(this as PopularGodPagination, _$identity);

  /// Serializes this PopularGodPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularGodPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PopularGodPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PopularGodPaginationCopyWith<$Res>  {
  factory $PopularGodPaginationCopyWith(PopularGodPagination value, $Res Function(PopularGodPagination) _then) = _$PopularGodPaginationCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$PopularGodPaginationCopyWithImpl<$Res>
    implements $PopularGodPaginationCopyWith<$Res> {
  _$PopularGodPaginationCopyWithImpl(this._self, this._then);

  final PopularGodPagination _self;
  final $Res Function(PopularGodPagination) _then;

/// Create a copy of PopularGodPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularGodPagination].
extension PopularGodPaginationPatterns on PopularGodPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularGodPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularGodPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularGodPagination value)  $default,){
final _that = this;
switch (_that) {
case _PopularGodPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularGodPagination value)?  $default,){
final _that = this;
switch (_that) {
case _PopularGodPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularGodPagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PopularGodPagination():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PopularGodPagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularGodPagination implements PopularGodPagination {
  const _PopularGodPagination({this.total = 0, this.page = 1, this.limit = 10, this.totalPages = 0});
  factory _PopularGodPagination.fromJson(Map<String, dynamic> json) => _$PopularGodPaginationFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int totalPages;

/// Create a copy of PopularGodPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularGodPaginationCopyWith<_PopularGodPagination> get copyWith => __$PopularGodPaginationCopyWithImpl<_PopularGodPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularGodPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularGodPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PopularGodPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PopularGodPaginationCopyWith<$Res> implements $PopularGodPaginationCopyWith<$Res> {
  factory _$PopularGodPaginationCopyWith(_PopularGodPagination value, $Res Function(_PopularGodPagination) _then) = __$PopularGodPaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$PopularGodPaginationCopyWithImpl<$Res>
    implements _$PopularGodPaginationCopyWith<$Res> {
  __$PopularGodPaginationCopyWithImpl(this._self, this._then);

  final _PopularGodPagination _self;
  final $Res Function(_PopularGodPagination) _then;

/// Create a copy of PopularGodPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_PopularGodPagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
