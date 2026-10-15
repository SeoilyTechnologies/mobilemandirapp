// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WishlistResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'lang') String get lang;@JsonKey(name: 'count') int get count;@JsonKey(name: 'data') List<WishlistItem> get data;
/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistResponseCopyWith<WishlistResponse> get copyWith => _$WishlistResponseCopyWithImpl<WishlistResponse>(this as WishlistResponse, _$identity);

  /// Serializes this WishlistResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'WishlistResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $WishlistResponseCopyWith<$Res>  {
  factory $WishlistResponseCopyWith(WishlistResponse value, $Res Function(WishlistResponse) _then) = _$WishlistResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'count') int count,@JsonKey(name: 'data') List<WishlistItem> data
});




}
/// @nodoc
class _$WishlistResponseCopyWithImpl<$Res>
    implements $WishlistResponseCopyWith<$Res> {
  _$WishlistResponseCopyWithImpl(this._self, this._then);

  final WishlistResponse _self;
  final $Res Function(WishlistResponse) _then;

/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistResponse].
extension WishlistResponsePatterns on WishlistResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistResponse value)  $default,){
final _that = this;
switch (_that) {
case _WishlistResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'count')  int count, @JsonKey(name: 'data')  List<WishlistItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'count')  int count, @JsonKey(name: 'data')  List<WishlistItem> data)  $default,) {final _that = this;
switch (_that) {
case _WishlistResponse():
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'lang')  String lang, @JsonKey(name: 'count')  int count, @JsonKey(name: 'data')  List<WishlistItem> data)?  $default,) {final _that = this;
switch (_that) {
case _WishlistResponse() when $default != null:
return $default(_that.success,_that.lang,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistResponse implements WishlistResponse {
  const _WishlistResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'lang') this.lang = '', @JsonKey(name: 'count') this.count = 0, @JsonKey(name: 'data') final  List<WishlistItem> data = const []}): _data = data;
  factory _WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'lang') final  String lang;
@override@JsonKey(name: 'count') final  int count;
 final  List<WishlistItem> _data;
@override@JsonKey(name: 'data') List<WishlistItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistResponseCopyWith<_WishlistResponse> get copyWith => __$WishlistResponseCopyWithImpl<_WishlistResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,lang,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'WishlistResponse(success: $success, lang: $lang, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WishlistResponseCopyWith<$Res> implements $WishlistResponseCopyWith<$Res> {
  factory _$WishlistResponseCopyWith(_WishlistResponse value, $Res Function(_WishlistResponse) _then) = __$WishlistResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'lang') String lang,@JsonKey(name: 'count') int count,@JsonKey(name: 'data') List<WishlistItem> data
});




}
/// @nodoc
class __$WishlistResponseCopyWithImpl<$Res>
    implements _$WishlistResponseCopyWith<$Res> {
  __$WishlistResponseCopyWithImpl(this._self, this._then);

  final _WishlistResponse _self;
  final $Res Function(_WishlistResponse) _then;

/// Create a copy of WishlistResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? lang = null,Object? count = null,Object? data = null,}) {
  return _then(_WishlistResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,
  ));
}


}


/// @nodoc
mixin _$WishlistItem {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'type') String get type;@JsonKey(name: 'audioAsset') String get audioAsset;@JsonKey(name: 'audio_duration') String get audioDuration;@JsonKey(name: 'title') String get title;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'main_banner') String get mainBanner;@JsonKey(name: 'lyric_banner_image') String get lyricBannerImage;@JsonKey(name: 'lyrics') List<LyricsModel> get lyrics;@JsonKey(name: 'testLyrics') String get testLyrics;@JsonKey(name: 'youtubeLink') String get youtubeLink;@JsonKey(name: 'god') GodModel? get god;@JsonKey(name: 'isAddedInWishlist') bool get isAddedInWishlist;@JsonKey(name: 'createdAt') String get createdAt;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&(identical(other.lyricBannerImage, lyricBannerImage) || other.lyricBannerImage == lyricBannerImage)&&const DeepCollectionEquality().equals(other.lyrics, lyrics)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,audioAsset,audioDuration,title,thumbnail,mainBanner,lyricBannerImage,const DeepCollectionEquality().hash(lyrics),testLyrics,youtubeLink,god,isAddedInWishlist,createdAt);

