// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aarti_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AartiResponse {

 bool get success; String get lang; int get count; List<AartiModel> get data; AartiPagination get pagination;
/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AartiResponseCopyWith<AartiResponse> get copyWith => _$AartiResponseCopyWithImpl<AartiResponse>(this as AartiResponse, _$identity);

  /// Serializes this AartiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AartiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'AartiResponse(success: $success, lang: $lang, count: $count, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $AartiResponseCopyWith<$Res>  {
  factory $AartiResponseCopyWith(AartiResponse value, $Res Function(AartiResponse) _then) = _$AartiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String lang, int count, List<AartiModel> data, AartiPagination pagination
});


$AartiPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$AartiResponseCopyWithImpl<$Res>
    implements $AartiResponseCopyWith<$Res> {
  _$AartiResponseCopyWithImpl(this._self, this._then);

  final AartiResponse _self;
  final $Res Function(AartiResponse) _then;

/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AartiModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AartiPagination,
  ));
}
/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiPaginationCopyWith<$Res> get pagination {
  
  return $AartiPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [AartiResponse].
extension AartiResponsePatterns on AartiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AartiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AartiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AartiResponse value)  $default,){
final _that = this;
switch (_that) {
case _AartiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AartiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AartiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<AartiModel> data,  AartiPagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AartiResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String lang,  int count,  List<AartiModel> data,  AartiPagination pagination)  $default,) {final _that = this;
switch (_that) {
case _AartiResponse():
return $default(_that.success,_that.lang,_that.count,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String lang,  int count,  List<AartiModel> data,  AartiPagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _AartiResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AartiResponse implements AartiResponse {
  const _AartiResponse({this.success = false, this.lang = '', this.count = 0, final  List<AartiModel> data = const [], this.pagination = const AartiPagination()}): _data = data;
  factory _AartiResponse.fromJson(Map<String, dynamic> json) => _$AartiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String lang;
@override@JsonKey() final  int count;
 final  List<AartiModel> _data;
@override@JsonKey() List<AartiModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  AartiPagination pagination;

/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AartiResponseCopyWith<_AartiResponse> get copyWith => __$AartiResponseCopyWithImpl<_AartiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AartiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AartiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'AartiResponse(success: $success, lang: $lang, count: $count, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$AartiResponseCopyWith<$Res> implements $AartiResponseCopyWith<$Res> {
  factory _$AartiResponseCopyWith(_AartiResponse value, $Res Function(_AartiResponse) _then) = __$AartiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String lang, int count, List<AartiModel> data, AartiPagination pagination
});


@override $AartiPaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$AartiResponseCopyWithImpl<$Res>
    implements _$AartiResponseCopyWith<$Res> {
  __$AartiResponseCopyWithImpl(this._self, this._then);

  final _AartiResponse _self;
  final $Res Function(_AartiResponse) _then;

/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,Object? pagination = null,}) {
  return _then(_AartiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AartiModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as AartiPagination,
  ));
}

