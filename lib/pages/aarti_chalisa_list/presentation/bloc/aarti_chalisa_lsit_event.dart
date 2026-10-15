import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/festival_list/festival_list.dart';
import '../../data/entity/god/god_data_list.dart';
import '../../data/entity/tithi_response/tithi_api_response.dart';

part 'aarti_chalisa_lsit_event.freezed.dart';

@freezed
abstract class AartiChalisaListEvent with _$AartiChalisaListEvent {
  const factory AartiChalisaListEvent.getAartiChalisaByType(String type) = GetAartiChalisaByType;
  const factory AartiChalisaListEvent.loadMoreAartiChalisa() = LoadMoreAartiChalisa;
  const factory AartiChalisaListEvent.relatedgetAartiChalisaByType(String type) = RelatedGetAartiChalisaByType;

  const factory AartiChalisaListEvent.storeType(String type) = StoreType;
  const factory AartiChalisaListEvent.loginGuestSubmittedd() = AartiChalisaGuestSubmitted;
  const factory AartiChalisaListEvent.updateLyricsFontSize(
      double fontSize,
      ) = UpdateLyricsFontSize;

  const factory AartiChalisaListEvent.updateLyricsColor(
      int colorValue,
      ) = UpdateLyricsColor;

  const factory AartiChalisaListEvent.daySelected(String day) = DaySelected;
  const factory AartiChalisaListEvent.getByAartiId(String aartiIdEvent) = GetAartiByAartiIdEvent;


  const factory AartiChalisaListEvent.categorySelected({
    required int index,
    required String type,
  }) = CategorySelected;

  const factory AartiChalisaListEvent.godSelected(GodData god) = GodSelected;

  const factory AartiChalisaListEvent.festivalSelected(
      FestivalItem festival,
      ) = FestivalSelected;

  const factory AartiChalisaListEvent.getGodList() = GetGodList;

  const factory AartiChalisaListEvent.getFestivalList() = GetFestivalList;

  const factory AartiChalisaListEvent.resetFilters() = ResetFilters;


  const factory AartiChalisaListEvent.toggleWishlist({
    required String itemId,
    required String itemModel, // e.g. aarti / chalisa / temple / mantra
  }) = ToggleWishlistAartiChalisaList;

  const factory AartiChalisaListEvent.getTithiList() = GetTithiList;

  const factory AartiChalisaListEvent.tithiSelected(
      TithiData tithi,
      ) = TithiSelected;
  const factory AartiChalisaListEvent.clearFilters() = ClearFilters;
}