@override
String toString() {
  return 'WishlistItem(id: $id, type: $type, audioAsset: $audioAsset, audioDuration: $audioDuration, title: $title, thumbnail: $thumbnail, mainBanner: $mainBanner, lyricBannerImage: $lyricBannerImage, lyrics: $lyrics, testLyrics: $testLyrics, youtubeLink: $youtubeLink, god: $god, isAddedInWishlist: $isAddedInWishlist, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'type') String type,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'audio_duration') String audioDuration,@JsonKey(name: 'title') String title,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_banner') String mainBanner,@JsonKey(name: 'lyric_banner_image') String lyricBannerImage,@JsonKey(name: 'lyrics') List<LyricsModel> lyrics,@JsonKey(name: 'testLyrics') String testLyrics,@JsonKey(name: 'youtubeLink') String youtubeLink,@JsonKey(name: 'god') GodModel? god,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'createdAt') String createdAt
});


$GodModelCopyWith<$Res>? get god;

}
/// @nodoc
class _$WishlistItemCopyWithImpl<$Res>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._self, this._then);

  final WishlistItem _self;
  final $Res Function(WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? audioAsset = null,Object? audioDuration = null,Object? title = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyricBannerImage = null,Object? lyrics = null,Object? testLyrics = null,Object? youtubeLink = null,Object? god = freezed,Object? isAddedInWishlist = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyricBannerImage: null == lyricBannerImage ? _self.lyricBannerImage : lyricBannerImage // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self.lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<LyricsModel>,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,god: freezed == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel?,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res>? get god {
    if (_self.god == null) {
    return null;
  }

  return $GodModelCopyWith<$Res>(_self.god!, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// Adds pattern-matching-related methods to [WishlistItem].
extension WishlistItemPatterns on WishlistItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistItem value)  $default,){
final _that = this;
switch (_that) {
case _WishlistItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistItem value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'title')  String title, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<LyricsModel> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel? god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'createdAt')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.type,_that.audioAsset,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'title')  String title, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<LyricsModel> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel? god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'createdAt')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _WishlistItem():
return $default(_that.id,_that.type,_that.audioAsset,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'type')  String type, @JsonKey(name: 'audioAsset')  String audioAsset, @JsonKey(name: 'audio_duration')  String audioDuration, @JsonKey(name: 'title')  String title, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'main_banner')  String mainBanner, @JsonKey(name: 'lyric_banner_image')  String lyricBannerImage, @JsonKey(name: 'lyrics')  List<LyricsModel> lyrics, @JsonKey(name: 'testLyrics')  String testLyrics, @JsonKey(name: 'youtubeLink')  String youtubeLink, @JsonKey(name: 'god')  GodModel? god, @JsonKey(name: 'isAddedInWishlist')  bool isAddedInWishlist, @JsonKey(name: 'createdAt')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.type,_that.audioAsset,_that.audioDuration,_that.title,_that.thumbnail,_that.mainBanner,_that.lyricBannerImage,_that.lyrics,_that.testLyrics,_that.youtubeLink,_that.god,_that.isAddedInWishlist,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistItem implements WishlistItem {
  const _WishlistItem({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'audioAsset') this.audioAsset = '', @JsonKey(name: 'audio_duration') this.audioDuration = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'main_banner') this.mainBanner = '', @JsonKey(name: 'lyric_banner_image') this.lyricBannerImage = '', @JsonKey(name: 'lyrics') final  List<LyricsModel> lyrics = const [], @JsonKey(name: 'testLyrics') this.testLyrics = '', @JsonKey(name: 'youtubeLink') this.youtubeLink = '', @JsonKey(name: 'god') this.god, @JsonKey(name: 'isAddedInWishlist') this.isAddedInWishlist = false, @JsonKey(name: 'createdAt') this.createdAt = ''}): _lyrics = lyrics;
  factory _WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'audioAsset') final  String audioAsset;
@override@JsonKey(name: 'audio_duration') final  String audioDuration;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;
@override@JsonKey(name: 'main_banner') final  String mainBanner;
@override@JsonKey(name: 'lyric_banner_image') final  String lyricBannerImage;
 final  List<LyricsModel> _lyrics;
@override@JsonKey(name: 'lyrics') List<LyricsModel> get lyrics {
  if (_lyrics is EqualUnmodifiableListView) return _lyrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lyrics);
}

