import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/tithi_response/tithi_api_response.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/aarti_model.dart';
import '../../data/entity/festival_list/festival_list.dart';
import '../../data/entity/god/god_data_list.dart';



abstract class AartiChalisaKathaRepositery{
  Future<Either<Failure,AartiResponse>> getAartiChalisa(Map<String, dynamic> type);
  Future<Either<Failure,AartiResponse>> getHomeMantra(Map<String, dynamic> type);
  Future<Either<Failure,AartiResponse>> getGodWiseAartiChalisaMantra(Map<String, dynamic> type);
  Future<Either<Failure,AartiResponse>> getAartiById(Map<String, dynamic> type);
  Future<Either<Failure,AartiResponse>> getNextThreeDayAarti(Map<String, dynamic> type);
  Future<Either<Failure,GodDataListResponse>> getGodData(Map<String, dynamic> type);
  Future<Either<Failure,FestivalListResponse>> getFestivalData(Map<String, dynamic> type);
  Future<Either<Failure,TithiApiResponse>> getTithiApiResponse(Map<String, dynamic> type);

}