/// Create a copy of AartiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AartiPaginationCopyWith<$Res> get pagination {
  
  return $AartiPaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$AartiPagination {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of AartiPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AartiPaginationCopyWith<AartiPagination> get copyWith => _$AartiPaginationCopyWithImpl<AartiPagination>(this as AartiPagination, _$identity);

  /// Serializes this AartiPagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AartiPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'AartiPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $AartiPaginationCopyWith<$Res>  {
  factory $AartiPaginationCopyWith(AartiPagination value, $Res Function(AartiPagination) _then) = _$AartiPaginationCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$AartiPaginationCopyWithImpl<$Res>
    implements $AartiPaginationCopyWith<$Res> {
  _$AartiPaginationCopyWithImpl(this._self, this._then);

  final AartiPagination _self;
  final $Res Function(AartiPagination) _then;

/// Create a copy of AartiPagination
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


/// Adds pattern-matching-related methods to [AartiPagination].
extension AartiPaginationPatterns on AartiPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AartiPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AartiPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AartiPagination value)  $default,){
final _that = this;
switch (_that) {
case _AartiPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AartiPagination value)?  $default,){
final _that = this;
switch (_that) {
case _AartiPagination() when $default != null:
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
case _AartiPagination() when $default != null:
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
case _AartiPagination():
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
case _AartiPagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AartiPagination implements AartiPagination {
  const _AartiPagination({this.total = 0, this.page = 1, this.limit = 10, this.totalPages = 0});
  factory _AartiPagination.fromJson(Map<String, dynamic> json) => _$AartiPaginationFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int totalPages;

/// Create a copy of AartiPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AartiPaginationCopyWith<_AartiPagination> get copyWith => __$AartiPaginationCopyWithImpl<_AartiPagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AartiPaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AartiPagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'AartiPagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$AartiPaginationCopyWith<$Res> implements $AartiPaginationCopyWith<$Res> {
  factory _$AartiPaginationCopyWith(_AartiPagination value, $Res Function(_AartiPagination) _then) = __$AartiPaginationCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$AartiPaginationCopyWithImpl<$Res>
    implements _$AartiPaginationCopyWith<$Res> {
  __$AartiPaginationCopyWithImpl(this._self, this._then);

  final _AartiPagination _self;
  final $Res Function(_AartiPagination) _then;

/// Create a copy of AartiPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_AartiPagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AartiModel {

@JsonKey(name: "_id") String get id; String get type; String get slug; String get testLyrics_hi; String get testLyrics_en; String get audioAsset; String get lyric_banner_image; String get youtubeLink; String get testLyrics;@JsonKey(name: "audio_duration") String get audioDuration; String get title; String get thumbnail;@JsonKey(name: "main_banner") String get mainBanner; List<LyricsModel> get lyrics; GodModel get god; bool get isAddedInWishlist;@JsonKey(name: "createdAt") String get createdAt;@JsonKey(name: "date") String get date;@JsonKey(name: "updatedAt") String get updatedAt;
/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AartiModelCopyWith<AartiModel> get copyWith => _$AartiModelCopyWithImpl<AartiModel>(this as AartiModel, _$identity);

  /// Serializes this AartiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AartiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.lyric_banner_image, lyric_banner_image) || other.lyric_banner_image == lyric_banner_image)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&const DeepCollectionEquality().equals(other.lyrics, lyrics)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.date, date) || other.date == date)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,slug,testLyrics_hi,testLyrics_en,audioAsset,lyric_banner_image,youtubeLink,testLyrics,audioDuration,title,thumbnail,mainBanner,const DeepCollectionEquality().hash(lyrics),god,isAddedInWishlist,createdAt,date,updatedAt]);

@override
String toString() {
  return 'AartiModel(id: $id, type: $type, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, audioAsset: $audioAsset, lyric_banner_image: $lyric_banner_image, youtubeLink: $youtubeLink, testLyrics: $testLyrics, audioDuration: $audioDuration, title: $title, thumbnail: $thumbnail, mainBanner: $mainBanner, lyrics: $lyrics, god: $god, isAddedInWishlist: $isAddedInWishlist, createdAt: $createdAt, date: $date, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AartiModelCopyWith<$Res>  {
  factory $AartiModelCopyWith(AartiModel value, $Res Function(AartiModel) _then) = _$AartiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id, String type, String slug, String testLyrics_hi, String testLyrics_en, String audioAsset, String lyric_banner_image, String youtubeLink, String testLyrics,@JsonKey(name: "audio_duration") String audioDuration, String title, String thumbnail,@JsonKey(name: "main_banner") String mainBanner, List<LyricsModel> lyrics, GodModel god, bool isAddedInWishlist,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "date") String date,@JsonKey(name: "updatedAt") String updatedAt
});


$GodModelCopyWith<$Res> get god;

}
/// @nodoc
class _$AartiModelCopyWithImpl<$Res>
    implements $AartiModelCopyWith<$Res> {
  _$AartiModelCopyWithImpl(this._self, this._then);

  final AartiModel _self;
  final $Res Function(AartiModel) _then;

/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? audioAsset = null,Object? lyric_banner_image = null,Object? youtubeLink = null,Object? testLyrics = null,Object? audioDuration = null,Object? title = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyrics = null,Object? god = null,Object? isAddedInWishlist = null,Object? createdAt = null,Object? date = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,lyric_banner_image: null == lyric_banner_image ? _self.lyric_banner_image : lyric_banner_image // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self.lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<LyricsModel>,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res> get god {
  
  return $GodModelCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// Adds pattern-matching-related methods to [AartiModel].
extension AartiModelPatterns on AartiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AartiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AartiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AartiModel value)  $default,){
final _that = this;
switch (_that) {
case _AartiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AartiModel value)?  $default,){
final _that = this;
switch (_that) {
case _AartiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id,  String type,  String slug,  String testLyrics_hi,  String testLyrics_en,  String audioAsset,  String lyric_banner_image,  String youtubeLink,  String testLyrics, @JsonKey(name: "audio_duration")  String audioDuration,  String title,  String thumbnail, @JsonKey(name: "main_banner")  String mainBanner,  List<LyricsModel> lyrics,  GodModel god,  bool isAddedInWishlist, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "date")  String date, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AartiModel() when $default != null:
return $default(_that.id,_that.type,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.audioAsset,_that.lyric_banner_image,_that.youtubeLink,_that.testLyrics,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyrics,_that.god,_that.isAddedInWishlist,_that.createdAt,_that.date,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id,  String type,  String slug,  String testLyrics_hi,  String testLyrics_en,  String audioAsset,  String lyric_banner_image,  String youtubeLink,  String testLyrics, @JsonKey(name: "audio_duration")  String audioDuration,  String title,  String thumbnail, @JsonKey(name: "main_banner")  String mainBanner,  List<LyricsModel> lyrics,  GodModel god,  bool isAddedInWishlist, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "date")  String date, @JsonKey(name: "updatedAt")  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AartiModel():
return $default(_that.id,_that.type,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.audioAsset,_that.lyric_banner_image,_that.youtubeLink,_that.testLyrics,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyrics,_that.god,_that.isAddedInWishlist,_that.createdAt,_that.date,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id,  String type,  String slug,  String testLyrics_hi,  String testLyrics_en,  String audioAsset,  String lyric_banner_image,  String youtubeLink,  String testLyrics, @JsonKey(name: "audio_duration")  String audioDuration,  String title,  String thumbnail, @JsonKey(name: "main_banner")  String mainBanner,  List<LyricsModel> lyrics,  GodModel god,  bool isAddedInWishlist, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "date")  String date, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AartiModel() when $default != null:
return $default(_that.id,_that.type,_that.slug,_that.testLyrics_hi,_that.testLyrics_en,_that.audioAsset,_that.lyric_banner_image,_that.youtubeLink,_that.testLyrics,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyrics,_that.god,_that.isAddedInWishlist,_that.createdAt,_that.date,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AartiModel implements AartiModel {
  const _AartiModel({@JsonKey(name: "_id") this.id = "", this.type = "", this.slug = "", this.testLyrics_hi = "", this.testLyrics_en = "", this.audioAsset = "", this.lyric_banner_image = "", this.youtubeLink = "", this.testLyrics = "", @JsonKey(name: "audio_duration") this.audioDuration = "", this.title = "", this.thumbnail = "", @JsonKey(name: "main_banner") this.mainBanner = "", final  List<LyricsModel> lyrics = const [], this.god = const GodModel(), this.isAddedInWishlist = false, @JsonKey(name: "createdAt") this.createdAt = "", @JsonKey(name: "date") this.date = "", @JsonKey(name: "updatedAt") this.updatedAt = ""}): _lyrics = lyrics;
  factory _AartiModel.fromJson(Map<String, dynamic> json) => _$AartiModelFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey() final  String type;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String testLyrics_hi;
@override@JsonKey() final  String testLyrics_en;
@override@JsonKey() final  String audioAsset;
@override@JsonKey() final  String lyric_banner_image;
@override@JsonKey() final  String youtubeLink;
@override@JsonKey() final  String testLyrics;
@override@JsonKey(name: "audio_duration") final  String audioDuration;
@override@JsonKey() final  String title;
@override@JsonKey() final  String thumbnail;
@override@JsonKey(name: "main_banner") final  String mainBanner;
 final  List<LyricsModel> _lyrics;
@override@JsonKey() List<LyricsModel> get lyrics {
  if (_lyrics is EqualUnmodifiableListView) return _lyrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lyrics);
}

@override@JsonKey() final  GodModel god;
@override@JsonKey() final  bool isAddedInWishlist;
@override@JsonKey(name: "createdAt") final  String createdAt;
@override@JsonKey(name: "date") final  String date;
@override@JsonKey(name: "updatedAt") final  String updatedAt;

/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AartiModelCopyWith<_AartiModel> get copyWith => __$AartiModelCopyWithImpl<_AartiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AartiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AartiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.testLyrics_hi, testLyrics_hi) || other.testLyrics_hi == testLyrics_hi)&&(identical(other.testLyrics_en, testLyrics_en) || other.testLyrics_en == testLyrics_en)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.lyric_banner_image, lyric_banner_image) || other.lyric_banner_image == lyric_banner_image)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&const DeepCollectionEquality().equals(other._lyrics, _lyrics)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.date, date) || other.date == date)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,slug,testLyrics_hi,testLyrics_en,audioAsset,lyric_banner_image,youtubeLink,testLyrics,audioDuration,title,thumbnail,mainBanner,const DeepCollectionEquality().hash(_lyrics),god,isAddedInWishlist,createdAt,date,updatedAt]);