@override@JsonKey(name: 'testLyrics') final  String testLyrics;
@override@JsonKey(name: 'youtubeLink') final  String youtubeLink;
@override@JsonKey(name: 'god') final  GodModel? god;
@override@JsonKey(name: 'isAddedInWishlist') final  bool isAddedInWishlist;
@override@JsonKey(name: 'createdAt') final  String createdAt;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemCopyWith<_WishlistItem> get copyWith => __$WishlistItemCopyWithImpl<_WishlistItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.audioAsset, audioAsset) || other.audioAsset == audioAsset)&&(identical(other.audioDuration, audioDuration) || other.audioDuration == audioDuration)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.mainBanner, mainBanner) || other.mainBanner == mainBanner)&&(identical(other.lyricBannerImage, lyricBannerImage) || other.lyricBannerImage == lyricBannerImage)&&const DeepCollectionEquality().equals(other._lyrics, _lyrics)&&(identical(other.testLyrics, testLyrics) || other.testLyrics == testLyrics)&&(identical(other.youtubeLink, youtubeLink) || other.youtubeLink == youtubeLink)&&(identical(other.god, god) || other.god == god)&&(identical(other.isAddedInWishlist, isAddedInWishlist) || other.isAddedInWishlist == isAddedInWishlist)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,audioAsset,audioDuration,title,thumbnail,mainBanner,lyricBannerImage,const DeepCollectionEquality().hash(_lyrics),testLyrics,youtubeLink,god,isAddedInWishlist,createdAt);

@override
String toString() {
  return 'WishlistItem(id: $id, type: $type, audioAsset: $audioAsset, audioDuration: $audioDuration, title: $title, thumbnail: $thumbnail, mainBanner: $mainBanner, lyricBannerImage: $lyricBannerImage, lyrics: $lyrics, testLyrics: $testLyrics, youtubeLink: $youtubeLink, god: $god, isAddedInWishlist: $isAddedInWishlist, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WishlistItemCopyWith(_WishlistItem value, $Res Function(_WishlistItem) _then) = __$WishlistItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'type') String type,@JsonKey(name: 'audioAsset') String audioAsset,@JsonKey(name: 'audio_duration') String audioDuration,@JsonKey(name: 'title') String title,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'main_banner') String mainBanner,@JsonKey(name: 'lyric_banner_image') String lyricBannerImage,@JsonKey(name: 'lyrics') List<LyricsModel> lyrics,@JsonKey(name: 'testLyrics') String testLyrics,@JsonKey(name: 'youtubeLink') String youtubeLink,@JsonKey(name: 'god') GodModel? god,@JsonKey(name: 'isAddedInWishlist') bool isAddedInWishlist,@JsonKey(name: 'createdAt') String createdAt
});


@override $GodModelCopyWith<$Res>? get god;

}
/// @nodoc
class __$WishlistItemCopyWithImpl<$Res>
    implements _$WishlistItemCopyWith<$Res> {
  __$WishlistItemCopyWithImpl(this._self, this._then);

  final _WishlistItem _self;
  final $Res Function(_WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? audioAsset = null,Object? audioDuration = null,Object? title = null,Object? thumbnail = null,Object? mainBanner = null,Object? lyricBannerImage = null,Object? lyrics = null,Object? testLyrics = null,Object? youtubeLink = null,Object? god = freezed,Object? isAddedInWishlist = null,Object? createdAt = null,}) {
  return _then(_WishlistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,audioAsset: null == audioAsset ? _self.audioAsset : audioAsset // ignore: cast_nullable_to_non_nullable
as String,audioDuration: null == audioDuration ? _self.audioDuration : audioDuration // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,mainBanner: null == mainBanner ? _self.mainBanner : mainBanner // ignore: cast_nullable_to_non_nullable
as String,lyricBannerImage: null == lyricBannerImage ? _self.lyricBannerImage : lyricBannerImage // ignore: cast_nullable_to_non_nullable
as String,lyrics: null == lyrics ? _self._lyrics : lyrics // ignore: cast_nullable_to_non_nullable
as List<LyricsModel>,testLyrics: null == testLyrics ? _self.testLyrics : testLyrics // ignore: cast_nullable_to_non_nullable
as String,youtubeLink: null == youtubeLink ? _self.youtubeLink : youtubeLink // ignore: cast_nullable_to_non_nullable
as String,god: freezed == god ? _self.god : god // ignore: cast_nullable_to_non_nullable
as GodModel?,isAddedInWishlist: null == isAddedInWishlist ? _self.isAddedInWishlist : isAddedInWishlist // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GodModelCopyWith<$Res>? get god {
    if (_self.god == null) {
    return null;
  }

  return $GodModelCopyWith<$Res>(_self.god!, (value) {
    return _then(_self.copyWith(god: value));
  });
}
}


/// @nodoc
mixin _$Lyrics {

@JsonKey(name: 'start') Time? get start;@JsonKey(name: 'end') Time? get end;@JsonKey(name: 'text') String get text;
/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LyricsCopyWith<Lyrics> get copyWith => _$LyricsCopyWithImpl<Lyrics>(this as Lyrics, _$identity);

  /// Serializes this Lyrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lyrics&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,text);

@override
String toString() {
  return 'Lyrics(start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class $LyricsCopyWith<$Res>  {
  factory $LyricsCopyWith(Lyrics value, $Res Function(Lyrics) _then) = _$LyricsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'start') Time? start,@JsonKey(name: 'end') Time? end,@JsonKey(name: 'text') String text
});


