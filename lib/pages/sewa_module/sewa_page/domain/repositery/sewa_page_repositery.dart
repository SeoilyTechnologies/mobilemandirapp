import 'package:either_dart/either.dart';

import '../../../../../common/network/failure.dart';
import '../../data/entity/order_save/order_save_api_response.dart';
import '../../data/entity/seva_status/seva_status_api_response.dart';
import '../../data/entity/sewa_page/sewa_page_api_response.dart';
import '../../data/entity/sewa_personal_message/price_tax_api_response/price_tax_api_response.dart';
import '../../data/entity/thankyou_sewa/thankyou_seva_api_response.dart';
import '../../data/entity/video_proof/video_proof_api_response.dart';



import '../../data/entity/schedule_preview/schedule_preview_api_response.dart';

abstract class SewaPageRepositery{
  Future<Either<Failure,SewaPageApiResponse>> getSewaPriceList(String categoryId);
  Future<Either<Failure,SchedulePreviewApiResponse>> getSchedulePreview(Map<String, dynamic> queryParams);
  Future<Either<Failure,PriceTaxApiResponse>> getTax(String price);
  Future<Either<Failure,OrderSaveApiResponse>> saveOrder(Map<String,dynamic>data);
  Future<Either<Failure,OrderSaveApiResponse>> saveSubscription(Map<String,dynamic>data);
  Future<Either<Failure,dynamic>> verifyOrder(Map<String,dynamic>data,String id);
  Future<Either<Failure,ThankYouSevaApiResponse>> getThankyouData(String id);
  Future<Either<Failure,SevaStatusApiResponse>> getSevaStatus(String id);
  Future<Either<Failure,VideoProofApiResponse>> getVideoProof(String id);
  Future<Either<Failure,dynamic>> raiseConcern(Map<String,dynamic>data,String id);
  Future<Either<Failure,dynamic>> approveVideo(Map<String,dynamic>data,String id);
}