@override
String toString() {
  return 'AartiModel(id: $id, type: $type, slug: $slug, testLyrics_hi: $testLyrics_hi, testLyrics_en: $testLyrics_en, audioAsset: $audioAsset, lyric_banner_image: $lyric_banner_image, youtubeLink: $youtubeLink, testLyrics: $testLyrics, audioDuration: $audioDuration, title: $title, thumbnail: $thumbnail, mainBanner: $mainBanner, lyrics: $lyrics, god: $god, isAddedInWishlist: $isAddedInWishlist, createdAt: $createdAt, date: $date, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AartiModelCopyWith<$Res> implements $AartiModelCopyWith<$Res> {
  factory _$AartiModelCopyWith(_AartiModel value, $Res Function(_AartiModel) _then) = __$AartiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id, String type, String slug, String testLyrics_hi, String testLyrics_en, String audioAsset, String lyric_banner_image, String youtubeLink, String testLyrics,@JsonKey(name: "audio_duration") String audioDuration, String title, String thumbnail,@JsonKey(name: "main_banner") String mainBanner, List<LyricsModel> lyrics, GodModel god, bool isAddedInWishlist,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "date") String date,@JsonKey(name: "updatedAt") String updatedAt
});


@override $GodModelCopyWith<$Res> get god;

}
/// @nodoc
class __$AartiModelCopyWithImpl<$Res>
    implements _$AartiModelCopyWith<$Res> {
  __$AartiModelCopyWithImpl(this._self, this._then);

  final _AartiModel _self;
  final $Res Function(_AartiModel) _then;

/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? slug = null,Object? testLyrics_hi = null,Object? testLyrics_en = null,Object? audioAsset = null,Object? lyric_banner_image = null,Object? youtubeLink = null,Object? testLyrics = null,Object? audioDuration = null,Object? title = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyrics = null,Object? god = null,Object? isAddedInWishlist = null,Object? createdAt = null,Object? date = null,Object? updatedAt = null,}) {
  return _then(_AartiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testLyrics_hi: null == testLyrics_hi ? _self.testLyrics_hi : testLyrics_hi // ignore: cast_nullable_to_non_nullable
as String,testLyrics_en: null == testLyrics_en ? _self.testLyrics_en : testLyrics_en // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,lyric_banner_image: null == lyric_banner_image ? _self.lyric_banner_image : lyric_banner_image // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self._lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<LyricsModel>,god: null == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AartiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res> get god {
  
  return $GodModelCopyWith<$Res>(_self.god, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// @nodoc
mixin _$LyricsModel {

 TimeStamp get start; TimeStamp get end; String get text;
/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LyricsModelCopyWith<LyricsModel> get copyWith => _$LyricsModelCopyWithImpl<LyricsModel>(this as LyricsModel, _$identity);

  /// Serializes this LyricsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LyricsModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,text);

@override
String toString() {
  return 'LyricsModel(start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class $LyricsModelCopyWith<$Res>  {
  factory $LyricsModelCopyWith(LyricsModel value, $Res Function(LyricsModel) _then) = _$LyricsModelCopyWithImpl;
@useResult
$Res call({
 TimeStamp start, TimeStamp end, String text
});


$TimeStampCopyWith<$Res> get start;$TimeStampCopyWith<$Res> get end;

}
/// @nodoc
class _$LyricsModelCopyWithImpl<$Res>
    implements $LyricsModelCopyWith<$Res> {
  _$LyricsModelCopyWithImpl(this._self, this._then);

  final LyricsModel _self;
  final $Res Function(LyricsModel) _then;

/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,Object? text = null,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeStamp,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeStamp,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeStampCopyWith<$Res> get start {
  
  return $TimeStampCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeStampCopyWith<$Res> get end {
  
  return $TimeStampCopyWith<$Res>(_self.end, (value) {
    return _then(_self.copyWith(end: value));
  });
}
}


/// Adds pattern-matching-related methods to [LyricsModel].
extension LyricsModelPatterns on LyricsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LyricsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LyricsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LyricsModel value)  $default,){
final _that = this;
switch (_that) {
case _LyricsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LyricsModel value)?  $default,){
final _that = this;
switch (_that) {
case _LyricsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimeStamp start,  TimeStamp end,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LyricsModel() when $default != null:
return $default(_that.start,_that.end,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimeStamp start,  TimeStamp end,  String text)  $default,) {final _that = this;
switch (_that) {
case _LyricsModel():
return $default(_that.start,_that.end,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimeStamp start,  TimeStamp end,  String text)?  $default,) {final _that = this;
switch (_that) {
case _LyricsModel() when $default != null:
return $default(_that.start,_that.end,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LyricsModel implements LyricsModel {
  const _LyricsModel({this.start = const TimeStamp(), this.end = const TimeStamp(), this.text = ""});
  factory _LyricsModel.fromJson(Map<String, dynamic> json) => _$LyricsModelFromJson(json);

@override@JsonKey() final  TimeStamp start;
@override@JsonKey() final  TimeStamp end;
@override@JsonKey() final  String text;

/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LyricsModelCopyWith<_LyricsModel> get copyWith => __$LyricsModelCopyWithImpl<_LyricsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LyricsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LyricsModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,text);

@override
String toString() {
  return 'LyricsModel(start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class _$LyricsModelCopyWith<$Res> implements $LyricsModelCopyWith<$Res> {
  factory _$LyricsModelCopyWith(_LyricsModel value, $Res Function(_LyricsModel) _then) = __$LyricsModelCopyWithImpl;
@override @useResult
$Res call({
 TimeStamp start, TimeStamp end, String text
});


@override $TimeStampCopyWith<$Res> get start;@override $TimeStampCopyWith<$Res> get end;

}
/// @nodoc
class __$LyricsModelCopyWithImpl<$Res>
    implements _$LyricsModelCopyWith<$Res> {
  __$LyricsModelCopyWithImpl(this._self, this._then);

  final _LyricsModel _self;
  final $Res Function(_LyricsModel) _then;

/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,Object? text = null,}) {
  return _then(_LyricsModel(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeStamp,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeStamp,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeStampCopyWith<$Res> get start {
  
  return $TimeStampCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of LyricsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeStampCopyWith<$Res> get end {
  
  return $TimeStampCopyWith<$Res>(_self.end, (value) {
    return _then(_self.copyWith(end: value));
  });
}
}


/// @nodoc
mixin _$TimeStamp {

 int get seconds; int get milliseconds;
/// Create a copy of TimeStamp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeStampCopyWith<TimeStamp> get copyWith => _$TimeStampCopyWithImpl<TimeStamp>(this as TimeStamp, _$identity);

  /// Serializes this TimeStamp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeStamp&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.milliseconds, milliseconds) || other.milliseconds == milliseconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seconds,milliseconds);

@override
String toString() {
  return 'TimeStamp(seconds: $seconds, milliseconds: $milliseconds)';
}


}

/// @nodoc
abstract mixin class $TimeStampCopyWith<$Res>  {
  factory $TimeStampCopyWith(TimeStamp value, $Res Function(TimeStamp) _then) = _$TimeStampCopyWithImpl;
@useResult
$Res call({
 int seconds, int milliseconds
});




}
/// @nodoc
class _$TimeStampCopyWithImpl<$Res>
    implements $TimeStampCopyWith<$Res> {
  _$TimeStampCopyWithImpl(this._self, this._then);

  final TimeStamp _self;
  final $Res Function(TimeStamp) _then;

/// Create a copy of TimeStamp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seconds = null,Object? milliseconds = null,}) {
  return _then(_self.copyWith(
seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as int,milliseconds: null == milliseconds ? _self.milliseconds : milliseconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeStamp].
extension TimeStampPatterns on TimeStamp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeStamp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeStamp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeStamp value)  $default,){
final _that = this;
switch (_that) {
case _TimeStamp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeStamp value)?  $default,){
final _that = this;
switch (_that) {
case _TimeStamp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int seconds,  int milliseconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeStamp() when $default != null:
return $default(_that.seconds,_that.milliseconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int seconds,  int milliseconds)  $default,) {final _that = this;
switch (_that) {
case _TimeStamp():
return $default(_that.seconds,_that.milliseconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int seconds,  int milliseconds)?  $default,) {final _that = this;
switch (_that) {
case _TimeStamp() when $default != null:
return $default(_that.seconds,_that.milliseconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeStamp implements TimeStamp {
  const _TimeStamp({this.seconds = 0, this.milliseconds = 0});
  factory _TimeStamp.fromJson(Map<String, dynamic> json) => _$TimeStampFromJson(json);

@override@JsonKey() final  int seconds;
@override@JsonKey() final  int milliseconds;

/// Create a copy of TimeStamp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeStampCopyWith<_TimeStamp> get copyWith => __$TimeStampCopyWithImpl<_TimeStamp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeStampToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeStamp&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.milliseconds, milliseconds) || other.milliseconds == milliseconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seconds,milliseconds);

@override
String toString() {
  return 'TimeStamp(seconds: $seconds, milliseconds: $milliseconds)';
}


}

/// @nodoc
abstract mixin class _$TimeStampCopyWith<$Res> implements $TimeStampCopyWith<$Res> {
  factory _$TimeStampCopyWith(_TimeStamp value, $Res Function(_TimeStamp) _then) = __$TimeStampCopyWithImpl;
@override @useResult
$Res call({
 int seconds, int milliseconds
});




}
/// @nodoc
class __$TimeStampCopyWithImpl<$Res>
    implements _$TimeStampCopyWith<$Res> {
  __$TimeStampCopyWithImpl(this._self, this._then);

  final _TimeStamp _self;
  final $Res Function(_TimeStamp) _then;

/// Create a copy of TimeStamp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seconds = null,Object? milliseconds = null,}) {
  return _then(_TimeStamp(
seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as int,milliseconds: null == milliseconds ? _self.milliseconds : milliseconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FestivalModel {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'slug') String get slug;@JsonKey(name: 'when') String get when;
/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FestivalModelCopyWith<FestivalModel> get copyWith => _$FestivalModelCopyWithImpl<FestivalModel>(this as FestivalModel, _$identity);

  /// Serializes this FestivalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FestivalModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'FestivalModel(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class $FestivalModelCopyWith<$Res>  {
  factory $FestivalModelCopyWith(FestivalModel value, $Res Function(FestivalModel) _then) = _$FestivalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
});




}
/// @nodoc
class _$FestivalModelCopyWithImpl<$Res>
    implements $FestivalModelCopyWith<$Res> {
  _$FestivalModelCopyWithImpl(this._self, this._then);

  final FestivalModel _self;
  final $Res Function(FestivalModel) _then;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FestivalModel].
extension FestivalModelPatterns on FestivalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FestivalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FestivalModel value)  $default,){
final _that = this;
switch (_that) {
case _FestivalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FestivalModel value)?  $default,){
final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
return $default(_that.name,_that.slug,_that.when);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)  $default,) {final _that = this;
switch (_that) {
case _FestivalModel():
return $default(_that.name,_that.slug,_that.when);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'slug')  String slug, @JsonKey(name: 'when')  String when)?  $default,) {final _that = this;
switch (_that) {
case _FestivalModel() when $default != null:
return $default(_that.name,_that.slug,_that.when);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FestivalModel implements FestivalModel {
  const _FestivalModel({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'slug') this.slug = '', @JsonKey(name: 'when') this.when = ''});
  factory _FestivalModel.fromJson(Map<String, dynamic> json) => _$FestivalModelFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'slug') final  String slug;
@override@JsonKey(name: 'when') final  String when;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FestivalModelCopyWith<_FestivalModel> get copyWith => __$FestivalModelCopyWithImpl<_FestivalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FestivalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FestivalModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.when, when) || other.when == when));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,when);

@override
String toString() {
  return 'FestivalModel(name: $name, slug: $slug, when: $when)';
}


}

/// @nodoc
abstract mixin class _$FestivalModelCopyWith<$Res> implements $FestivalModelCopyWith<$Res> {
  factory _$FestivalModelCopyWith(_FestivalModel value, $Res Function(_FestivalModel) _then) = __$FestivalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'slug') String slug,@JsonKey(name: 'when') String when
});




}
/// @nodoc
class __$FestivalModelCopyWithImpl<$Res>
    implements _$FestivalModelCopyWith<$Res> {
  __$FestivalModelCopyWithImpl(this._self, this._then);

  final _FestivalModel _self;
  final $Res Function(_FestivalModel) _then;

/// Create a copy of FestivalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? slug = null,Object? when = null,}) {
  return _then(_FestivalModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GodModel {

@JsonKey(name: "_id") String get id;@JsonKey(name: "god_name") String get godName;@JsonKey(name: "birth_place") String get birthPlace;@JsonKey(name: "father_name") String get fatherName;@JsonKey(name: "mother_name") String get motherName;@JsonKey(name: "detail") String get detail; List<String> get wife;@JsonKey(name: "fav_food") List<String> get favFood;@JsonKey(name: "fav_color") List<String> get favColor;@JsonKey(name: "related_month") List<String> get relatedMonth;@JsonKey(name: "related_days") List<String> get relatedDays;@JsonKey(name: "related_god") List<String> get relatedGod;@JsonKey(name: "related_tithi") List<String> get relatedTithi;@JsonKey(name: 'related_festival') List<FestivalModel> get festivals;@JsonKey(name: "main_temples") List<TempleModel> get mainTemples;@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers;@JsonKey(name: 'temple') List<TempleModel> get temples; String get thumbnail;@JsonKey(name: "godimage") List<String> get godImages;
/// Create a copy of GodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodModelCopyWith<GodModel> get copyWith => _$GodModelCopyWithImpl<GodModel>(this as GodModel, _$identity);

  /// Serializes this GodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other.wife, wife)&&const DeepCollectionEquality().equals(other.favFood, favFood)&&const DeepCollectionEquality().equals(other.favColor, favColor)&&const DeepCollectionEquality().equals(other.relatedMonth, relatedMonth)&&const DeepCollectionEquality().equals(other.relatedDays, relatedDays)&&const DeepCollectionEquality().equals(other.relatedGod, relatedGod)&&const DeepCollectionEquality().equals(other.relatedTithi, relatedTithi)&&const DeepCollectionEquality().equals(other.festivals, festivals)&&const DeepCollectionEquality().equals(other.mainTemples, mainTemples)&&const DeepCollectionEquality().equals(other.familyMembers, familyMembers)&&const DeepCollectionEquality().equals(other.temples, temples)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.godImages, godImages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,godName,birthPlace,fatherName,motherName,detail,const DeepCollectionEquality().hash(wife),const DeepCollectionEquality().hash(favFood),const DeepCollectionEquality().hash(favColor),const DeepCollectionEquality().hash(relatedMonth),const DeepCollectionEquality().hash(relatedDays),const DeepCollectionEquality().hash(relatedGod),const DeepCollectionEquality().hash(relatedTithi),const DeepCollectionEquality().hash(festivals),const DeepCollectionEquality().hash(mainTemples),const DeepCollectionEquality().hash(familyMembers),const DeepCollectionEquality().hash(temples),thumbnail,const DeepCollectionEquality().hash(godImages)]);

@override
String toString() {
  return 'GodModel(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, detail: $detail, wife: $wife, favFood: $favFood, favColor: $favColor, relatedMonth: $relatedMonth, relatedDays: $relatedDays, relatedGod: $relatedGod, relatedTithi: $relatedTithi, festivals: $festivals, mainTemples: $mainTemples, familyMembers: $familyMembers, temples: $temples, thumbnail: $thumbnail, godImages: $godImages)';
}


}

/// @nodoc
abstract mixin class $GodModelCopyWith<$Res>  {
  factory $GodModelCopyWith(GodModel value, $Res Function(GodModel) _then) = _$GodModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "god_name") String godName,@JsonKey(name: "birth_place") String birthPlace,@JsonKey(name: "father_name") String fatherName,@JsonKey(name: "mother_name") String motherName,@JsonKey(name: "detail") String detail, List<String> wife,@JsonKey(name: "fav_food") List<String> favFood,@JsonKey(name: "fav_color") List<String> favColor,@JsonKey(name: "related_month") List<String> relatedMonth,@JsonKey(name: "related_days") List<String> relatedDays,@JsonKey(name: "related_god") List<String> relatedGod,@JsonKey(name: "related_tithi") List<String> relatedTithi,@JsonKey(name: 'related_festival') List<FestivalModel> festivals,@JsonKey(name: "main_temples") List<TempleModel> mainTemples,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'temple') List<TempleModel> temples, String thumbnail,@JsonKey(name: "godimage") List<String> godImages
});




}
/// @nodoc
class _$GodModelCopyWithImpl<$Res>
    implements $GodModelCopyWith<$Res> {
  _$GodModelCopyWithImpl(this._self, this._then);

  final GodModel _self;
  final $Res Function(GodModel) _then;

/// Create a copy of GodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? detail = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? relatedMonth = null,Object? relatedDays = null,Object? relatedGod = null,Object? relatedTithi = null,Object? festivals = null,Object? mainTemples = null,Object? familyMembers = null,Object? temples = null,Object? thumbnail = null,Object? godImages = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self.wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,favFood: null == favFood ? _self.favFood : favFood // ignore: cast_nullable_to_non_nullable
as List<String>,favColor: null == favColor ? _self.favColor : favColor // ignore: cast_nullable_to_non_nullable
as List<String>,relatedMonth: null == relatedMonth ? _self.relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self.relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGod: null == relatedGod ? _self.relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self.relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,festivals: null == festivals ? _self.festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,mainTemples: null == mainTemples ? _self.mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,familyMembers: null == familyMembers ? _self.familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,temples: null == temples ? _self.temples : temples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,godImages: null == godImages ? _self.godImages : godImages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [GodModel].
extension GodModelPatterns on GodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodModel value)  $default,){
final _that = this;
switch (_that) {
case _GodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodModel value)?  $default,){
final _that = this;
switch (_that) {
case _GodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "god_name")  String godName, @JsonKey(name: "birth_place")  String birthPlace, @JsonKey(name: "father_name")  String fatherName, @JsonKey(name: "mother_name")  String motherName, @JsonKey(name: "detail")  String detail,  List<String> wife, @JsonKey(name: "fav_food")  List<String> favFood, @JsonKey(name: "fav_color")  List<String> favColor, @JsonKey(name: "related_month")  List<String> relatedMonth, @JsonKey(name: "related_days")  List<String> relatedDays, @JsonKey(name: "related_god")  List<String> relatedGod, @JsonKey(name: "related_tithi")  List<String> relatedTithi, @JsonKey(name: 'related_festival')  List<FestivalModel> festivals, @JsonKey(name: "main_temples")  List<TempleModel> mainTemples, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'temple')  List<TempleModel> temples,  String thumbnail, @JsonKey(name: "godimage")  List<String> godImages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodModel() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedDays,_that.relatedGod,_that.relatedTithi,_that.festivals,_that.mainTemples,_that.familyMembers,_that.temples,_that.thumbnail,_that.godImages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "god_name")  String godName, @JsonKey(name: "birth_place")  String birthPlace, @JsonKey(name: "father_name")  String fatherName, @JsonKey(name: "mother_name")  String motherName, @JsonKey(name: "detail")  String detail,  List<String> wife, @JsonKey(name: "fav_food")  List<String> favFood, @JsonKey(name: "fav_color")  List<String> favColor, @JsonKey(name: "related_month")  List<String> relatedMonth, @JsonKey(name: "related_days")  List<String> relatedDays, @JsonKey(name: "related_god")  List<String> relatedGod, @JsonKey(name: "related_tithi")  List<String> relatedTithi, @JsonKey(name: 'related_festival')  List<FestivalModel> festivals, @JsonKey(name: "main_temples")  List<TempleModel> mainTemples, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'temple')  List<TempleModel> temples,  String thumbnail, @JsonKey(name: "godimage")  List<String> godImages)  $default,) {final _that = this;
switch (_that) {
case _GodModel():
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedDays,_that.relatedGod,_that.relatedTithi,_that.festivals,_that.mainTemples,_that.familyMembers,_that.temples,_that.thumbnail,_that.godImages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "god_name")  String godName, @JsonKey(name: "birth_place")  String birthPlace, @JsonKey(name: "father_name")  String fatherName, @JsonKey(name: "mother_name")  String motherName, @JsonKey(name: "detail")  String detail,  List<String> wife, @JsonKey(name: "fav_food")  List<String> favFood, @JsonKey(name: "fav_color")  List<String> favColor, @JsonKey(name: "related_month")  List<String> relatedMonth, @JsonKey(name: "related_days")  List<String> relatedDays, @JsonKey(name: "related_god")  List<String> relatedGod, @JsonKey(name: "related_tithi")  List<String> relatedTithi, @JsonKey(name: 'related_festival')  List<FestivalModel> festivals, @JsonKey(name: "main_temples")  List<TempleModel> mainTemples, @JsonKey(name: 'familyMembers')  List<FamilyMember> familyMembers, @JsonKey(name: 'temple')  List<TempleModel> temples,  String thumbnail, @JsonKey(name: "godimage")  List<String> godImages)?  $default,) {final _that = this;
switch (_that) {
case _GodModel() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedDays,_that.relatedGod,_that.relatedTithi,_that.festivals,_that.mainTemples,_that.familyMembers,_that.temples,_that.thumbnail,_that.godImages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodModel implements GodModel {
  const _GodModel({@JsonKey(name: "_id") this.id = '', @JsonKey(name: "god_name") this.godName = '', @JsonKey(name: "birth_place") this.birthPlace = '', @JsonKey(name: "father_name") this.fatherName = '', @JsonKey(name: "mother_name") this.motherName = '', @JsonKey(name: "detail") this.detail = '', final  List<String> wife = const [], @JsonKey(name: "fav_food") final  List<String> favFood = const [], @JsonKey(name: "fav_color") final  List<String> favColor = const [], @JsonKey(name: "related_month") final  List<String> relatedMonth = const [], @JsonKey(name: "related_days") final  List<String> relatedDays = const [], @JsonKey(name: "related_god") final  List<String> relatedGod = const [], @JsonKey(name: "related_tithi") final  List<String> relatedTithi = const [], @JsonKey(name: 'related_festival') final  List<FestivalModel> festivals = const <FestivalModel>[], @JsonKey(name: "main_temples") final  List<TempleModel> mainTemples = const [], @JsonKey(name: 'familyMembers') final  List<FamilyMember> familyMembers = const <FamilyMember>[], @JsonKey(name: 'temple') final  List<TempleModel> temples = const <TempleModel>[], this.thumbnail = '', @JsonKey(name: "godimage") final  List<String> godImages = const []}): _wife = wife,_favFood = favFood,_favColor = favColor,_relatedMonth = relatedMonth,_relatedDays = relatedDays,_relatedGod = relatedGod,_relatedTithi = relatedTithi,_festivals = festivals,_mainTemples = mainTemples,_familyMembers = familyMembers,_temples = temples,_godImages = godImages;
  factory _GodModel.fromJson(Map<String, dynamic> json) => _$GodModelFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "god_name") final  String godName;
@override@JsonKey(name: "birth_place") final  String birthPlace;
@override@JsonKey(name: "father_name") final  String fatherName;
@override@JsonKey(name: "mother_name") final  String motherName;
@override@JsonKey(name: "detail") final  String detail;
 final  List<String> _wife;
@override@JsonKey() List<String> get wife {
  if (_wife is EqualUnmodifiableListView) return _wife;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wife);
}

 final  List<String> _favFood;
@override@JsonKey(name: "fav_food") List<String> get favFood {
  if (_favFood is EqualUnmodifiableListView) return _favFood;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favFood);
}

 final  List<String> _favColor;