$TimeCopyWith<$Res>? get start;$TimeCopyWith<$Res>? get end;

}
/// @nodoc
class _$LyricsCopyWithImpl<$Res>
    implements $LyricsCopyWith<$Res> {
  _$LyricsCopyWithImpl(this._self, this._then);

  final Lyrics _self;
  final $Res Function(Lyrics) _then;

/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,Object? text = null,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Time?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as Time?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeCopyWith<$Res>? get start {
    if (_self.start == null) {
    return null;
  }

  return $TimeCopyWith<$Res>(_self.start!, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeCopyWith<$Res>? get end {
    if (_self.end == null) {
    return null;
  }

  return $TimeCopyWith<$Res>(_self.end!, (value) {
    return _then(_self.copyWith(end: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lyrics].
extension LyricsPatterns on Lyrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lyrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lyrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lyrics value)  $default,){
final _that = this;
switch (_that) {
case _Lyrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lyrics value)?  $default,){
final _that = this;
switch (_that) {
case _Lyrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'start')  Time? start, @JsonKey(name: 'end')  Time? end, @JsonKey(name: 'text')  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lyrics() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'start')  Time? start, @JsonKey(name: 'end')  Time? end, @JsonKey(name: 'text')  String text)  $default,) {final _that = this;
switch (_that) {
case _Lyrics():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'start')  Time? start, @JsonKey(name: 'end')  Time? end, @JsonKey(name: 'text')  String text)?  $default,) {final _that = this;
switch (_that) {
case _Lyrics() when $default != null:
return $default(_that.start,_that.end,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lyrics implements Lyrics {
  const _Lyrics({@JsonKey(name: 'start') this.start, @JsonKey(name: 'end') this.end, @JsonKey(name: 'text') this.text = ''});
  factory _Lyrics.fromJson(Map<String, dynamic> json) => _$LyricsFromJson(json);

@override@JsonKey(name: 'start') final  Time? start;
@override@JsonKey(name: 'end') final  Time? end;
@override@JsonKey(name: 'text') final  String text;

/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LyricsCopyWith<_Lyrics> get copyWith => __$LyricsCopyWithImpl<_Lyrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LyricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lyrics&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,text);

@override
String toString() {
  return 'Lyrics(start: $start, end: $end, text: $text)';
}


}

/// @nodoc
abstract mixin class _$LyricsCopyWith<$Res> implements $LyricsCopyWith<$Res> {
  factory _$LyricsCopyWith(_Lyrics value, $Res Function(_Lyrics) _then) = __$LyricsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'start') Time? start,@JsonKey(name: 'end') Time? end,@JsonKey(name: 'text') String text
});


@override $TimeCopyWith<$Res>? get start;@override $TimeCopyWith<$Res>? get end;

}
/// @nodoc
class __$LyricsCopyWithImpl<$Res>
    implements _$LyricsCopyWith<$Res> {
  __$LyricsCopyWithImpl(this._self, this._then);

  final _Lyrics _self;
  final $Res Function(_Lyrics) _then;

/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,Object? text = null,}) {
  return _then(_Lyrics(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Time?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as Time?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeCopyWith<$Res>? get start {
    if (_self.start == null) {
    return null;
  }

  return $TimeCopyWith<$Res>(_self.start!, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of Lyrics
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeCopyWith<$Res>? get end {
    if (_self.end == null) {
    return null;
  }

  return $TimeCopyWith<$Res>(_self.end!, (value) {
    return _then(_self.copyWith(end: value));
  });
}
}


/// @nodoc
mixin _$Time {

@JsonKey(name: 'seconds') int get seconds;@JsonKey(name: 'milliseconds') int get milliseconds;
/// Create a copy of Time
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeCopyWith<Time> get copyWith => _$TimeCopyWithImpl<Time>(this as Time, _$identity);

  /// Serializes this Time to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Time&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.milliseconds, milliseconds) || other.milliseconds == milliseconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seconds,milliseconds);

@override
String toString() {
  return 'Time(seconds: $seconds, milliseconds: $milliseconds)';
}


}

/// @nodoc
abstract mixin class $TimeCopyWith<$Res>  {
  factory $TimeCopyWith(Time value, $Res Function(Time) _then) = _$TimeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'seconds') int seconds,@JsonKey(name: 'milliseconds') int milliseconds
});




}
/// @nodoc
class _$TimeCopyWithImpl<$Res>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._self, this._then);

  final Time _self;
  final $Res Function(Time) _then;

