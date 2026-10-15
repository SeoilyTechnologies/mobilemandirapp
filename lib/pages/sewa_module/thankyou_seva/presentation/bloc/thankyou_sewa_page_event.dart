import 'package:freezed_annotation/freezed_annotation.dart';

part 'thankyou_sewa_page_event.freezed.dart';

@freezed
abstract class ThankyouSewaPageEvent with _$ThankyouSewaPageEvent {
  const factory ThankyouSewaPageEvent.getThankyou({
    required String id,
  }) = GetThankyou;


}