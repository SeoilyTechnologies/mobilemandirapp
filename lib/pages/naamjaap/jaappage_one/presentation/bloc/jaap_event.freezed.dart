// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapEvent()';
}


}

/// @nodoc
class $JaapEventCopyWith<$Res>  {
$JaapEventCopyWith(JaapEvent _, $Res Function(JaapEvent) __);
}


/// Adds pattern-matching-related methods to [JaapEvent].
extension JaapEventPatterns on JaapEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetGodData value)?  getGodData,TResult Function( GetMantra value)?  getMantra,TResult Function( SelectMantra value)?  selectMantra,TResult Function( SelectJapCount value)?  selectJapCount,TResult Function( ToggleWishlistJaapEvent value)?  toggleWishlist,TResult Function( GetWishlistMantra value)?  getWishlist,TResult Function( SearchGod value)?  searchGod,TResult Function( CreateJaapSession value)?  createJaapSession,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetGodData() when getGodData != null:
return getGodData(_that);case GetMantra() when getMantra != null:
return getMantra(_that);case SelectMantra() when selectMantra != null:
return selectMantra(_that);case SelectJapCount() when selectJapCount != null:
return selectJapCount(_that);case ToggleWishlistJaapEvent() when toggleWishlist != null:
return toggleWishlist(_that);case GetWishlistMantra() when getWishlist != null:
return getWishlist(_that);case SearchGod() when searchGod != null:
return searchGod(_that);case CreateJaapSession() when createJaapSession != null:
return createJaapSession(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetGodData value)  getGodData,required TResult Function( GetMantra value)  getMantra,required TResult Function( SelectMantra value)  selectMantra,required TResult Function( SelectJapCount value)  selectJapCount,required TResult Function( ToggleWishlistJaapEvent value)  toggleWishlist,required TResult Function( GetWishlistMantra value)  getWishlist,required TResult Function( SearchGod value)  searchGod,required TResult Function( CreateJaapSession value)  createJaapSession,}){
final _that = this;
switch (_that) {
case GetGodData():
return getGodData(_that);case GetMantra():
return getMantra(_that);case SelectMantra():
return selectMantra(_that);case SelectJapCount():
return selectJapCount(_that);case ToggleWishlistJaapEvent():
return toggleWishlist(_that);case GetWishlistMantra():
return getWishlist(_that);case SearchGod():
return searchGod(_that);case CreateJaapSession():
return createJaapSession(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetGodData value)?  getGodData,TResult? Function( GetMantra value)?  getMantra,TResult? Function( SelectMantra value)?  selectMantra,TResult? Function( SelectJapCount value)?  selectJapCount,TResult? Function( ToggleWishlistJaapEvent value)?  toggleWishlist,TResult? Function( GetWishlistMantra value)?  getWishlist,TResult? Function( SearchGod value)?  searchGod,TResult? Function( CreateJaapSession value)?  createJaapSession,}){
final _that = this;
switch (_that) {
case GetGodData() when getGodData != null:
return getGodData(_that);case GetMantra() when getMantra != null:
return getMantra(_that);case SelectMantra() when selectMantra != null:
return selectMantra(_that);case SelectJapCount() when selectJapCount != null:
return selectJapCount(_that);case ToggleWishlistJaapEvent() when toggleWishlist != null:
return toggleWishlist(_that);case GetWishlistMantra() when getWishlist != null:
return getWishlist(_that);case SearchGod() when searchGod != null:
return searchGod(_that);case CreateJaapSession() when createJaapSession != null:
return createJaapSession(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? searchQuery,  String? selectedGodId)?  getGodData,TResult Function( String type)?  getMantra,TResult Function( String mantraId,  String mantraTitle,  String mantra)?  selectMantra,TResult Function( String japCount)?  selectJapCount,TResult Function( String itemId,  String itemModel)?  toggleWishlist,TResult Function( String userId)?  getWishlist,TResult Function( String query)?  searchGod,TResult Function()?  createJaapSession,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetGodData() when getGodData != null:
return getGodData(_that.searchQuery,_that.selectedGodId);case GetMantra() when getMantra != null:
return getMantra(_that.type);case SelectMantra() when selectMantra != null:
return selectMantra(_that.mantraId,_that.mantraTitle,_that.mantra);case SelectJapCount() when selectJapCount != null:
return selectJapCount(_that.japCount);case ToggleWishlistJaapEvent() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case GetWishlistMantra() when getWishlist != null:
return getWishlist(_that.userId);case SearchGod() when searchGod != null:
return searchGod(_that.query);case CreateJaapSession() when createJaapSession != null:
return createJaapSession();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? searchQuery,  String? selectedGodId)  getGodData,required TResult Function( String type)  getMantra,required TResult Function( String mantraId,  String mantraTitle,  String mantra)  selectMantra,required TResult Function( String japCount)  selectJapCount,required TResult Function( String itemId,  String itemModel)  toggleWishlist,required TResult Function( String userId)  getWishlist,required TResult Function( String query)  searchGod,required TResult Function()  createJaapSession,}) {final _that = this;
switch (_that) {
case GetGodData():
return getGodData(_that.searchQuery,_that.selectedGodId);case GetMantra():
return getMantra(_that.type);case SelectMantra():
return selectMantra(_that.mantraId,_that.mantraTitle,_that.mantra);case SelectJapCount():
return selectJapCount(_that.japCount);case ToggleWishlistJaapEvent():
return toggleWishlist(_that.itemId,_that.itemModel);case GetWishlistMantra():
return getWishlist(_that.userId);case SearchGod():
return searchGod(_that.query);case CreateJaapSession():
return createJaapSession();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? searchQuery,  String? selectedGodId)?  getGodData,TResult? Function( String type)?  getMantra,TResult? Function( String mantraId,  String mantraTitle,  String mantra)?  selectMantra,TResult? Function( String japCount)?  selectJapCount,TResult? Function( String itemId,  String itemModel)?  toggleWishlist,TResult? Function( String userId)?  getWishlist,TResult? Function( String query)?  searchGod,TResult? Function()?  createJaapSession,}) {final _that = this;
switch (_that) {
case GetGodData() when getGodData != null:
return getGodData(_that.searchQuery,_that.selectedGodId);case GetMantra() when getMantra != null:
return getMantra(_that.type);case SelectMantra() when selectMantra != null:
return selectMantra(_that.mantraId,_that.mantraTitle,_that.mantra);case SelectJapCount() when selectJapCount != null:
return selectJapCount(_that.japCount);case ToggleWishlistJaapEvent() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case GetWishlistMantra() when getWishlist != null:
return getWishlist(_that.userId);case SearchGod() when searchGod != null:
return searchGod(_that.query);case CreateJaapSession() when createJaapSession != null:
return createJaapSession();case _:
  return null;

}
}

}