/// Create a copy of Time
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seconds = null,Object? milliseconds = null,}) {
  return _then(_self.copyWith(
seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as int,milliseconds: null == milliseconds ? _self.milliseconds : milliseconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Time].
extension TimePatterns on Time {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Time value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Time() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Time value)  $default,){
final _that = this;
switch (_that) {
case _Time():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Time value)?  $default,){
final _that = this;
switch (_that) {
case _Time() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'seconds')  int seconds, @JsonKey(name: 'milliseconds')  int milliseconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Time() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'seconds')  int seconds, @JsonKey(name: 'milliseconds')  int milliseconds)  $default,) {final _that = this;
switch (_that) {
case _Time():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'seconds')  int seconds, @JsonKey(name: 'milliseconds')  int milliseconds)?  $default,) {final _that = this;
switch (_that) {
case _Time() when $default != null:
return $default(_that.seconds,_that.milliseconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Time implements Time {
  const _Time({@JsonKey(name: 'seconds') this.seconds = 0, @JsonKey(name: 'milliseconds') this.milliseconds = 0});
  factory _Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

@override@JsonKey(name: 'seconds') final  int seconds;
@override@JsonKey(name: 'milliseconds') final  int milliseconds;

/// Create a copy of Time
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeCopyWith<_Time> get copyWith => __$TimeCopyWithImpl<_Time>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Time&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.milliseconds, milliseconds) || other.milliseconds == milliseconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seconds,milliseconds);

@override
String toString() {
  return 'Time(seconds: $seconds, milliseconds: $milliseconds)';
}


}

/// @nodoc
abstract mixin class _$TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$TimeCopyWith(_Time value, $Res Function(_Time) _then) = __$TimeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'seconds') int seconds,@JsonKey(name: 'milliseconds') int milliseconds
});




}
/// @nodoc
class __$TimeCopyWithImpl<$Res>
    implements _$TimeCopyWith<$Res> {
  __$TimeCopyWithImpl(this._self, this._then);

  final _Time _self;
  final $Res Function(_Time) _then;

/// Create a copy of Time
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seconds = null,Object? milliseconds = null,}) {
  return _then(_Time(
seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as int,milliseconds: null == milliseconds ? _self.milliseconds : milliseconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$God {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'god_name') String get godName;@JsonKey(name: 'birth_place') String get birthPlace;@JsonKey(name: 'father_name') String get fatherName;@JsonKey(name: 'mother_name') String get motherName;@JsonKey(name: 'detail') String get detail;@JsonKey(name: 'wife') List<String> get wife;@JsonKey(name: 'fav_food') List<String> get favFood;@JsonKey(name: 'fav_color') List<String> get favColor;@JsonKey(name: 'related_month') List<String> get relatedMonth;@JsonKey(name: 'related_god') List<String> get relatedGod;@JsonKey(name: 'related_tithi') List<String> get relatedTithi;@JsonKey(name: 'related_days') List<String> get relatedDays;@JsonKey(name: 'related_festival') List<String> get relatedFestival;@JsonKey(name: 'main_temples') List<Temple> get mainTemples;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'godimage') List<String> get godimage;
/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodCopyWith<God> get copyWith => _$GodCopyWithImpl<God>(this as God, _$identity);

  /// Serializes this God to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is God&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other.wife, wife)&&const DeepCollectionEquality().equals(other.favFood, favFood)&&const DeepCollectionEquality().equals(other.favColor, favColor)&&const DeepCollectionEquality().equals(other.relatedMonth, relatedMonth)&&const DeepCollectionEquality().equals(other.relatedGod, relatedGod)&&const DeepCollectionEquality().equals(other.relatedTithi, relatedTithi)&&const DeepCollectionEquality().equals(other.relatedDays, relatedDays)&&const DeepCollectionEquality().equals(other.relatedFestival, relatedFestival)&&const DeepCollectionEquality().equals(other.mainTemples, mainTemples)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.godimage, godimage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,birthPlace,fatherName,motherName,detail,const DeepCollectionEquality().hash(wife),const DeepCollectionEquality().hash(favFood),const DeepCollectionEquality().hash(favColor),const DeepCollectionEquality().hash(relatedMonth),const DeepCollectionEquality().hash(relatedGod),const DeepCollectionEquality().hash(relatedTithi),const DeepCollectionEquality().hash(relatedDays),const DeepCollectionEquality().hash(relatedFestival),const DeepCollectionEquality().hash(mainTemples),thumbnail,const DeepCollectionEquality().hash(godimage));

@override
String toString() {
  return 'God(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, detail: $detail, wife: $wife, favFood: $favFood, favColor: $favColor, relatedMonth: $relatedMonth, relatedGod: $relatedGod, relatedTithi: $relatedTithi, relatedDays: $relatedDays, relatedFestival: $relatedFestival, mainTemples: $mainTemples, thumbnail: $thumbnail, godimage: $godimage)';
}


}

/// @nodoc
abstract mixin class $GodCopyWith<$Res>  {
  factory $GodCopyWith(God value, $Res Function(God) _then) = _$GodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> favFood,@JsonKey(name: 'fav_color') List<String> favColor,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_god') List<String> relatedGod,@JsonKey(name: 'related_tithi') List<String> relatedTithi,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'related_festival') List<String> relatedFestival,@JsonKey(name: 'main_temples') List<Temple> mainTemples,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'godimage') List<String> godimage
});




}
/// @nodoc
class _$GodCopyWithImpl<$Res>
    implements $GodCopyWith<$Res> {
  _$GodCopyWithImpl(this._self, this._then);

  final God _self;
  final $Res Function(God) _then;

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? detail = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? relatedMonth = null,Object? relatedGod = null,Object? relatedTithi = null,Object? relatedDays = null,Object? relatedFestival = null,Object? mainTemples = null,Object? thumbnail = null,Object? godimage = null,}) {
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
as List<String>,relatedGod: null == relatedGod ? _self.relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self.relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self.relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedFestival: null == relatedFestival ? _self.relatedFestival : relatedFestival // ignore: cast_nullable_to_non_nullable
as List<String>,mainTemples: null == mainTemples ? _self.mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<Temple>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self.godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [God].
extension GodPatterns on God {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _God value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _God() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _God value)  $default,){
final _that = this;
switch (_that) {
case _God():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _God value)?  $default,){
final _that = this;
switch (_that) {
case _God() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'main_temples')  List<Temple> mainTemples, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'godimage')  List<String> godimage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _God() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.mainTemples,_that.thumbnail,_that.godimage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'main_temples')  List<Temple> mainTemples, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'godimage')  List<String> godimage)  $default,) {final _that = this;
switch (_that) {
case _God():
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.mainTemples,_that.thumbnail,_that.godimage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'god_name')  String godName, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'detail')  String detail, @JsonKey(name: 'wife')  List<String> wife, @JsonKey(name: 'fav_food')  List<String> favFood, @JsonKey(name: 'fav_color')  List<String> favColor, @JsonKey(name: 'related_month')  List<String> relatedMonth, @JsonKey(name: 'related_god')  List<String> relatedGod, @JsonKey(name: 'related_tithi')  List<String> relatedTithi, @JsonKey(name: 'related_days')  List<String> relatedDays, @JsonKey(name: 'related_festival')  List<String> relatedFestival, @JsonKey(name: 'main_temples')  List<Temple> mainTemples, @JsonKey(name: 'thumbnail')  String thumbnail, @JsonKey(name: 'godimage')  List<String> godimage)?  $default,) {final _that = this;
switch (_that) {
case _God() when $default != null:
return $default(_that.id,_that.godName,_that.birthPlace,_that.fatherName,_that.motherName,_that.detail,_that.wife,_that.favFood,_that.favColor,_that.relatedMonth,_that.relatedGod,_that.relatedTithi,_that.relatedDays,_that.relatedFestival,_that.mainTemples,_that.thumbnail,_that.godimage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _God implements God {
  const _God({@JsonKey(name: '_id') this.id = '', @JsonKey(name: 'god_name') this.godName = '', @JsonKey(name: 'birth_place') this.birthPlace = '', @JsonKey(name: 'father_name') this.fatherName = '', @JsonKey(name: 'mother_name') this.motherName = '', @JsonKey(name: 'detail') this.detail = '', @JsonKey(name: 'wife') final  List<String> wife = const [], @JsonKey(name: 'fav_food') final  List<String> favFood = const [], @JsonKey(name: 'fav_color') final  List<String> favColor = const [], @JsonKey(name: 'related_month') final  List<String> relatedMonth = const [], @JsonKey(name: 'related_god') final  List<String> relatedGod = const [], @JsonKey(name: 'related_tithi') final  List<String> relatedTithi = const [], @JsonKey(name: 'related_days') final  List<String> relatedDays = const [], @JsonKey(name: 'related_festival') final  List<String> relatedFestival = const [], @JsonKey(name: 'main_temples') final  List<Temple> mainTemples = const [], @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'godimage') final  List<String> godimage = const []}): _wife = wife,_favFood = favFood,_favColor = favColor,_relatedMonth = relatedMonth,_relatedGod = relatedGod,_relatedTithi = relatedTithi,_relatedDays = relatedDays,_relatedFestival = relatedFestival,_mainTemples = mainTemples,_godimage = godimage;
  factory _God.fromJson(Map<String, dynamic> json) => _$GodFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'god_name') final  String godName;
@override@JsonKey(name: 'birth_place') final  String birthPlace;
@override@JsonKey(name: 'father_name') final  String fatherName;
@override@JsonKey(name: 'mother_name') final  String motherName;
@override@JsonKey(name: 'detail') final  String detail;
 final  List<String> _wife;
@override@JsonKey(name: 'wife') List<String> get wife {
  if (_wife is EqualUnmodifiableListView) return _wife;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wife);
}

 final  List<String> _favFood;
@override@JsonKey(name: 'fav_food') List<String> get favFood {
  if (_favFood is EqualUnmodifiableListView) return _favFood;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favFood);
}

 final  List<String> _favColor;
