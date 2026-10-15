import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/sankalp_option_model.dart';

part 'chadava_sankalp_event.freezed.dart';

@freezed
abstract class ChadavaSankalpEvent with _$ChadavaSankalpEvent {
  const factory ChadavaSankalpEvent.initSankalp({
    @Default(101) int offeringPrice,
    @Default('Sarson ka tel') String offeringTitle,
  }) = InitChadavaSankalp;

  const factory ChadavaSankalpEvent.selectOption(SankalpOptionType optionType) =
      SelectSankalpOption;

  const factory ChadavaSankalpEvent.selectWeeks(int weeksCount) =
      SelectSankalpWeeks;
}