@override@JsonKey(name: "fav_color") List<String> get favColor {
  if (_favColor is EqualUnmodifiableListView) return _favColor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favColor);
}

 final  List<String> _relatedMonth;
@override@JsonKey(name: "related_month") List<String> get relatedMonth {
  if (_relatedMonth is EqualUnmodifiableListView) return _relatedMonth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedMonth);
}

 final  List<String> _relatedDays;
@override@JsonKey(name: "related_days") List<String> get relatedDays {
  if (_relatedDays is EqualUnmodifiableListView) return _relatedDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedDays);
}

 final  List<String> _relatedGod;
@override@JsonKey(name: "related_god") List<String> get relatedGod {
  if (_relatedGod is EqualUnmodifiableListView) return _relatedGod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGod);
}

 final  List<String> _relatedTithi;
@override@JsonKey(name: "related_tithi") List<String> get relatedTithi {
  if (_relatedTithi is EqualUnmodifiableListView) return _relatedTithi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedTithi);
}

 final  List<FestivalModel> _festivals;
@override@JsonKey(name: 'related_festival') List<FestivalModel> get festivals {
  if (_festivals is EqualUnmodifiableListView) return _festivals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_festivals);
}

 final  List<TempleModel> _mainTemples;
@override@JsonKey(name: "main_temples") List<TempleModel> get mainTemples {
  if (_mainTemples is EqualUnmodifiableListView) return _mainTemples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainTemples);
}

 final  List<FamilyMember> _familyMembers;