@override@JsonKey(name: 'fav_color') List<String> get favColor {
  if (_favColor is EqualUnmodifiableListView) return _favColor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favColor);
}

 final  List<String> _relatedMonth;
@override@JsonKey(name: 'related_month') List<String> get relatedMonth {
  if (_relatedMonth is EqualUnmodifiableListView) return _relatedMonth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedMonth);
}

 final  List<String> _relatedGod;
@override@JsonKey(name: 'related_god') List<String> get relatedGod {
  if (_relatedGod is EqualUnmodifiableListView) return _relatedGod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedGod);
}

 final  List<String> _relatedTithi;
@override@JsonKey(name: 'related_tithi') List<String> get relatedTithi {
  if (_relatedTithi is EqualUnmodifiableListView) return _relatedTithi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedTithi);
}

 final  List<String> _relatedDays;
@override@JsonKey(name: 'related_days') List<String> get relatedDays {
  if (_relatedDays is EqualUnmodifiableListView) return _relatedDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedDays);
}

 final  List<String> _relatedFestival;
@override@JsonKey(name: 'related_festival') List<String> get relatedFestival {
  if (_relatedFestival is EqualUnmodifiableListView) return _relatedFestival;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedFestival);
}

 final  List<Temple> _mainTemples;
@override@JsonKey(name: 'main_temples') List<Temple> get mainTemples {
  if (_mainTemples is EqualUnmodifiableListView) return _mainTemples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainTemples);
}

