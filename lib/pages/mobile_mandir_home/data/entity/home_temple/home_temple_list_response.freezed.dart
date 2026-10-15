// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_temple_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeTempleListResponse {

 bool get success; String get message; HomeTempleData get data; dynamic get errors;
/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTempleListResponseCopyWith<HomeTempleListResponse> get copyWith => _$HomeTempleListResponseCopyWithImpl<HomeTempleListResponse>(this as HomeTempleListResponse, _$identity);

  /// Serializes this HomeTempleListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTempleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HomeTempleListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $HomeTempleListResponseCopyWith<$Res>  {
  factory $HomeTempleListResponseCopyWith(HomeTempleListResponse value, $Res Function(HomeTempleListResponse) _then) = _$HomeTempleListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, HomeTempleData data, dynamic errors
});


$HomeTempleDataCopyWith<$Res> get data;

}
/// @nodoc
class _$HomeTempleListResponseCopyWithImpl<$Res>
    implements $HomeTempleListResponseCopyWith<$Res> {
  _$HomeTempleListResponseCopyWithImpl(this._self, this._then);

  final HomeTempleListResponse _self;
  final $Res Function(HomeTempleListResponse) _then;

/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeTempleData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTempleDataCopyWith<$Res> get data {
  
  return $HomeTempleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeTempleListResponse].
extension HomeTempleListResponsePatterns on HomeTempleListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTempleListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTempleListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTempleListResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomeTempleListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTempleListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTempleListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  HomeTempleData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTempleListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  HomeTempleData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _HomeTempleListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  HomeTempleData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _HomeTempleListResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTempleListResponse implements HomeTempleListResponse {
  const _HomeTempleListResponse({this.success = false, this.message = '', this.data = const HomeTempleData(), this.errors});
  factory _HomeTempleListResponse.fromJson(Map<String, dynamic> json) => _$HomeTempleListResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  HomeTempleData data;
@override final  dynamic errors;

/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTempleListResponseCopyWith<_HomeTempleListResponse> get copyWith => __$HomeTempleListResponseCopyWithImpl<_HomeTempleListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTempleListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTempleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HomeTempleListResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$HomeTempleListResponseCopyWith<$Res> implements $HomeTempleListResponseCopyWith<$Res> {
  factory _$HomeTempleListResponseCopyWith(_HomeTempleListResponse value, $Res Function(_HomeTempleListResponse) _then) = __$HomeTempleListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, HomeTempleData data, dynamic errors
});


@override $HomeTempleDataCopyWith<$Res> get data;

}
/// @nodoc
class __$HomeTempleListResponseCopyWithImpl<$Res>
    implements _$HomeTempleListResponseCopyWith<$Res> {
  __$HomeTempleListResponseCopyWithImpl(this._self, this._then);

  final _HomeTempleListResponse _self;
  final $Res Function(_HomeTempleListResponse) _then;

/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_HomeTempleListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeTempleData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of HomeTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTempleDataCopyWith<$Res> get data {
  
  return $HomeTempleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HomeTempleData {

 List<HomeTempleItem> get items; HomeTemplePagination get pagination;
/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTempleDataCopyWith<HomeTempleData> get copyWith => _$HomeTempleDataCopyWithImpl<HomeTempleData>(this as HomeTempleData, _$identity);

  /// Serializes this HomeTempleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTempleData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'HomeTempleData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $HomeTempleDataCopyWith<$Res>  {
  factory $HomeTempleDataCopyWith(HomeTempleData value, $Res Function(HomeTempleData) _then) = _$HomeTempleDataCopyWithImpl;
@useResult
$Res call({
 List<HomeTempleItem> items, HomeTemplePagination pagination
});


$HomeTemplePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$HomeTempleDataCopyWithImpl<$Res>
    implements $HomeTempleDataCopyWith<$Res> {
  _$HomeTempleDataCopyWithImpl(this._self, this._then);

  final HomeTempleData _self;
  final $Res Function(HomeTempleData) _then;

/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<HomeTempleItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HomeTemplePagination,
  ));
}
/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTemplePaginationCopyWith<$Res> get pagination {
  
  return $HomeTemplePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeTempleData].
extension HomeTempleDataPatterns on HomeTempleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTempleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTempleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTempleData value)  $default,){
final _that = this;
switch (_that) {
case _HomeTempleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTempleData value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTempleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HomeTempleItem> items,  HomeTemplePagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTempleData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HomeTempleItem> items,  HomeTemplePagination pagination)  $default,) {final _that = this;
switch (_that) {
case _HomeTempleData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HomeTempleItem> items,  HomeTemplePagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _HomeTempleData() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTempleData implements HomeTempleData {
  const _HomeTempleData({final  List<HomeTempleItem> items = const [], this.pagination = const HomeTemplePagination()}): _items = items;
  factory _HomeTempleData.fromJson(Map<String, dynamic> json) => _$HomeTempleDataFromJson(json);

 final  List<HomeTempleItem> _items;
@override@JsonKey() List<HomeTempleItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  HomeTemplePagination pagination;

/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTempleDataCopyWith<_HomeTempleData> get copyWith => __$HomeTempleDataCopyWithImpl<_HomeTempleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTempleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTempleData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'HomeTempleData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$HomeTempleDataCopyWith<$Res> implements $HomeTempleDataCopyWith<$Res> {
  factory _$HomeTempleDataCopyWith(_HomeTempleData value, $Res Function(_HomeTempleData) _then) = __$HomeTempleDataCopyWithImpl;
@override @useResult
$Res call({
 List<HomeTempleItem> items, HomeTemplePagination pagination
});


@override $HomeTemplePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$HomeTempleDataCopyWithImpl<$Res>
    implements _$HomeTempleDataCopyWith<$Res> {
  __$HomeTempleDataCopyWithImpl(this._self, this._then);

  final _HomeTempleData _self;
  final $Res Function(_HomeTempleData) _then;

/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_HomeTempleData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HomeTempleItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HomeTemplePagination,
  ));
}

/// Create a copy of HomeTempleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTemplePaginationCopyWith<$Res> get pagination {
  
  return $HomeTemplePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$HomeTempleItem {

 String get id; String get title; String get slug; String get location; double? get lat; double? get lng; String get image;@JsonKey(name: 'isWishlist') bool get isWishlist;
/// Create a copy of HomeTempleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTempleItemCopyWith<HomeTempleItem> get copyWith => _$HomeTempleItemCopyWithImpl<HomeTempleItem>(this as HomeTempleItem, _$identity);

  /// Serializes this HomeTempleItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTempleItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,location,lat,lng,image,isWishlist);

@override
String toString() {
  return 'HomeTempleItem(id: $id, title: $title, slug: $slug, location: $location, lat: $lat, lng: $lng, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $HomeTempleItemCopyWith<$Res>  {
  factory $HomeTempleItemCopyWith(HomeTempleItem value, $Res Function(HomeTempleItem) _then) = _$HomeTempleItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String slug, String location, double? lat, double? lng, String image,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class _$HomeTempleItemCopyWithImpl<$Res>
    implements $HomeTempleItemCopyWith<$Res> {
  _$HomeTempleItemCopyWithImpl(this._self, this._then);

  final HomeTempleItem _self;
  final $Res Function(HomeTempleItem) _then;

/// Create a copy of HomeTempleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? image = null,Object? isWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeTempleItem].
extension HomeTempleItemPatterns on HomeTempleItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTempleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTempleItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTempleItem value)  $default,){
final _that = this;
switch (_that) {
case _HomeTempleItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTempleItem value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTempleItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String location,  double? lat,  double? lng,  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTempleItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String slug,  String location,  double? lat,  double? lng,  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)  $default,) {final _that = this;
switch (_that) {
case _HomeTempleItem():
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String slug,  String location,  double? lat,  double? lng,  String image, @JsonKey(name: 'isWishlist')  bool isWishlist)?  $default,) {final _that = this;
switch (_that) {
case _HomeTempleItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.location,_that.lat,_that.lng,_that.image,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTempleItem implements HomeTempleItem {
  const _HomeTempleItem({this.id = '', this.title = '', this.slug = '', this.location = '', this.lat, this.lng, this.image = '', @JsonKey(name: 'isWishlist') this.isWishlist = false});
  factory _HomeTempleItem.fromJson(Map<String, dynamic> json) => _$HomeTempleItemFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String location;
@override final  double? lat;
@override final  double? lng;
@override@JsonKey() final  String image;
@override@JsonKey(name: 'isWishlist') final  bool isWishlist;

/// Create a copy of HomeTempleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTempleItemCopyWith<_HomeTempleItem> get copyWith => __$HomeTempleItemCopyWithImpl<_HomeTempleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTempleItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTempleItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,location,lat,lng,image,isWishlist);

@override
String toString() {
  return 'HomeTempleItem(id: $id, title: $title, slug: $slug, location: $location, lat: $lat, lng: $lng, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$HomeTempleItemCopyWith<$Res> implements $HomeTempleItemCopyWith<$Res> {
  factory _$HomeTempleItemCopyWith(_HomeTempleItem value, $Res Function(_HomeTempleItem) _then) = __$HomeTempleItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String slug, String location, double? lat, double? lng, String image,@JsonKey(name: 'isWishlist') bool isWishlist
});




}
/// @nodoc
class __$HomeTempleItemCopyWithImpl<$Res>
    implements _$HomeTempleItemCopyWith<$Res> {
  __$HomeTempleItemCopyWithImpl(this._self, this._then);

  final _HomeTempleItem _self;
  final $Res Function(_HomeTempleItem) _then;

/// Create a copy of HomeTempleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? location = null,Object? lat = freezed,Object? lng = freezed,Object? image = null,Object? isWishlist = null,}) {
  return _then(_HomeTempleItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$HomeTemplePagination {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of HomeTemplePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTemplePaginationCopyWith<HomeTemplePagination> get copyWith => _$HomeTemplePaginationCopyWithImpl<HomeTemplePagination>(this as HomeTemplePagination, _$identity);

  /// Serializes this HomeTemplePagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTemplePagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'HomeTemplePagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $HomeTemplePaginationCopyWith<$Res>  {
  factory $HomeTemplePaginationCopyWith(HomeTemplePagination value, $Res Function(HomeTemplePagination) _then) = _$HomeTemplePaginationCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$HomeTemplePaginationCopyWithImpl<$Res>
    implements $HomeTemplePaginationCopyWith<$Res> {
  _$HomeTemplePaginationCopyWithImpl(this._self, this._then);

  final HomeTemplePagination _self;
  final $Res Function(HomeTemplePagination) _then;

/// Create a copy of HomeTemplePagination
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


/// Adds pattern-matching-related methods to [HomeTemplePagination].
extension HomeTemplePaginationPatterns on HomeTemplePagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTemplePagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTemplePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTemplePagination value)  $default,){
final _that = this;
switch (_that) {
case _HomeTemplePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTemplePagination value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTemplePagination() when $default != null:
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
case _HomeTemplePagination() when $default != null:
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
case _HomeTemplePagination():
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
case _HomeTemplePagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTemplePagination implements HomeTemplePagination {
  const _HomeTemplePagination({this.total = 0, this.page = 1, this.limit = 0, this.totalPages = 0});
  factory _HomeTemplePagination.fromJson(Map<String, dynamic> json) => _$HomeTemplePaginationFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int totalPages;

/// Create a copy of HomeTemplePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTemplePaginationCopyWith<_HomeTemplePagination> get copyWith => __$HomeTemplePaginationCopyWithImpl<_HomeTemplePagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTemplePaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTemplePagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'HomeTemplePagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$HomeTemplePaginationCopyWith<$Res> implements $HomeTemplePaginationCopyWith<$Res> {
  factory _$HomeTemplePaginationCopyWith(_HomeTemplePagination value, $Res Function(_HomeTemplePagination) _then) = __$HomeTemplePaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$HomeTemplePaginationCopyWithImpl<$Res>
    implements _$HomeTemplePaginationCopyWith<$Res> {
  __$HomeTemplePaginationCopyWithImpl(this._self, this._then);

  final _HomeTemplePagination _self;
  final $Res Function(_HomeTemplePagination) _then;

/// Create a copy of HomeTemplePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_HomeTemplePagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
