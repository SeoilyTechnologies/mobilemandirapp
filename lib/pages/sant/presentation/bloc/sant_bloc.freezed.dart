// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SantEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SantEvent()';
}


}

/// @nodoc
class $SantEventCopyWith<$Res>  {
$SantEventCopyWith(SantEvent _, $Res Function(SantEvent) __);
}


/// Adds pattern-matching-related methods to [SantEvent].
extension SantEventPatterns on SantEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetAllSantList value)?  getAllSantList,TResult Function( _GetAllPopularSantList value)?  getRelatedAllSantList,TResult Function( _LetterSelected value)?  letterSelected,TResult Function( _FilterByAlphabet value)?  filterByAlphabet,TResult Function( _FilterByName value)?  filterByName,TResult Function( _GetSantDetailById value)?  getSantDetailById,TResult Function( _ToggleWishlist value)?  toggleWishlist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAllSantList() when getAllSantList != null:
return getAllSantList(_that);case _GetAllPopularSantList() when getRelatedAllSantList != null:
return getRelatedAllSantList(_that);case _LetterSelected() when letterSelected != null:
return letterSelected(_that);case _FilterByAlphabet() when filterByAlphabet != null:
return filterByAlphabet(_that);case _FilterByName() when filterByName != null:
return filterByName(_that);case _GetSantDetailById() when getSantDetailById != null:
return getSantDetailById(_that);case _ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetAllSantList value)  getAllSantList,required TResult Function( _GetAllPopularSantList value)  getRelatedAllSantList,required TResult Function( _LetterSelected value)  letterSelected,required TResult Function( _FilterByAlphabet value)  filterByAlphabet,required TResult Function( _FilterByName value)  filterByName,required TResult Function( _GetSantDetailById value)  getSantDetailById,required TResult Function( _ToggleWishlist value)  toggleWishlist,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetAllSantList():
return getAllSantList(_that);case _GetAllPopularSantList():
return getRelatedAllSantList(_that);case _LetterSelected():
return letterSelected(_that);case _FilterByAlphabet():
return filterByAlphabet(_that);case _FilterByName():
return filterByName(_that);case _GetSantDetailById():
return getSantDetailById(_that);case _ToggleWishlist():
return toggleWishlist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetAllSantList value)?  getAllSantList,TResult? Function( _GetAllPopularSantList value)?  getRelatedAllSantList,TResult? Function( _LetterSelected value)?  letterSelected,TResult? Function( _FilterByAlphabet value)?  filterByAlphabet,TResult? Function( _FilterByName value)?  filterByName,TResult? Function( _GetSantDetailById value)?  getSantDetailById,TResult? Function( _ToggleWishlist value)?  toggleWishlist,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAllSantList() when getAllSantList != null:
return getAllSantList(_that);case _GetAllPopularSantList() when getRelatedAllSantList != null:
return getRelatedAllSantList(_that);case _LetterSelected() when letterSelected != null:
return letterSelected(_that);case _FilterByAlphabet() when filterByAlphabet != null:
return filterByAlphabet(_that);case _FilterByName() when filterByName != null:
return filterByName(_that);case _GetSantDetailById() when getSantDetailById != null:
return getSantDetailById(_that);case _ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getAllSantList,TResult Function( String currentSantId)?  getRelatedAllSantList,TResult Function( String letter)?  letterSelected,TResult Function( String alphabet)?  filterByAlphabet,TResult Function( String name)?  filterByName,TResult Function( String santId)?  getSantDetailById,TResult Function( String itemId,  String itemModel)?  toggleWishlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAllSantList() when getAllSantList != null:
return getAllSantList();case _GetAllPopularSantList() when getRelatedAllSantList != null:
return getRelatedAllSantList(_that.currentSantId);case _LetterSelected() when letterSelected != null:
return letterSelected(_that.letter);case _FilterByAlphabet() when filterByAlphabet != null:
return filterByAlphabet(_that.alphabet);case _FilterByName() when filterByName != null:
return filterByName(_that.name);case _GetSantDetailById() when getSantDetailById != null:
return getSantDetailById(_that.santId);case _ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getAllSantList,required TResult Function( String currentSantId)  getRelatedAllSantList,required TResult Function( String letter)  letterSelected,required TResult Function( String alphabet)  filterByAlphabet,required TResult Function( String name)  filterByName,required TResult Function( String santId)  getSantDetailById,required TResult Function( String itemId,  String itemModel)  toggleWishlist,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetAllSantList():
return getAllSantList();case _GetAllPopularSantList():
return getRelatedAllSantList(_that.currentSantId);case _LetterSelected():
return letterSelected(_that.letter);case _FilterByAlphabet():
return filterByAlphabet(_that.alphabet);case _FilterByName():
return filterByName(_that.name);case _GetSantDetailById():
return getSantDetailById(_that.santId);case _ToggleWishlist():
return toggleWishlist(_that.itemId,_that.itemModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getAllSantList,TResult? Function( String currentSantId)?  getRelatedAllSantList,TResult? Function( String letter)?  letterSelected,TResult? Function( String alphabet)?  filterByAlphabet,TResult? Function( String name)?  filterByName,TResult? Function( String santId)?  getSantDetailById,TResult? Function( String itemId,  String itemModel)?  toggleWishlist,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAllSantList() when getAllSantList != null:
return getAllSantList();case _GetAllPopularSantList() when getRelatedAllSantList != null:
return getRelatedAllSantList(_that.currentSantId);case _LetterSelected() when letterSelected != null:
return letterSelected(_that.letter);case _FilterByAlphabet() when filterByAlphabet != null:
return filterByAlphabet(_that.alphabet);case _FilterByName() when filterByName != null:
return filterByName(_that.name);case _GetSantDetailById() when getSantDetailById != null:
return getSantDetailById(_that.santId);case _ToggleWishlist() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SantEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SantEvent.started()';
}


}