@override@JsonKey(name: 'thumbnail') final  String thumbnail;
 final  List<String> _godimage;
@override@JsonKey(name: 'godimage') List<String> get godimage {
  if (_godimage is EqualUnmodifiableListView) return _godimage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godimage);
}


/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodCopyWith<_God> get copyWith => __$GodCopyWithImpl<_God>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _God&&(identical(other.id, id) || other.id == id)&&(identical(other.godName, godName) || other.godName == godName)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other._wife, _wife)&&const DeepCollectionEquality().equals(other._favFood, _favFood)&&const DeepCollectionEquality().equals(other._favColor, _favColor)&&const DeepCollectionEquality().equals(other._relatedMonth, _relatedMonth)&&const DeepCollectionEquality().equals(other._relatedGod, _relatedGod)&&const DeepCollectionEquality().equals(other._relatedTithi, _relatedTithi)&&const DeepCollectionEquality().equals(other._relatedDays, _relatedDays)&&const DeepCollectionEquality().equals(other._relatedFestival, _relatedFestival)&&const DeepCollectionEquality().equals(other._mainTemples, _mainTemples)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._godimage, _godimage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,godName,birthPlace,fatherName,motherName,detail,const DeepCollectionEquality().hash(_wife),const DeepCollectionEquality().hash(_favFood),const DeepCollectionEquality().hash(_favColor),const DeepCollectionEquality().hash(_relatedMonth),const DeepCollectionEquality().hash(_relatedGod),const DeepCollectionEquality().hash(_relatedTithi),const DeepCollectionEquality().hash(_relatedDays),const DeepCollectionEquality().hash(_relatedFestival),const DeepCollectionEquality().hash(_mainTemples),thumbnail,const DeepCollectionEquality().hash(_godimage));

@override
String toString() {
  return 'God(id: $id, godName: $godName, birthPlace: $birthPlace, fatherName: $fatherName, motherName: $motherName, detail: $detail, wife: $wife, favFood: $favFood, favColor: $favColor, relatedMonth: $relatedMonth, relatedGod: $relatedGod, relatedTithi: $relatedTithi, relatedDays: $relatedDays, relatedFestival: $relatedFestival, mainTemples: $mainTemples, thumbnail: $thumbnail, godimage: $godimage)';
}


}

