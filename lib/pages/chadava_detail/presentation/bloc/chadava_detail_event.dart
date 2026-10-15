import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadava_detail_event.freezed.dart';

@freezed
abstract class ChadavaDetailEvent with _$ChadavaDetailEvent {
  const factory ChadavaDetailEvent.loadDetail({
    @Default('shani_dev') String itemId,
    String? itemTitle,
    String? itemImage,
  }) = LoadChadavaDetail;

  const factory ChadavaDetailEvent.selectOffering(String offeringId) =
      SelectChadavaOffering;
}