@override@JsonKey(name: 'familyMembers') List<FamilyMember> get familyMembers {
  if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_familyMembers);
}

 final  List<TempleModel> _temples;
@override@JsonKey(name: 'temple') List<TempleModel> get temples {
  if (_temples is EqualUnmodifiableListView) return _temples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temples);
}

@override@JsonKey() final  String thumbnail;
 final  List<String> _godImages;
@override@JsonKey(name: "godimage") List<String> get godImages {
  if (_godImages is EqualUnmodifiableListView) return _godImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godImages);
}


/// Create a copy of GodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodModelCopyWith<_GodModel> get copyWith => __$GodModelCopyWithImpl<_GodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other._wife, _wife)&&const DeepCollectionEquality().equals(other._favFood, _favFood)&&const DeepCollectionEquality().equals(other._favColor, _favColor)&&const DeepCollectionEquality().equals(other._relatedMonth, _relatedMonth)&&const DeepCollectionEquality().equals(other._relatedDays, _relatedDays)&&const DeepCollectionEquality().equals(other._relatedGod, _relatedGod)&&const DeepCollectionEquality().equals(other._relatedTithi, _relatedTithi)&&const DeepCollectionEquality().equals(other._festivals, _festivals)&&const DeepCollectionEquality().equals(other._mainTemples, _mainTemples)&&const DeepCollectionEquality().equals(other._familyMembers, _familyMembers)&&const DeepCollectionEquality().equals(other._temples, _temples)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._godImages, _godImages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,godName,birthPlace,fatherName,motherName,detail,const DeepCollectionEquality().hash(_wife),const DeepCollectionEquality().hash(_favFood),const DeepCollectionEquality().hash(_favColor),const DeepCollectionEquality().hash(_relatedMonth),const DeepCollectionEquality().hash(_relatedDays),const DeepCollectionEquality().hash(_relatedGod),const DeepCollectionEquality().hash(_relatedTithi),const DeepCollectionEquality().hash(_festivals),const DeepCollectionEquality().hash(_mainTemples),const DeepCollectionEquality().hash(_familyMembers),const DeepCollectionEquality().hash(_temples),thumbnail,const DeepCollectionEquality().hash(_godImages)]);

