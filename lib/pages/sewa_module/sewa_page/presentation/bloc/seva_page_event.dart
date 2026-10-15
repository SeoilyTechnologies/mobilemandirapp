import 'package:equatable/equatable.dart';
import '../../data/entity/sewa_page/sewa_page_api_response.dart';

abstract class SevaPageEvent extends Equatable {
  const SevaPageEvent();

  @override
  List<Object?> get props => [];

  /// Factory methods for backward compatibility with existing Freezed-style call sites
  static GetSewaPriceList getSewaPriceList({
    required String categoryId,
    required String categoryName,
    required String categoryDescription,
  }) =>
      GetSewaPriceList(
        categoryId: categoryId,
        categoryName: categoryName,
        categoryDescription: categoryDescription,
      );

  static SelectPrice selectPrice({required AmountOption amountOption}) =>
      SelectPrice(amountOption: amountOption);

  static SelectPaymentType selectPaymentType({required String paymentType}) =>
      SelectPaymentType(paymentType: paymentType);

  static SelectOfferingItem selectOfferingItem({required String item}) =>
      SelectOfferingItem(item: item);

  static SelectFrequency selectFrequency({required String frequency}) =>
      SelectFrequency(frequency: frequency);

  static ToggleDay toggleDay({required String day}) => ToggleDay(day: day);

  static ToggleTithi toggleTithi({required String tithi}) =>
      ToggleTithi(tithi: tithi);

  static FetchSchedulePreview fetchSchedulePreview({AmountOption? amountOption}) =>
      FetchSchedulePreview(amountOption: amountOption);

  static Proceed proceed() => const Proceed();
}

class FetchSchedulePreview extends SevaPageEvent {
  final AmountOption? amountOption;
  const FetchSchedulePreview({this.amountOption});

  @override
  List<Object?> get props => [amountOption];
}

class GetSewaPriceList extends SevaPageEvent {
  final String categoryId;
  final String categoryName;
  final String categoryDescription;

  const GetSewaPriceList({
    required this.categoryId,
    required this.categoryName,
    required this.categoryDescription,
  });

  @override
  List<Object?> get props => [categoryId, categoryName, categoryDescription];
}

class SelectPrice extends SevaPageEvent {
  final AmountOption amountOption;

  const SelectPrice({required this.amountOption});

  @override
  List<Object?> get props => [amountOption];
}

class SelectPaymentType extends SevaPageEvent {
  final String paymentType;

  const SelectPaymentType({required this.paymentType});

  @override
  List<Object?> get props => [paymentType];
}

class SelectOfferingItem extends SevaPageEvent {
  final String item;

  const SelectOfferingItem({required this.item});

  @override
  List<Object?> get props => [item];
}

class SelectFrequency extends SevaPageEvent {
  final String frequency;

  const SelectFrequency({required this.frequency});

  @override
  List<Object?> get props => [frequency];
}

class ToggleDay extends SevaPageEvent {
  final String day;

  const ToggleDay({required this.day});

  @override
  List<Object?> get props => [day];
}

class ToggleTithi extends SevaPageEvent {
  final String tithi;

  const ToggleTithi({required this.tithi});

  @override
  List<Object?> get props => [tithi];
}

class Proceed extends SevaPageEvent {
  const Proceed();
}