/// @nodoc
abstract mixin class _$GodCopyWith<$Res> implements $GodCopyWith<$Res> {
  factory _$GodCopyWith(_God value, $Res Function(_God) _then) = __$GodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'god_name') String godName,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'detail') String detail,@JsonKey(name: 'wife') List<String> wife,@JsonKey(name: 'fav_food') List<String> favFood,@JsonKey(name: 'fav_color') List<String> favColor,@JsonKey(name: 'related_month') List<String> relatedMonth,@JsonKey(name: 'related_god') List<String> relatedGod,@JsonKey(name: 'related_tithi') List<String> relatedTithi,@JsonKey(name: 'related_days') List<String> relatedDays,@JsonKey(name: 'related_festival') List<String> relatedFestival,@JsonKey(name: 'main_temples') List<Temple> mainTemples,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'godimage') List<String> godimage
});




}
/// @nodoc
class __$GodCopyWithImpl<$Res>
    implements _$GodCopyWith<$Res> {
  __$GodCopyWithImpl(this._self, this._then);

  final _God _self;
  final $Res Function(_God) _then;

/// Create a copy of God
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? godName = null,Object? birthPlace = null,Object? fatherName = null,Object? motherName = null,Object? detail = null,Object? wife = null,Object? favFood = null,Object? favColor = null,Object? relatedMonth = null,Object? relatedGod = null,Object? relatedTithi = null,Object? relatedDays = null,Object? relatedFestival = null,Object? mainTemples = null,Object? thumbnail = null,Object? godimage = null,}) {
  return _then(_God(
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
as List<String>,relatedGod: null == relatedGod ? _self._relatedGod : relatedGod // ignore: cast_nullable_to_non_nullable
as List<String>,relatedTithi: null == relatedTithi ? _self._relatedTithi : relatedTithi // ignore: cast_nullable_to_non_nullable
as List<String>,relatedDays: null == relatedDays ? _self._relatedDays : relatedDays // ignore: cast_nullable_to_non_nullable
as List<String>,relatedFestival: null == relatedFestival ? _self._relatedFestival : relatedFestival // ignore: cast_nullable_to_non_nullable
as List<String>,mainTemples: null == mainTemples ? _self._mainTemples : mainTemples // ignore: cast_nullable_to_non_nullable
as List<Temple>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,godimage: null == godimage ? _self._godimage : godimage // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Temple {

@JsonKey(name: 'temple_name') String get templeName;@JsonKey(name: 'location') String get location;@JsonKey(name: 'image') String get image;
/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleCopyWith<Temple> get copyWith => _$TempleCopyWithImpl<Temple>(this as Temple, _$identity);

  /// Serializes this Temple to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Temple&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,location,image);

@override
String toString() {
  return 'Temple(templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class $TempleCopyWith<$Res>  {
  factory $TempleCopyWith(Temple value, $Res Function(Temple) _then) = _$TempleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temple_name') String templeName,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class _$TempleCopyWithImpl<$Res>
    implements $TempleCopyWith<$Res> {
  _$TempleCopyWithImpl(this._self, this._then);

  final Temple _self;
  final $Res Function(Temple) _then;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_self.copyWith(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Temple].
extension TemplePatterns on Temple {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Temple value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Temple() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Temple value)  $default,){
final _that = this;
switch (_that) {
case _Temple():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Temple value)?  $default,){
final _that = this;
switch (_that) {
case _Temple() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Temple() when $default != null:
return $default(_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)  $default,) {final _that = this;
switch (_that) {
case _Temple():
return $default(_that.templeName,_that.location,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temple_name')  String templeName, @JsonKey(name: 'location')  String location, @JsonKey(name: 'image')  String image)?  $default,) {final _that = this;
switch (_that) {
case _Temple() when $default != null:
return $default(_that.templeName,_that.location,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Temple implements Temple {
  const _Temple({@JsonKey(name: 'temple_name') this.templeName = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'image') this.image = ''});
  factory _Temple.fromJson(Map<String, dynamic> json) => _$TempleFromJson(json);

@override@JsonKey(name: 'temple_name') final  String templeName;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'image') final  String image;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleCopyWith<_Temple> get copyWith => __$TempleCopyWithImpl<_Temple>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TempleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Temple&&(identical(other.templeName, templeName) || other.templeName == templeName)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templeName,location,image);

@override
String toString() {
  return 'Temple(templeName: $templeName, location: $location, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TempleCopyWith<$Res> implements $TempleCopyWith<$Res> {
  factory _$TempleCopyWith(_Temple value, $Res Function(_Temple) _then) = __$TempleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temple_name') String templeName,@JsonKey(name: 'location') String location,@JsonKey(name: 'image') String image
});




}
/// @nodoc
class __$TempleCopyWithImpl<$Res>
    implements _$TempleCopyWith<$Res> {
  __$TempleCopyWithImpl(this._self, this._then);

  final _Temple _self;
  final $Res Function(_Temple) _then;

/// Create a copy of Temple
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templeName = null,Object? location = null,Object? image = null,}) {
  return _then(_Temple(
templeName: null == templeName ? _self.templeName : templeName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