/// @nodoc


class GetGodData implements JaapEvent {
  const GetGodData({this.searchQuery, this.selectedGodId});
  

 final  String? searchQuery;
// ✅ ADD THIS
 final  String? selectedGodId;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGodDataCopyWith<GetGodData> get copyWith => _$GetGodDataCopyWithImpl<GetGodData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGodData&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedGodId, selectedGodId) || other.selectedGodId == selectedGodId));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,selectedGodId);

@override
String toString() {
  return 'JaapEvent.getGodData(searchQuery: $searchQuery, selectedGodId: $selectedGodId)';
}


}

/// @nodoc
abstract mixin class $GetGodDataCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $GetGodDataCopyWith(GetGodData value, $Res Function(GetGodData) _then) = _$GetGodDataCopyWithImpl;
@useResult
$Res call({
 String? searchQuery, String? selectedGodId
});




}
/// @nodoc
class _$GetGodDataCopyWithImpl<$Res>
    implements $GetGodDataCopyWith<$Res> {
  _$GetGodDataCopyWithImpl(this._self, this._then);

  final GetGodData _self;
  final $Res Function(GetGodData) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,Object? selectedGodId = freezed,}) {
  return _then(GetGodData(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,selectedGodId: freezed == selectedGodId ? _self.selectedGodId : selectedGodId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetMantra implements JaapEvent {
  const GetMantra(this.type);
  

 final  String type;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMantraCopyWith<GetMantra> get copyWith => _$GetMantraCopyWithImpl<GetMantra>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMantra&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'JaapEvent.getMantra(type: $type)';
}


}

/// @nodoc
abstract mixin class $GetMantraCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $GetMantraCopyWith(GetMantra value, $Res Function(GetMantra) _then) = _$GetMantraCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class _$GetMantraCopyWithImpl<$Res>
    implements $GetMantraCopyWith<$Res> {
  _$GetMantraCopyWithImpl(this._self, this._then);

  final GetMantra _self;
  final $Res Function(GetMantra) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(GetMantra(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectMantra implements JaapEvent {
  const SelectMantra(this.mantraId, this.mantraTitle, this.mantra);
  

 final  String mantraId;
 final  String mantraTitle;
 final  String mantra;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectMantraCopyWith<SelectMantra> get copyWith => _$SelectMantraCopyWithImpl<SelectMantra>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectMantra&&(identical(other.mantraId, mantraId) || other.mantraId == mantraId)&&(identical(other.mantraTitle, mantraTitle) || other.mantraTitle == mantraTitle)&&(identical(other.mantra, mantra) || other.mantra == mantra));
}


@override
int get hashCode => Object.hash(runtimeType,mantraId,mantraTitle,mantra);

@override
String toString() {
  return 'JaapEvent.selectMantra(mantraId: $mantraId, mantraTitle: $mantraTitle, mantra: $mantra)';
}


}

/// @nodoc
abstract mixin class $SelectMantraCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $SelectMantraCopyWith(SelectMantra value, $Res Function(SelectMantra) _then) = _$SelectMantraCopyWithImpl;
@useResult
$Res call({
 String mantraId, String mantraTitle, String mantra
});




}
/// @nodoc
class _$SelectMantraCopyWithImpl<$Res>
    implements $SelectMantraCopyWith<$Res> {
  _$SelectMantraCopyWithImpl(this._self, this._then);

  final SelectMantra _self;
  final $Res Function(SelectMantra) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mantraId = null,Object? mantraTitle = null,Object? mantra = null,}) {
  return _then(SelectMantra(
null == mantraId ? _self.mantraId : mantraId // ignore: cast_nullable_to_non_nullable
as String,null == mantraTitle ? _self.mantraTitle : mantraTitle // ignore: cast_nullable_to_non_nullable
as String,null == mantra ? _self.mantra : mantra // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectJapCount implements JaapEvent {
  const SelectJapCount(this.japCount);
  

 final  String japCount;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectJapCountCopyWith<SelectJapCount> get copyWith => _$SelectJapCountCopyWithImpl<SelectJapCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectJapCount&&(identical(other.japCount, japCount) || other.japCount == japCount));
}


@override
int get hashCode => Object.hash(runtimeType,japCount);

@override
String toString() {
  return 'JaapEvent.selectJapCount(japCount: $japCount)';
}


}

/// @nodoc
abstract mixin class $SelectJapCountCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $SelectJapCountCopyWith(SelectJapCount value, $Res Function(SelectJapCount) _then) = _$SelectJapCountCopyWithImpl;
@useResult
$Res call({
 String japCount
});




}
/// @nodoc
class _$SelectJapCountCopyWithImpl<$Res>
    implements $SelectJapCountCopyWith<$Res> {
  _$SelectJapCountCopyWithImpl(this._self, this._then);

  final SelectJapCount _self;
  final $Res Function(SelectJapCount) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? japCount = null,}) {
  return _then(SelectJapCount(
null == japCount ? _self.japCount : japCount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleWishlistJaapEvent implements JaapEvent {
  const ToggleWishlistJaapEvent({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleWishlistJaapEventCopyWith<ToggleWishlistJaapEvent> get copyWith => _$ToggleWishlistJaapEventCopyWithImpl<ToggleWishlistJaapEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleWishlistJaapEvent&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'JaapEvent.toggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $ToggleWishlistJaapEventCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $ToggleWishlistJaapEventCopyWith(ToggleWishlistJaapEvent value, $Res Function(ToggleWishlistJaapEvent) _then) = _$ToggleWishlistJaapEventCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$ToggleWishlistJaapEventCopyWithImpl<$Res>
    implements $ToggleWishlistJaapEventCopyWith<$Res> {
  _$ToggleWishlistJaapEventCopyWithImpl(this._self, this._then);

  final ToggleWishlistJaapEvent _self;
  final $Res Function(ToggleWishlistJaapEvent) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(ToggleWishlistJaapEvent(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetWishlistMantra implements JaapEvent {
  const GetWishlistMantra({this.userId = ''});
  

@JsonKey() final  String userId;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWishlistMantraCopyWith<GetWishlistMantra> get copyWith => _$GetWishlistMantraCopyWithImpl<GetWishlistMantra>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWishlistMantra&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'JaapEvent.getWishlist(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetWishlistMantraCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $GetWishlistMantraCopyWith(GetWishlistMantra value, $Res Function(GetWishlistMantra) _then) = _$GetWishlistMantraCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetWishlistMantraCopyWithImpl<$Res>
    implements $GetWishlistMantraCopyWith<$Res> {
  _$GetWishlistMantraCopyWithImpl(this._self, this._then);

  final GetWishlistMantra _self;
  final $Res Function(GetWishlistMantra) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetWishlistMantra(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchGod implements JaapEvent {
  const SearchGod(this.query);
  

 final  String query;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGodCopyWith<SearchGod> get copyWith => _$SearchGodCopyWithImpl<SearchGod>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGod&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'JaapEvent.searchGod(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchGodCopyWith<$Res> implements $JaapEventCopyWith<$Res> {
  factory $SearchGodCopyWith(SearchGod value, $Res Function(SearchGod) _then) = _$SearchGodCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchGodCopyWithImpl<$Res>
    implements $SearchGodCopyWith<$Res> {
  _$SearchGodCopyWithImpl(this._self, this._then);

  final SearchGod _self;
  final $Res Function(SearchGod) _then;

/// Create a copy of JaapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchGod(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateJaapSession implements JaapEvent {
  const CreateJaapSession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateJaapSession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapEvent.createJaapSession()';
}


}




// dart format on
