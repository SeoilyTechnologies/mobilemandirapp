import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/signin/data/entity/login_response.dart';
import '../../data/entity/aarti_model.dart';
import '../../data/entity/festival_list/festival_list.dart';
import '../../data/entity/god/god_data_list.dart';
import '../../data/entity/tithi_response/tithi_api_response.dart';

part 'aarti_chalisa_lsit_state.freezed.dart';

@freezed
abstract class AartiChalisaListState with _$AartiChalisaListState {
  const factory AartiChalisaListState({
    @Default('') String godName,
    @Default('') String godID,
    @Default('') String type,
    @Default('') String godDisplayImage,
    @Default('') String godHinidDetail,
    @Default('') String godEnglishDetail,
    @Default(0) int selectedCategoryIndex,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isServerError,
    @Default(false) bool isGuestLoginDone,
    @Default(18.0) double lyricsFontSize,
    @Default(0xFF000000) int lyricsColorValue,
    @Default('') String apiErrorMessage,
    @Default('') String apiSuccessMessage,
    String? selectedDay,

    @Default(false) bool isWishlistLoading,
    @Default('') String wishlistMessage,


    GodData? selectedGod,
    @Default(<GodData>[]) List<GodData> godList,

    // ---------------- FESTIVAL ----------------
    FestivalItem? selectedFestival,
    @Default(<FestivalItem>[]) List<FestivalItem> festivalList,

    @Default(AartiResponse()) AartiResponse aartiResponse,
    @Default(AartiResponse()) AartiResponse relatedaartiResponse,
    @Default(AartiResponse()) AartiResponse aartiResponseGetByGodId,
    @Default(AartiResponse()) AartiResponse aartiResponseGetAartiById,
    @Default(AartiResponse()) AartiResponse mantraHomePageResponse,


    @Default(LoginResponse()) LoginResponse loginResponse,

    TithiData? selectedTithi,

    @Default(<TithiData>[]) List<TithiData> tithiList,

    @Default(1) int currentPage,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMoreData,

  }) = _AartiChalisaListState;

  factory AartiChalisaListState.initial() => const AartiChalisaListState();
}

