import 'package:either_dart/either.dart';
import '../../../../../common/network/failure.dart';
import '../../data/entity/order_save/order_save_api_response.dart';
import '../../data/entity/seva_status/seva_status_api_response.dart';
import '../../data/entity/sewa_page/sewa_page_api_response.dart';
import '../../data/entity/sewa_personal_message/price_tax_api_response/price_tax_api_response.dart';
import '../../data/entity/thankyou_sewa/thankyou_seva_api_response.dart';
import '../../data/entity/video_proof/video_proof_api_response.dart';
import '../../data/entity/schedule_preview/schedule_preview_api_response.dart';
import '../repositery/sewa_page_repositery.dart';

class SewaPageUsecase {
  final SewaPageRepositery _sewaPageRepositery;

  SewaPageUsecase(this._sewaPageRepositery);

  Future<Either<Failure, SewaPageApiResponse>> callPencahngAPi(
    String categoryId,
  ) async {
    return _sewaPageRepositery.getSewaPriceList(categoryId);
  }

  Future<Either<Failure, SchedulePreviewApiResponse>> callGetSchedulePreview(
    Map<String, dynamic> queryParams,
  ) async {
    return _sewaPageRepositery.getSchedulePreview(queryParams);
  }

  Future<Either<Failure, PriceTaxApiResponse>> callgetTaxAPi(
    String price,
  ) async {
    return _sewaPageRepositery.getTax(price);
  }

  Future<Either<Failure, OrderSaveApiResponse>> callSaveOrderApi(
    Map<String, dynamic> data,
  ) async {
    return _sewaPageRepositery.saveOrder(data);
  }

  Future<Either<Failure, OrderSaveApiResponse>> callSaveSubscriptionApi(
    Map<String, dynamic> data,
  ) async {
    return _sewaPageRepositery.saveSubscription(data);
  }

  Future<Either<Failure, dynamic>> callVerifyOrder(
    Map<String, dynamic> data,
    String id,
  ) async {
    return _sewaPageRepositery.verifyOrder(data, id);
  }

  Future<Either<Failure, ThankYouSevaApiResponse>> callgetThankyouData(
    String id,
  ) async {
    return _sewaPageRepositery.getThankyouData(id);
  }

  Future<Either<Failure, SevaStatusApiResponse>> callgetSevaStatus(
    String id,
  ) async {
    return _sewaPageRepositery.getSevaStatus(id);
  }

  Future<Either<Failure, VideoProofApiResponse>> callgetVideoProof(
    String id,
  ) async {
    return _sewaPageRepositery.getVideoProof(id);
  }

  Future<Either<Failure, dynamic>> callraiseConcern(
    Map<String, dynamic> data,
    String id,
  ) async {
    return _sewaPageRepositery.raiseConcern(data, id);
  }

  Future<Either<Failure, dynamic>> callapproveVideo(
    Map<String, dynamic> data,
    String id,
  ) async {
    return _sewaPageRepositery.approveVideo(data, id);
  }
}
