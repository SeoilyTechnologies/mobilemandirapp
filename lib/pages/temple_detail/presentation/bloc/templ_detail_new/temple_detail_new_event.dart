import 'package:freezed_annotation/freezed_annotation.dart';

part 'temple_detail_new_event.freezed.dart';

@freezed
abstract class TempleDetailNewEvent with _$TempleDetailNewEvent {
  const factory TempleDetailNewEvent.getTempleDetailById({
    required String id,
  }) = GetTempleDetailById;

  const factory TempleDetailNewEvent.templeToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = TempleWishlistvent;

  const factory TempleDetailNewEvent.relatedTempleToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = RelatedTempleWishlistEvent;
}