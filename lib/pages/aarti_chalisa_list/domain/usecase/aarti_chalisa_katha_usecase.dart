import 'dart:io';
import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/aarti_model.dart';
import '../../data/entity/festival_list/festival_list.dart';
import '../../data/entity/god/god_data_list.dart';
import '../../data/entity/tithi_response/tithi_api_response.dart';
import '../repositery/aarti_chalisa_katha_repositery.dart';

class AartiChalisaKathaUsecase{
  final AartiChalisaKathaRepositery _aartiChalisaKathaRepositery;
  AartiChalisaKathaUsecase(this._aartiChalisaKathaRepositery);

  Future<Either<Failure,AartiResponse>> getAartiChalisaByTYpe(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getAartiChalisa(type);
  }

Future<Either<Failure,AartiResponse>> callHomeMantraApi(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getHomeMantra(type);
  }

  Future<Either<Failure,AartiResponse>> callgetGodWiseAartiChalisaMantra(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getGodWiseAartiChalisaMantra(type);
  }

  Future<Either<Failure,AartiResponse>> callgetNextThreeDayAarti(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getNextThreeDayAarti(type);
  }

  Future<Either<Failure,AartiResponse>> callgetAartiById(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getAartiById(type);
  }



  Future<Either<Failure,FestivalListResponse>> getFesttivalData(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getFestivalData(type);
  }
  Future<Either<Failure,GodDataListResponse>> callGodDataAPi(
      Map<String, dynamic> type,) async {
    return _aartiChalisaKathaRepositery.getGodData(type);
  }

  Future<Either<Failure,TithiApiResponse>> getTithiApiResponse(Map<String, dynamic> type) async {
    return _aartiChalisaKathaRepositery.getTithiApiResponse(type);
  }


}