@override
String toString() {
  return 'GodModel(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, detail: $detail, wife: $wife, favFood: $favFood, favColor: $favColor, relatedMonth: $relatedMonth, relatedDays: $relatedDays, relatedGod: $relatedGod, relatedTithi: $relatedTithi, festivals: $festivals, mainTemples: $mainTemples, familyMembers: $familyMembers, temples: $temples, thumbnail: $thumbnail, godImages: $godImages)';
}


}

/// @nodoc
abstract mixin class _$GodModelCopyWith<$Res> implements $GodModelCopyWith<$Res> {
  factory _$GodModelCopyWith(_GodModel value, $Res Function(_GodModel) _then) = __$GodModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "god_name") String godName,@JsonKey(name: "birth_place") String birthPlace,@JsonKey(name: "father_name") String fatherName,@JsonKey(name: "mother_name") String motherName,@JsonKey(name: "detail") String detail, List<String> wife,@JsonKey(name: "fav_food") List<String> favFood,@JsonKey(name: "fav_color") List<String> favColor,@JsonKey(name: "related_month") List<String> relatedMonth,@JsonKey(name: "related_days") List<String> relatedDays,@JsonKey(name: "related_god") List<String> relatedGod,@JsonKey(name: "related_tithi") List<String> relatedTithi,@JsonKey(name: 'related_festival') List<FestivalModel> festivals,@JsonKey(name: "main_temples") List<TempleModel> mainTemples,@JsonKey(name: 'familyMembers') List<FamilyMember> familyMembers,@JsonKey(name: 'temple') List<TempleModel> temples, String thumbnail,@JsonKey(name: "godimage") List<String> godImages
});




}
/// @nodoc
class __$GodModelCopyWithImpl<$Res>
    implements _$GodModelCopyWith<$Res> {
  __$GodModelCopyWithImpl(this._self, this._then);

  final _GodModel _self;
  final $Res Function(_GodModel) _then;

/// Create a copy of GodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? detail = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? relatedMonth = null,Object? relatedDays = null,Object? relatedGod = null,Object? relatedTithi = null,Object? festivals = null,Object? mainTemples = null,Object? familyMembers = null,Object? temples = null,Object? thumbnail = null,Object? godImages = null,}) {
  return _then(_GodModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,godName: null == godName ? _self.godName : godName // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,wife: null == wife ? _self._wife : wife // ignore: cast_nullable_to_non_nullable
as List<String>,favFood: null == favFood ? _self._favFood : favFood // ignore: cast_nullable_to_non_nullable
as List<String>,favColor: null == favColor ? _self._favColor : favColor // ignore: cast_nullable_to_non_nullable
as List<String>,relatedMonth: null == relatedMonth ? _self._relatedMonth : relatedMonth // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self._relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedGod: null == relatedGod ? _self._relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self._relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,festivals: null == festivals ? _self._festivals : festivals // ignore: cast_nullable_to_non_nullable
as List<FestivalModel>,mainTemples: null == mainTemples ? _self._mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,familyMembers: null == familyMembers ? _self._familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,temples: null == temples ? _self._temples : temples // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,godImages: null == godImages ? _self._godImages : godImages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$TempleModel {

@JsonKey(name: "_id") String get id;@JsonKey(name: "name") String get templeName; String get location; String get image;
/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleModelCopyWith<TempleModel> get copyWith => _$TempleModelCopyWithImpl<TempleModel>(this as TempleModel, _$identity);

  /// Serializes this TempleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,templeName,location,image);

@override
String toString() {
  return 'TempleModel(id: $id, templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class $TempleModelCopyWith<$Res>  {
  factory $TempleModelCopyWith(TempleModel value, $Res Function(TempleModel) _then) = _$TempleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String templeName, String location, String image
});




}
/// @nodoc
class _$TempleModelCopyWithImpl<$Res>
    implements $TempleModelCopyWith<$Res> {
  _$TempleModelCopyWithImpl(this._self, this._then);

  final TempleModel _self;
  final $Res Function(TempleModel) _then;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleModel].
