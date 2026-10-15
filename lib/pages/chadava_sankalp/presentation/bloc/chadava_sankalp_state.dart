import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/entity/sankalp_option_model.dart';

part 'chadava_sankalp_state.freezed.dart';

@freezed
abstract class ChadavaSankalpState with _$ChadavaSankalpState {
  const factory ChadavaSankalpState({
    @Default(false) bool isLoading,
    @Default(101) int baseOfferingPrice,
    @Default('Sarson ka tel') String offeringTitle,
    @Default(SankalpOptionType.sankalp) SankalpOptionType selectedOption,
    @Default(11) int selectedWeeks,
    @Default([5, 11, 21, 51]) List<int> availableWeeks,
    @Default('') String errorMessage,
  }) = _ChadavaSankalpState;

  factory ChadavaSankalpState.initial() => const ChadavaSankalpState();
}

extension ChadavaSankalpStateX on ChadavaSankalpState {
  int get totalPrice {
    if (selectedOption == SankalpOptionType.ekBaar) {
      return baseOfferingPrice;
    } else {
      return baseOfferingPrice * selectedWeeks;
    }
  }

  String get formattedTotalPrice {
    final price = totalPrice;
    final buffer = StringBuffer();
    final str = price.toString();
    for (int i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(str[i]);
    }
    return '₹${buffer.toString()}';
  }
}
