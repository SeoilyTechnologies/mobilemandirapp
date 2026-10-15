part of 'sant_bloc.dart';

@freezed
abstract class SantEvent with _$SantEvent {
  const factory SantEvent.started() = _Started;

  /// 🔁 Get all Sant list (default)
  const factory SantEvent.getAllSantList() = _GetAllSantList;
  const factory SantEvent.getRelatedAllSantList( { required String currentSantId}) = _GetAllPopularSantList;

  const factory SantEvent.letterSelected(String letter) = _LetterSelected;
  /// 🔤 Filter Sant by Alphabet (A–Z)
  const factory SantEvent.filterByAlphabet(String alphabet) = _FilterByAlphabet;

  /// 🔍 Filter Sant by Name (Search)
  const factory SantEvent.filterByName(String name) = _FilterByName;

  /// 👤 Get single Sant detail by ID
  const factory SantEvent.getSantDetailById(String santId) = _GetSantDetailById;

  const factory SantEvent.toggleWishlist({
    required String itemId,
    required String itemModel,
  }) = _ToggleWishlist;
}