extension TempleModelPatterns on TempleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleModel value)  $default,){
final _that = this;
switch (_that) {
case _TempleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleModel value)?  $default,){
final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String templeName,  String location,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.id,_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String templeName,  String location,  String image)  $default,) {final _that = this;
switch (_that) {
case _TempleModel():
return $default(_that.id,_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id, @JsonKey(name: "name")  String templeName,  String location,  String image)?  $default,) {final _that = this;
switch (_that) {
case _TempleModel() when $default != null:
return $default(_that.id,_that.templeName,_that.location,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TempleModel implements TempleModel {
  const _TempleModel({@JsonKey(name: "_id") this.id = '', @JsonKey(name: "name") this.templeName = '', this.location = '', this.image = ''});
  factory _TempleModel.fromJson(Map<String, dynamic> json) => _$TempleModelFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey(name: "name") final  String templeName;
@override@JsonKey() final  String location;
@override@JsonKey() final  String image;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleModelCopyWith<_TempleModel> get copyWith => __$TempleModelCopyWithImpl<_TempleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,templeName,location,image);

@override
String toString() {
  return 'TempleModel(id: $id, templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TempleModelCopyWith<$Res> implements $TempleModelCopyWith<$Res> {
  factory _$TempleModelCopyWith(_TempleModel value, $Res Function(_TempleModel) _then) = __$TempleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id,@JsonKey(name: "name") String templeName, String location, String image
});




}
/// @nodoc
class __$TempleModelCopyWithImpl<$Res>
    implements _$TempleModelCopyWith<$Res> {
  __$TempleModelCopyWithImpl(this._self, this._then);

  final _TempleModel _self;
  final $Res Function(_TempleModel) _then;

/// Create a copy of TempleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_TempleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
