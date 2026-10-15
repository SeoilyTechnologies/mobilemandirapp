// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_god_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeGodApiResponse {

 bool get success; String get message; HomeGodData get data; dynamic get errors;
/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeGodApiResponseCopyWith<HomeGodApiResponse> get copyWith => _$HomeGodApiResponseCopyWithImpl<HomeGodApiResponse>(this as HomeGodApiResponse, _$identity);

  /// Serializes this HomeGodApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HomeGodApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $HomeGodApiResponseCopyWith<$Res>  {
  factory $HomeGodApiResponseCopyWith(HomeGodApiResponse value, $Res Function(HomeGodApiResponse) _then) = _$HomeGodApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, HomeGodData data, dynamic errors
});


$HomeGodDataCopyWith<$Res> get data;

}
/// @nodoc
class _$HomeGodApiResponseCopyWithImpl<$Res>
    implements $HomeGodApiResponseCopyWith<$Res> {
  _$HomeGodApiResponseCopyWithImpl(this._self, this._then);

  final HomeGodApiResponse _self;
  final $Res Function(HomeGodApiResponse) _then;

/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeGodData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeGodDataCopyWith<$Res> get data {
  
  return $HomeGodDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeGodApiResponse].
extension HomeGodApiResponsePatterns on HomeGodApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeGodApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeGodApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomeGodApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeGodApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomeGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  HomeGodData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeGodApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  HomeGodData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _HomeGodApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  HomeGodData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _HomeGodApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeGodApiResponse implements HomeGodApiResponse {
  const _HomeGodApiResponse({this.success = false, this.message = '', this.data = const HomeGodData(), this.errors});
  factory _HomeGodApiResponse.fromJson(Map<String, dynamic> json) => _$HomeGodApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  HomeGodData data;
@override final  dynamic errors;

/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeGodApiResponseCopyWith<_HomeGodApiResponse> get copyWith => __$HomeGodApiResponseCopyWithImpl<_HomeGodApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeGodApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeGodApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HomeGodApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$HomeGodApiResponseCopyWith<$Res> implements $HomeGodApiResponseCopyWith<$Res> {
  factory _$HomeGodApiResponseCopyWith(_HomeGodApiResponse value, $Res Function(_HomeGodApiResponse) _then) = __$HomeGodApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, HomeGodData data, dynamic errors
});


@override $HomeGodDataCopyWith<$Res> get data;

}
/// @nodoc
class __$HomeGodApiResponseCopyWithImpl<$Res>
    implements _$HomeGodApiResponseCopyWith<$Res> {
  __$HomeGodApiResponseCopyWithImpl(this._self, this._then);

  final _HomeGodApiResponse _self;
  final $Res Function(_HomeGodApiResponse) _then;

/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_HomeGodApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeGodData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of HomeGodApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeGodDataCopyWith<$Res> get data {
  
  return $HomeGodDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HomeGodData {

 List<HomeGodItem> get items; HomeGodPagination get pagination;
/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeGodDataCopyWith<HomeGodData> get copyWith => _$HomeGodDataCopyWithImpl<HomeGodData>(this as HomeGodData, _$identity);

  /// Serializes this HomeGodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGodData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'HomeGodData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $HomeGodDataCopyWith<$Res>  {
  factory $HomeGodDataCopyWith(HomeGodData value, $Res Function(HomeGodData) _then) = _$HomeGodDataCopyWithImpl;
@useResult
$Res call({
 List<HomeGodItem> items, HomeGodPagination pagination
});


$HomeGodPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$HomeGodDataCopyWithImpl<$Res>
    implements $HomeGodDataCopyWith<$Res> {
  _$HomeGodDataCopyWithImpl(this._self, this._then);

  final HomeGodData _self;
  final $Res Function(HomeGodData) _then;

/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<HomeGodItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HomeGodPagination,
  ));
}
/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeGodPaginationCopyWith<$Res> get pagination {
  
  return $HomeGodPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeGodData].
extension HomeGodDataPatterns on HomeGodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeGodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeGodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeGodData value)  $default,){
final _that = this;
switch (_that) {
case _HomeGodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeGodData value)?  $default,){
final _that = this;
switch (_that) {
case _HomeGodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HomeGodItem> items,  HomeGodPagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeGodData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HomeGodItem> items,  HomeGodPagination pagination)  $default,) {final _that = this;
switch (_that) {
case _HomeGodData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HomeGodItem> items,  HomeGodPagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _HomeGodData() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeGodData implements HomeGodData {
  const _HomeGodData({final  List<HomeGodItem> items = const [], this.pagination = const HomeGodPagination()}): _items = items;
  factory _HomeGodData.fromJson(Map<String, dynamic> json) => _$HomeGodDataFromJson(json);

 final  List<HomeGodItem> _items;
@override@JsonKey() List<HomeGodItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  HomeGodPagination pagination;

/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeGodDataCopyWith<_HomeGodData> get copyWith => __$HomeGodDataCopyWithImpl<_HomeGodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeGodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeGodData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'HomeGodData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$HomeGodDataCopyWith<$Res> implements $HomeGodDataCopyWith<$Res> {
  factory _$HomeGodDataCopyWith(_HomeGodData value, $Res Function(_HomeGodData) _then) = __$HomeGodDataCopyWithImpl;
@override @useResult
$Res call({
 List<HomeGodItem> items, HomeGodPagination pagination
});


@override $HomeGodPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$HomeGodDataCopyWithImpl<$Res>
    implements _$HomeGodDataCopyWith<$Res> {
  __$HomeGodDataCopyWithImpl(this._self, this._then);

  final _HomeGodData _self;
  final $Res Function(_HomeGodData) _then;

/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_HomeGodData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HomeGodItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as HomeGodPagination,
  ));
}

/// Create a copy of HomeGodData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeGodPaginationCopyWith<$Res> get pagination {
  
  return $HomeGodPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$HomeGodItem {

 String get id; String get title; String get slug; String get category; String get location; String get image; bool get isWishlist;
/// Create a copy of HomeGodItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeGodItemCopyWith<HomeGodItem> get copyWith => _$HomeGodItemCopyWithImpl<HomeGodItem>(this as HomeGodItem, _$identity);

  /// Serializes this HomeGodItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGodItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'HomeGodItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $HomeGodItemCopyWith<$Res>  {
  factory $HomeGodItemCopyWith(HomeGodItem value, $Res Function(HomeGodItem) _then) = _$HomeGodItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String slug, String category, String location, String image, bool isWishlist
});




}
/// @nodoc
class _$HomeGodItemCopyWithImpl<$Res>
    implements $HomeGodItemCopyWith<$Res> {
  _$HomeGodItemCopyWithImpl(this._self, this._then);

  final HomeGodItem _self;
  final $Res Function(HomeGodItem) _then;

/// Create a copy of HomeGodItem
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


/// Adds pattern-matching-related methods to [HomeGodItem].
extension HomeGodItemPatterns on HomeGodItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeGodItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeGodItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeGodItem value)  $default,){
final _that = this;
switch (_that) {
case _HomeGodItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeGodItem value)?  $default,){
final _that = this;
switch (_that) {
case _HomeGodItem() when $default != null:
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
case _HomeGodItem() when $default != null:
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
case _HomeGodItem():
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
case _HomeGodItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeGodItem implements HomeGodItem {
  const _HomeGodItem({this.id = '', this.title = '', this.slug = '', this.category = '', this.location = '', this.image = '', this.isWishlist = false});
  factory _HomeGodItem.fromJson(Map<String, dynamic> json) => _$HomeGodItemFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String category;
@override@JsonKey() final  String location;
@override@JsonKey() final  String image;
@override@JsonKey() final  bool isWishlist;

/// Create a copy of HomeGodItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeGodItemCopyWith<_HomeGodItem> get copyWith => __$HomeGodItemCopyWithImpl<_HomeGodItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeGodItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeGodItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'HomeGodItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$HomeGodItemCopyWith<$Res> implements $HomeGodItemCopyWith<$Res> {
  factory _$HomeGodItemCopyWith(_HomeGodItem value, $Res Function(_HomeGodItem) _then) = __$HomeGodItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String slug, String category, String location, String image, bool isWishlist
});




}
/// @nodoc
class __$HomeGodItemCopyWithImpl<$Res>
    implements _$HomeGodItemCopyWith<$Res> {
  __$HomeGodItemCopyWithImpl(this._self, this._then);

  final _HomeGodItem _self;
  final $Res Function(_HomeGodItem) _then;

/// Create a copy of HomeGodItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? category = null,Object? location = null,Object? image = null,Object? isWishlist = null,}) {
  return _then(_HomeGodItem(
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
mixin _$HomeGodPagination {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of HomeGodPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeGodPaginationCopyWith<HomeGodPagination> get copyWith => _$HomeGodPaginationCopyWithImpl<HomeGodPagination>(this as HomeGodPagination, _$identity);

  /// Serializes this HomeGodPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGodPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'HomeGodPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $HomeGodPaginationCopyWith<$Res>  {
  factory $HomeGodPaginationCopyWith(HomeGodPagination value, $Res Function(HomeGodPagination) _then) = _$HomeGodPaginationCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$HomeGodPaginationCopyWithImpl<$Res>
    implements $HomeGodPaginationCopyWith<$Res> {
  _$HomeGodPaginationCopyWithImpl(this._self, this._then);

  final HomeGodPagination _self;
  final $Res Function(HomeGodPagination) _then;

/// Create a copy of HomeGodPagination
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


/// Adds pattern-matching-related methods to [HomeGodPagination].
extension HomeGodPaginationPatterns on HomeGodPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeGodPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeGodPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeGodPagination value)  $default,){
final _that = this;
switch (_that) {
case _HomeGodPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeGodPagination value)?  $default,){
final _that = this;
switch (_that) {
case _HomeGodPagination() when $default != null:
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
case _HomeGodPagination() when $default != null:
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
case _HomeGodPagination():
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
case _HomeGodPagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeGodPagination implements HomeGodPagination {
  const _HomeGodPagination({this.total = 0, this.page = 1, this.limit = 0, this.totalPages = 0});
  factory _HomeGodPagination.fromJson(Map<String, dynamic> json) => _$HomeGodPaginationFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int totalPages;

/// Create a copy of HomeGodPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeGodPaginationCopyWith<_HomeGodPagination> get copyWith => __$HomeGodPaginationCopyWithImpl<_HomeGodPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeGodPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeGodPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'HomeGodPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$HomeGodPaginationCopyWith<$Res> implements $HomeGodPaginationCopyWith<$Res> {
  factory _$HomeGodPaginationCopyWith(_HomeGodPagination value, $Res Function(_HomeGodPagination) _then) = __$HomeGodPaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$HomeGodPaginationCopyWithImpl<$Res>
    implements _$HomeGodPaginationCopyWith<$Res> {
  __$HomeGodPaginationCopyWithImpl(this._self, this._then);

  final _HomeGodPagination _self;
  final $Res Function(_HomeGodPagination) _then;

/// Create a copy of HomeGodPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_HomeGodPagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