/// @nodoc


class _GetAllSantList implements SantEvent {
  const _GetAllSantList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllSantList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SantEvent.getAllSantList()';
}


}




/// @nodoc


class _GetAllPopularSantList implements SantEvent {
  const _GetAllPopularSantList({required this.currentSantId});
  

 final  String currentSantId;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllPopularSantListCopyWith<_GetAllPopularSantList> get copyWith => __$GetAllPopularSantListCopyWithImpl<_GetAllPopularSantList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllPopularSantList&&(identical(other.currentSantId, currentSantId) || other.currentSantId == currentSantId));
}


@override
int get hashCode => Object.hash(runtimeType,currentSantId);

@override
String toString() {
  return 'SantEvent.getRelatedAllSantList(currentSantId: $currentSantId)';
}


}

/// @nodoc
abstract mixin class _$GetAllPopularSantListCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$GetAllPopularSantListCopyWith(_GetAllPopularSantList value, $Res Function(_GetAllPopularSantList) _then) = __$GetAllPopularSantListCopyWithImpl;
@useResult
$Res call({
 String currentSantId
});




}
/// @nodoc
class __$GetAllPopularSantListCopyWithImpl<$Res>
    implements _$GetAllPopularSantListCopyWith<$Res> {
  __$GetAllPopularSantListCopyWithImpl(this._self, this._then);

  final _GetAllPopularSantList _self;
  final $Res Function(_GetAllPopularSantList) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentSantId = null,}) {
  return _then(_GetAllPopularSantList(
currentSantId: null == currentSantId ? _self.currentSantId : currentSantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LetterSelected implements SantEvent {
  const _LetterSelected(this.letter);
  

 final  String letter;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LetterSelectedCopyWith<_LetterSelected> get copyWith => __$LetterSelectedCopyWithImpl<_LetterSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LetterSelected&&(identical(other.letter, letter) || other.letter == letter));
}


@override
int get hashCode => Object.hash(runtimeType,letter);

@override
String toString() {
  return 'SantEvent.letterSelected(letter: $letter)';
}


}

/// @nodoc
abstract mixin class _$LetterSelectedCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$LetterSelectedCopyWith(_LetterSelected value, $Res Function(_LetterSelected) _then) = __$LetterSelectedCopyWithImpl;
@useResult
$Res call({
 String letter
});




}
/// @nodoc
class __$LetterSelectedCopyWithImpl<$Res>
    implements _$LetterSelectedCopyWith<$Res> {
  __$LetterSelectedCopyWithImpl(this._self, this._then);

  final _LetterSelected _self;
  final $Res Function(_LetterSelected) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? letter = null,}) {
  return _then(_LetterSelected(
null == letter ? _self.letter : letter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilterByAlphabet implements SantEvent {
  const _FilterByAlphabet(this.alphabet);
  

 final  String alphabet;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterByAlphabetCopyWith<_FilterByAlphabet> get copyWith => __$FilterByAlphabetCopyWithImpl<_FilterByAlphabet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterByAlphabet&&(identical(other.alphabet, alphabet) || other.alphabet == alphabet));
}


@override
int get hashCode => Object.hash(runtimeType,alphabet);

@override
String toString() {
  return 'SantEvent.filterByAlphabet(alphabet: $alphabet)';
}


}

/// @nodoc
abstract mixin class _$FilterByAlphabetCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$FilterByAlphabetCopyWith(_FilterByAlphabet value, $Res Function(_FilterByAlphabet) _then) = __$FilterByAlphabetCopyWithImpl;
@useResult
$Res call({
 String alphabet
});




}
/// @nodoc
class __$FilterByAlphabetCopyWithImpl<$Res>
    implements _$FilterByAlphabetCopyWith<$Res> {
  __$FilterByAlphabetCopyWithImpl(this._self, this._then);

  final _FilterByAlphabet _self;
  final $Res Function(_FilterByAlphabet) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? alphabet = null,}) {
  return _then(_FilterByAlphabet(
null == alphabet ? _self.alphabet : alphabet // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilterByName implements SantEvent {
  const _FilterByName(this.name);
  

 final  String name;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterByNameCopyWith<_FilterByName> get copyWith => __$FilterByNameCopyWithImpl<_FilterByName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterByName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SantEvent.filterByName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$FilterByNameCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$FilterByNameCopyWith(_FilterByName value, $Res Function(_FilterByName) _then) = __$FilterByNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$FilterByNameCopyWithImpl<$Res>
    implements _$FilterByNameCopyWith<$Res> {
  __$FilterByNameCopyWithImpl(this._self, this._then);

  final _FilterByName _self;
  final $Res Function(_FilterByName) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_FilterByName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSantDetailById implements SantEvent {
  const _GetSantDetailById(this.santId);
  

 final  String santId;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSantDetailByIdCopyWith<_GetSantDetailById> get copyWith => __$GetSantDetailByIdCopyWithImpl<_GetSantDetailById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSantDetailById&&(identical(other.santId, santId) || other.santId == santId));
}


@override
int get hashCode => Object.hash(runtimeType,santId);

@override
String toString() {
  return 'SantEvent.getSantDetailById(santId: $santId)';
}


}

/// @nodoc
abstract mixin class _$GetSantDetailByIdCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$GetSantDetailByIdCopyWith(_GetSantDetailById value, $Res Function(_GetSantDetailById) _then) = __$GetSantDetailByIdCopyWithImpl;
@useResult
$Res call({
 String santId
});




}
/// @nodoc
class __$GetSantDetailByIdCopyWithImpl<$Res>
    implements _$GetSantDetailByIdCopyWith<$Res> {
  __$GetSantDetailByIdCopyWithImpl(this._self, this._then);

  final _GetSantDetailById _self;
  final $Res Function(_GetSantDetailById) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? santId = null,}) {
  return _then(_GetSantDetailById(
null == santId ? _self.santId : santId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleWishlist implements SantEvent {
  const _ToggleWishlist({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleWishlistCopyWith<_ToggleWishlist> get copyWith => __$ToggleWishlistCopyWithImpl<_ToggleWishlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleWishlist&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'SantEvent.toggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class _$ToggleWishlistCopyWith<$Res> implements $SantEventCopyWith<$Res> {
  factory _$ToggleWishlistCopyWith(_ToggleWishlist value, $Res Function(_ToggleWishlist) _then) = __$ToggleWishlistCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class __$ToggleWishlistCopyWithImpl<$Res>
    implements _$ToggleWishlistCopyWith<$Res> {
  __$ToggleWishlistCopyWithImpl(this._self, this._then);

  final _ToggleWishlist _self;
  final $Res Function(_ToggleWishlist) _then;

/// Create a copy of SantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(_ToggleWishlist(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SantState {

 String get selectedLetter; SantListResponse get santListResponse; SantListResponse get relatedsantListResponse; bool get isLoading; String get errorMessage; bool get isSuccess;/// Single Sant detail state (DEFAULT added ✅)
 SantDetailResponse get santDetailResponse; bool get isDetailLoading;
/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SantStateCopyWith<SantState> get copyWith => _$SantStateCopyWithImpl<SantState>(this as SantState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SantState&&(identical(other.selectedLetter, selectedLetter) || other.selectedLetter == selectedLetter)&&(identical(other.santListResponse, santListResponse) || other.santListResponse == santListResponse)&&(identical(other.relatedsantListResponse, relatedsantListResponse) || other.relatedsantListResponse == relatedsantListResponse)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.santDetailResponse, santDetailResponse) || other.santDetailResponse == santDetailResponse)&&(identical(other.isDetailLoading, isDetailLoading) || other.isDetailLoading == isDetailLoading));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLetter,santListResponse,relatedsantListResponse,isLoading,errorMessage,isSuccess,santDetailResponse,isDetailLoading);

@override
String toString() {
  return 'SantState(selectedLetter: $selectedLetter, santListResponse: $santListResponse, relatedsantListResponse: $relatedsantListResponse, isLoading: $isLoading, errorMessage: $errorMessage, isSuccess: $isSuccess, santDetailResponse: $santDetailResponse, isDetailLoading: $isDetailLoading)';
}


}

/// @nodoc
abstract mixin class $SantStateCopyWith<$Res>  {
  factory $SantStateCopyWith(SantState value, $Res Function(SantState) _then) = _$SantStateCopyWithImpl;
@useResult
$Res call({
 String selectedLetter, SantListResponse santListResponse, SantListResponse relatedsantListResponse, bool isLoading, String errorMessage, bool isSuccess, SantDetailResponse santDetailResponse, bool isDetailLoading
});


$SantListResponseCopyWith<$Res> get santListResponse;$SantListResponseCopyWith<$Res> get relatedsantListResponse;$SantDetailResponseCopyWith<$Res> get santDetailResponse;

}
/// @nodoc
class _$SantStateCopyWithImpl<$Res>
    implements $SantStateCopyWith<$Res> {
  _$SantStateCopyWithImpl(this._self, this._then);

  final SantState _self;
  final $Res Function(SantState) _then;

/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedLetter = null,Object? santListResponse = null,Object? relatedsantListResponse = null,Object? isLoading = null,Object? errorMessage = null,Object? isSuccess = null,Object? santDetailResponse = null,Object? isDetailLoading = null,}) {
  return _then(_self.copyWith(
selectedLetter: null == selectedLetter ? _self.selectedLetter : selectedLetter // ignore: cast_nullable_to_non_nullable
as String,santListResponse: null == santListResponse ? _self.santListResponse : santListResponse // ignore: cast_nullable_to_non_nullable
as SantListResponse,relatedsantListResponse: null == relatedsantListResponse ? _self.relatedsantListResponse : relatedsantListResponse // ignore: cast_nullable_to_non_nullable
as SantListResponse,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,santDetailResponse: null == santDetailResponse ? _self.santDetailResponse : santDetailResponse // ignore: cast_nullable_to_non_nullable
as SantDetailResponse,isDetailLoading: null == isDetailLoading ? _self.isDetailLoading : isDetailLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantListResponseCopyWith<$Res> get santListResponse {
  
  return $SantListResponseCopyWith<$Res>(_self.santListResponse, (value) {
    return _then(_self.copyWith(santListResponse: value));
  });
}/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantListResponseCopyWith<$Res> get relatedsantListResponse {
  
  return $SantListResponseCopyWith<$Res>(_self.relatedsantListResponse, (value) {
    return _then(_self.copyWith(relatedsantListResponse: value));
  });
}/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDetailResponseCopyWith<$Res> get santDetailResponse {
  
  return $SantDetailResponseCopyWith<$Res>(_self.santDetailResponse, (value) {
    return _then(_self.copyWith(santDetailResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [SantState].
extension SantStatePatterns on SantState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SantState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SantState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SantState value)  $default,){
final _that = this;
switch (_that) {
case _SantState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SantState value)?  $default,){
final _that = this;
switch (_that) {
case _SantState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedLetter,  SantListResponse santListResponse,  SantListResponse relatedsantListResponse,  bool isLoading,  String errorMessage,  bool isSuccess,  SantDetailResponse santDetailResponse,  bool isDetailLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SantState() when $default != null:
return $default(_that.selectedLetter,_that.santListResponse,_that.relatedsantListResponse,_that.isLoading,_that.errorMessage,_that.isSuccess,_that.santDetailResponse,_that.isDetailLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedLetter,  SantListResponse santListResponse,  SantListResponse relatedsantListResponse,  bool isLoading,  String errorMessage,  bool isSuccess,  SantDetailResponse santDetailResponse,  bool isDetailLoading)  $default,) {final _that = this;
switch (_that) {
case _SantState():
return $default(_that.selectedLetter,_that.santListResponse,_that.relatedsantListResponse,_that.isLoading,_that.errorMessage,_that.isSuccess,_that.santDetailResponse,_that.isDetailLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedLetter,  SantListResponse santListResponse,  SantListResponse relatedsantListResponse,  bool isLoading,  String errorMessage,  bool isSuccess,  SantDetailResponse santDetailResponse,  bool isDetailLoading)?  $default,) {final _that = this;
switch (_that) {
case _SantState() when $default != null:
return $default(_that.selectedLetter,_that.santListResponse,_that.relatedsantListResponse,_that.isLoading,_that.errorMessage,_that.isSuccess,_that.santDetailResponse,_that.isDetailLoading);case _:
  return null;

}
}

}

/// @nodoc


class _SantState extends SantState {
  const _SantState({this.selectedLetter = "", this.santListResponse = const SantListResponse(), this.relatedsantListResponse = const SantListResponse(), this.isLoading = false, this.errorMessage = '', this.isSuccess = false, this.santDetailResponse = const SantDetailResponse(), this.isDetailLoading = false}): super._();
  

@override@JsonKey() final  String selectedLetter;
@override@JsonKey() final  SantListResponse santListResponse;
@override@JsonKey() final  SantListResponse relatedsantListResponse;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isSuccess;
/// Single Sant detail state (DEFAULT added ✅)
@override@JsonKey() final  SantDetailResponse santDetailResponse;
@override@JsonKey() final  bool isDetailLoading;

/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SantStateCopyWith<_SantState> get copyWith => __$SantStateCopyWithImpl<_SantState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SantState&&(identical(other.selectedLetter, selectedLetter) || other.selectedLetter == selectedLetter)&&(identical(other.santListResponse, santListResponse) || other.santListResponse == santListResponse)&&(identical(other.relatedsantListResponse, relatedsantListResponse) || other.relatedsantListResponse == relatedsantListResponse)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.santDetailResponse, santDetailResponse) || other.santDetailResponse == santDetailResponse)&&(identical(other.isDetailLoading, isDetailLoading) || other.isDetailLoading == isDetailLoading));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLetter,santListResponse,relatedsantListResponse,isLoading,errorMessage,isSuccess,santDetailResponse,isDetailLoading);

@override
String toString() {
  return 'SantState(selectedLetter: $selectedLetter, santListResponse: $santListResponse, relatedsantListResponse: $relatedsantListResponse, isLoading: $isLoading, errorMessage: $errorMessage, isSuccess: $isSuccess, santDetailResponse: $santDetailResponse, isDetailLoading: $isDetailLoading)';
}


}

/// @nodoc
abstract mixin class _$SantStateCopyWith<$Res> implements $SantStateCopyWith<$Res> {
  factory _$SantStateCopyWith(_SantState value, $Res Function(_SantState) _then) = __$SantStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedLetter, SantListResponse santListResponse, SantListResponse relatedsantListResponse, bool isLoading, String errorMessage, bool isSuccess, SantDetailResponse santDetailResponse, bool isDetailLoading
});


@override $SantListResponseCopyWith<$Res> get santListResponse;@override $SantListResponseCopyWith<$Res> get relatedsantListResponse;@override $SantDetailResponseCopyWith<$Res> get santDetailResponse;

}
/// @nodoc
class __$SantStateCopyWithImpl<$Res>
    implements _$SantStateCopyWith<$Res> {
  __$SantStateCopyWithImpl(this._self, this._then);

  final _SantState _self;
  final $Res Function(_SantState) _then;

/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedLetter = null,Object? santListResponse = null,Object? relatedsantListResponse = null,Object? isLoading = null,Object? errorMessage = null,Object? isSuccess = null,Object? santDetailResponse = null,Object? isDetailLoading = null,}) {
  return _then(_SantState(
selectedLetter: null == selectedLetter ? _self.selectedLetter : selectedLetter // ignore: cast_nullable_to_non_nullable
as String,santListResponse: null == santListResponse ? _self.santListResponse : santListResponse // ignore: cast_nullable_to_non_nullable
as SantListResponse,relatedsantListResponse: null == relatedsantListResponse ? _self.relatedsantListResponse : relatedsantListResponse // ignore: cast_nullable_to_non_nullable
as SantListResponse,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,santDetailResponse: null == santDetailResponse ? _self.santDetailResponse : santDetailResponse // ignore: cast_nullable_to_non_nullable
as SantDetailResponse,isDetailLoading: null == isDetailLoading ? _self.isDetailLoading : isDetailLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantListResponseCopyWith<$Res> get santListResponse {
  
  return $SantListResponseCopyWith<$Res>(_self.santListResponse, (value) {
    return _then(_self.copyWith(santListResponse: value));
  });
}/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantListResponseCopyWith<$Res> get relatedsantListResponse {
  
  return $SantListResponseCopyWith<$Res>(_self.relatedsantListResponse, (value) {
    return _then(_self.copyWith(relatedsantListResponse: value));
  });
}/// Create a copy of SantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SantDetailResponseCopyWith<$Res> get santDetailResponse {
  
  return $SantDetailResponseCopyWith<$Res>(_self.santDetailResponse, (value) {
    return _then(_self.copyWith(santDetailResponse: value));
  });
}
}

// dart format on
