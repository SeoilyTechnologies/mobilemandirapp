import 'package:freezed_annotation/freezed_annotation.dart';

part 'god_details_event.freezed.dart';

@freezed
abstract class GodDetailsEvent with _$GodDetailsEvent {
  const factory GodDetailsEvent.getGodDetailById({
    required String id,
  }) = GetGodDetailById;

  const factory GodDetailsEvent.godToggleWishlist({
    required String itemId,
    required String itemModel,
  }) = GodWishlistvent;


}