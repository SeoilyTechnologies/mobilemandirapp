import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/routes/exports.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/utils/auth_helper.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import 'package:mandirapp/pages/sewa_module/book_sewa/bloc/book_sewa_page_bloc.dart';
import 'package:mandirapp/pages/sewa_module/book_sewa/bloc/book_sewa_page_event.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import '../../../bloc/seva_page_bloc.dart';
import '../../../bloc/seva_page_event.dart';
import '../../../bloc/seva_page_state.dart';
import '../../../../data/entity/schedule_preview/schedule_preview_api_response.dart';
import '../../../../data/entity/sewa_page/sewa_page_api_response.dart';
import '../bottom_sheet/select_day_bottom_sheet.dart';
import '../bottom_sheet/select_tithi_bottom_sheet.dart';

class GauSevaDonationCard extends StatelessWidget {
  const GauSevaDonationCard({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return const GauSevaDonationCardSmall();
    } else {
      return const GauSevaDonationCardMedium();
    }
  }
}

class GauSevaDonationCardSmall extends StatelessWidget {
  const GauSevaDonationCardSmall({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocBuilder<SevaPageBloc, SevaPageState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: context.screenWidth,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// 1. TOP BANNER CARD (Blessings Through Gau Seva)
              _buildTopBannerCard(context, state),

              /// 2. OVERLAPPING WHITE PARENT WRAPPER CARD
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// PAYMENT TYPE SELECTION (One Time vs Monthly)
                      _buildPaymentTypeSelection(context, state),

                      const SizedBox(height: 14),

                      /// OFFERING ITEMS CARD (Banana, Tarbooz, Chara)
                      _buildOfferingItemsCard(context, state),

                      /// SELECT FREQUENCY (If Monthly Payment is selected)
                      _buildSelectFrequencyCard(context, state),

                      const SizedBox(height: 14),

                      /// SELECT AMOUNT TITLE & GRID
                      Text(
                        context.l10n.selectAmount,
                        style: AppTextStyle.gilroyBold(
                          16,
                          color: AppColor.fullBlack,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Builder(
                        builder: (context) {
                          final currentAmountOptions = state.currentAmountOptions;
                          return GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: currentAmountOptions.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: state.paymentType == 'monthly'
                                  ? (Platform.isIOS ? 1.2 : 1.1)
                                  : (Platform.isIOS ? 1.4 : 1.3),
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = currentAmountOptions[index];
                              final subtitleText = _getAmountSubtitle(state, item);

                              return GestureDetector(
                                onTap: () {
                                  context.read<SevaPageBloc>().add(
                                    SelectPrice(amountOption: item),
                                  );
                                },
                                child: AmountBox(
                                  amount: "₹${item.amount}",
                                  subtitle: subtitleText,
                                  selected: state.selectedPrice == item,
                                ),
                              );
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 14),

                      /// ESCROW SECURITY NOTICE BANNER
                      _buildEscrowBanner(context),

                      /// GREEN FREQUENCY SUMMARY BANNER (Weekly / Tithi)
                      _buildFrequencySummaryBanner(context, state),

                      /// SCHEDULE PREVIEW CARD (Auto-pay summary & dates chips)
                      _buildSchedulePreviewCard(context, state),

                      const SizedBox(height: 16),

                      /// CONTINUE BUTTON (INSIDE THE WHITE CARD WRAPPER)
                      _buildContinueButton(context, state),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class GauSevaDonationCardMedium extends StatelessWidget {
  const GauSevaDonationCardMedium({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocBuilder<SevaPageBloc, SevaPageState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: context.screenWidth,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// 1. TOP BANNER CARD
              _buildTopBannerCard(context, state),

              /// 2. OVERLAPPING WHITE PARENT WRAPPER CARD
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// PAYMENT TYPE SELECTION
                      _buildPaymentTypeSelection(context, state),

                      const SizedBox(height: 14),

                      /// OFFERING ITEMS CARD
                      _buildOfferingItemsCard(context, state),

                      /// SELECT FREQUENCY (If Monthly)
                      _buildSelectFrequencyCard(context, state),

                      const SizedBox(height: 14),

                      /// SELECT AMOUNT TITLE & GRID
                      Text(
                        context.l10n.selectAmount,
                        style: AppTextStyle.gilroyBold(
                          16,
                          color: AppColor.fullBlack,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Builder(
                        builder: (context) {
                          final currentAmountOptions = state.currentAmountOptions;
                          return GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: currentAmountOptions.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: state.paymentType == 'monthly'
                                  ? (Platform.isIOS ? 2.0 : 1.8)
                                  : (Platform.isIOS ? 2.5 : 2.2),
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = currentAmountOptions[index];
                              final subtitleText = _getAmountSubtitle(state, item);

                              return GestureDetector(
                                onTap: () {
                                  context.read<SevaPageBloc>().add(
                                    SelectPrice(amountOption: item),
                                  );
                                },
                                child: AmountBox(
                                  amount: "₹${item.amount}",
                                  subtitle: subtitleText,
                                  selected: state.selectedPrice == item,
                                ),
                              );
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 14),

                      /// ESCROW NOTICE BANNER
                      _buildEscrowBanner(context),

                      /// GREEN FREQUENCY SUMMARY BANNER (Weekly / Tithi)
                      _buildFrequencySummaryBanner(context, state),

                      /// SCHEDULE PREVIEW CARD (Auto-pay summary & dates chips)
                      _buildSchedulePreviewCard(context, state),

                      const SizedBox(height: 16),

                      /// CONTINUE BUTTON (INSIDE THE WHITE CARD WRAPPER)
                      _buildContinueButton(context, state),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// ---------------- HELPER WIDGETS ----------------

Widget _buildTopBannerCard(BuildContext context, SevaPageState state) {
  final icon = state.sewaPageApiResponse.data.icon;
  final iconUrl = icon.isNotEmpty
      ? (icon.startsWith('http') ? icon : '${AppConstant.fileBaseUrl}$icon')
      : '';

  return Container(
    height: 200,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/background_image/headet_second_image_background.png"),
        fit: BoxFit.fill,
      ),
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 16, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: context.screenWidth * 0.35),
                child: Text(
                  state.sewaPageApiResponse.data.description.isNotEmpty
                      ? state.sewaPageApiResponse.data.description
                      : context.l10n.blessingsThroughGauSeva,
                  style: AppTextStyle.gilroyBold(context.screenWidth * 0.04),
                ),
              ),
              const SizedBox(height: 10),
              ...state.sewaPageApiResponse.data.lines.map(
                (line) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Row(
                    children: [
                      const Icon(Icons.verified, size: 16, color: Colors.black),
                      const SizedBox(width: 8),
                      Text(
                        line,
                        style: AppTextStyle.gilroySemiBold(context.screenWidth * 0.031),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 4,
          child: iconUrl.isNotEmpty
              ? Image.network(
                  iconUrl,
                  height: 130,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    "assets/new_design/icon/heart_ss.png",
                    height: 130,
                    fit: BoxFit.contain,
                  ),
                )
              : Image.asset(
                  "assets/new_design/icon/heart_ss.png",
                  height: 130,
                  fit: BoxFit.contain,
                ),
        ),
      ],
    ),
  );
}

Widget _buildPaymentTypeSelection(BuildContext context, SevaPageState state) {
  final isOneTime = state.paymentType == 'one_time';
  final isMonthly = state.paymentType == 'monthly';

  return Row(
    children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            context.read<SevaPageBloc>().add(
              const SelectPaymentType(paymentType: 'one_time'),
            );
          },
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isOneTime ? const Color(0xFFFFF8F2) : Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: isOneTime ? const Color(0xFF793C01) : const Color(0xFF848484),
                width: 0.8,
              ),
            ),
            child: Row(
              children: [
                _customRadio(isSelected: isOneTime),
                const SizedBox(width: 6),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.l10n.oneTimePayment,
                        style: AppTextStyle.gilroySemiBold(
                          10,
                          color: AppColor.fullBlack,
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        context.l10n.makeOneTimeContribution,
                        style: AppTextStyle.gilroyMedium(
                          8,
                          color: const Color(0xFF4A4A4A),
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: GestureDetector(
          onTap: () {
            context.read<SevaPageBloc>().add(
              const SelectPaymentType(paymentType: 'monthly'),
            );
          },
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isMonthly ? const Color(0xFFFFF8F2) : Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: isMonthly ? const Color(0xFF793C01) : const Color(0xFF848484),
                width: 0.8,
              ),
            ),
            child: Row(
              children: [
                _customRadio(isSelected: isMonthly),
                const SizedBox(width: 6),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.l10n.monthlyPayment,
                        style: AppTextStyle.gilroySemiBold(
                          10,
                          color: AppColor.fullBlack,
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        context.l10n.giveEveryMonthImpact,
                        style: AppTextStyle.gilroyMedium(
                          8,
                          color: const Color(0xFF4A4A4A),
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _buildOfferingItemsCard(BuildContext context, SevaPageState state) {
  final offerings = state.sewaPageApiResponse.data.offerings;
  final activeOfferings = offerings.where((item) => item.isActive).toList();
  if (activeOfferings.isEmpty) return const SizedBox.shrink();

  final isHindi = Localizations.localeOf(context).languageCode == 'hi';

  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color(0xFFFFE9EA),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.offeringItems,
          style: AppTextStyle.gilroyBold(
            16,
            color: AppColor.fullBlack,
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: activeOfferings.map((item) {
              final displayName = isHindi && item.nameHi.isNotEmpty
                  ? item.nameHi
                  : (item.nameEn.isNotEmpty
                      ? item.nameEn
                      : (item.name.isNotEmpty ? item.name : item.nameEn));

              final isSelected = state.selectedOfferingItem.isNotEmpty &&
                  (state.selectedOfferingItem == item.name ||
                      state.selectedOfferingItem == displayName);

              final imageUrl = item.imageUrl.isNotEmpty
                  ? (item.imageUrl.startsWith('http')
                      ? item.imageUrl
                      : AppConstant.fileBaseUrl + item.imageUrl)
                  : '';

              return GestureDetector(
                onTap: () {
                  context.read<SevaPageBloc>().add(
                    SelectOfferingItem(
                      item: item.name.isNotEmpty ? item.name : displayName,
                    ),
                  );
                },
                child: Container(
                  width: 76,
                  height: 76,
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected ? const Color(0xFF793C01) : const Color(0xFFE0E0E0),
                      width: isSelected ? 1.2 : 0.8,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              displayName,
                              style: AppTextStyle.gilroySemiBold(
                                10,
                                color: AppColor.fullBlack,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          _squareCheckbox(isSelected: isSelected),
                        ],
                      ),
                      const Spacer(),
                      imageUrl.isNotEmpty
                          ? Image.network(
                              imageUrl,
                              height: 32,
                              width: 32,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.fastfood, size: 24, color: AppColor.goldDark),
                            )
                          : const Icon(Icons.fastfood, size: 24, color: AppColor.goldDark),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ),
  );
}

Widget _squareCheckbox({required bool isSelected}) {
  return Container(
    width: 13,
    height: 13,
    decoration: BoxDecoration(
      color: isSelected ? const Color(0xFF793C01) : Colors.white,
      borderRadius: BorderRadius.circular(2),
      border: Border.all(
        color: isSelected ? const Color(0xFF793C01) : const Color(0xFF989898),
        width: 1.0,
      ),
    ),
    child: isSelected
        ? const Icon(
            Icons.check,
            size: 9,
            color: Colors.white,
          )
        : null,
  );
}

Widget _buildSelectFrequencyCard(BuildContext context, SevaPageState state) {
  if (state.paymentType != 'monthly') return const SizedBox.shrink();

  final frequencies = ['Daily', 'Weekly', 'Tithi'];

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 14),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color(0xFFF8EBBF),
      borderRadius: BorderRadius.circular(7),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.selectFrequency,
          style: AppTextStyle.gilroyBold(
            16,
            color: AppColor.fullBlack,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: frequencies.map((freq) {
            final isSelected = state.frequency.toLowerCase() == freq.toLowerCase();
            final freqLabel = freq == 'Daily'
                ? context.l10n.daily
                : (freq == 'Weekly' ? context.l10n.weekly : context.l10n.tithi);

            return Container(
              margin: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () {
                  context.read<SevaPageBloc>().add(
                    SelectFrequency(frequency: freq.toLowerCase()),
                  );

                  if (freq == 'Weekly') {
                    SelectDayBottomSheet.show(context);
                  } else if (freq == 'Tithi') {
                    SelectTithiBottomSheet.show(context);
                  }
                },
                child: Container(
                  height: 38,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFFFF8F2) : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: isSelected ? const Color(0xFF793C01) : const Color(0xFF848484),
                      width: 0.8,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _customRadio(isSelected: isSelected),
                      const SizedBox(width: 6),
                      Text(
                        freqLabel,
                        style: AppTextStyle.gilroyMedium(
                          12,
                          color: AppColor.fullBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    ),
  );
}

Widget _buildEscrowBanner(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFE1FFE2),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: const Color(0xFF36823A), width: 1.0),
    ),
    child: Text(
      context.l10n.escrowNoticeBanner,
      style: AppTextStyle.gilroyMedium(
        12,
        color: const Color(0xFF36823A),
      ),
    ),
  );
}

Widget _buildFrequencySummaryBanner(BuildContext context, SevaPageState state) {
  if (state.paymentType != 'monthly') return const SizedBox.shrink();
  if (state.selectedPrice == null) return const SizedBox.shrink();

  final amount = "₹${state.selectedPrice!.amount}";

  String message = '';
  if (state.frequency == 'weekly' && state.selectedDays.isNotEmpty) {
    message = context.l10n.yourWeeklySevaSummary(amount, state.selectedDays.length);
  } else if (state.frequency == 'tithi' && state.selectedTithis.isNotEmpty) {
    message = context.l10n.yourTithiSevaSummary(amount, state.selectedTithis.length);
  }

  if (message.isEmpty) return const SizedBox.shrink();

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 14),
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    decoration: BoxDecoration(
      color: const Color(0xFFE8F8F0),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: const Color(0xFFBBE5D0), width: 1.0),
    ),
    child: Text(
      message,
      textAlign: TextAlign.center,
      style: AppTextStyle.gilroySemiBold(
        13,
        color: const Color(0xFF1E6F48),
      ),
    ),
  );
}

Widget _buildSchedulePreviewCard(BuildContext context, SevaPageState state) {
  if (state.paymentType != 'monthly') return const SizedBox.shrink();

  if (state.frequency == 'weekly' && state.selectedDays.isEmpty) {
    return const SizedBox.shrink();
  }
  if (state.frequency == 'tithi' && state.selectedTithis.isEmpty) {
    return const SizedBox.shrink();
  }

  if (state.isSchedulePreviewLoading) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 14),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9F2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFFBEAD6), width: 1.0),
      ),
      child: const Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: Color(0xFF793C01),
          ),
        ),
      ),
    );
  }

  final previewData = state.schedulePreviewApiResponse.data;
  if (previewData.dates.isEmpty) return const SizedBox.shrink();

  final grossAmount = previewData.pricing.formattedGrossAmount.isNotEmpty
      ? previewData.pricing.formattedGrossAmount
      : (previewData.pricing.grossAmount > 0
          ? "₹${previewData.pricing.grossAmount}"
          : previewData.formattedCycleAmount);
  final perDayAmount = previewData.formattedPerDayAmount.isNotEmpty
      ? previewData.formattedPerDayAmount
      : "₹${previewData.perDayAmount}";

  final titleText = context.l10n.autoPayScheduleHeader(
    grossAmount,
    previewData.cycleDays,
    previewData.occurrenceCount,
    perDayAmount,
  );
  final subTitleText = context.l10n.moneyUsedOnDates(
    previewData.cycleStart,
    previewData.cycleEnd,
  );

  final List<List<SchedulePreviewDate>> dateColumns = [];
  for (int i = 0; i < previewData.dates.length; i += 3) {
    dateColumns.add(
      previewData.dates.sublist(
        i,
        i + 3 > previewData.dates.length ? previewData.dates.length : i + 3,
      ),
    );
  }

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 14),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF9F2),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFFBEAD6), width: 1.0),
    ),
    child: Column(
      children: [
        /// HEADER TITLE
        Text(
          titleText,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroyBold(
            13,
            color: const Color(0xFF793C01),
          ),
        ),
        const SizedBox(height: 6),

        /// SUBTITLE DATES RANGE
        Text(
          subTitleText,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroyMedium(
            11,
            color: const Color(0xFF6B5E52),
          ),
        ),
        const SizedBox(height: 14),

        /// DATES CHIPS (3 ROWS HORIZONTAL SCROLL)
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: dateColumns.map((colDates) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: colDates.map((d) {
                    final chipText = "${d.date} · ${d.formattedAmount}";
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFE8D4BE), width: 1.0),
                        ),
                        child: Text(
                          chipText,
                          style: AppTextStyle.gilroyMedium(
                            11,
                            color: const Color(0xFF5C3B1E),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ),
  );
}

Widget _buildContinueButton(BuildContext context, SevaPageState state) {
  if (state.selectedPrice == null) return const SizedBox.shrink();

  final previewData = state.schedulePreviewApiResponse.data;

  final bool isDisabled = state.paymentType == 'monthly' &&
      (state.isSchedulePreviewLoading ||
          (state.frequency == 'weekly' && state.selectedDays.isEmpty) ||
          (state.frequency == 'tithi' && state.selectedTithis.isEmpty) ||
          previewData.dates.isEmpty);

  String continuePriceText = "₹${state.selectedPrice?.amount ?? 0}";
  int taxAmountInt = state.selectedPrice?.amount ?? 0;

  if (state.paymentType == 'monthly') {
    if (state.frequency == 'tithi') {
      final occurrence = previewData.occurrenceCount > 0
          ? previewData.occurrenceCount
          : (state.selectedTithis.isNotEmpty ? state.selectedTithis.length : 1);
      final calcVendorAmount = (state.selectedPrice?.amount ?? 0) * occurrence;
      taxAmountInt = calcVendorAmount;

      if (previewData.pricing.formattedGrossAmount.isNotEmpty &&
          previewData.pricing.vendorAmount == calcVendorAmount) {
        continuePriceText = previewData.pricing.formattedGrossAmount;
      } else if (previewData.pricing.grossAmount > 0 &&
          previewData.pricing.vendorAmount == calcVendorAmount) {
        continuePriceText = "₹${previewData.pricing.grossAmount}";
      } else {
        continuePriceText = "₹$calcVendorAmount";
      }
    } else {
      if (previewData.pricing.formattedGrossAmount.isNotEmpty) {
        continuePriceText = previewData.pricing.formattedGrossAmount;
      } else if (previewData.pricing.grossAmount > 0) {
        continuePriceText = "₹${previewData.pricing.grossAmount}";
      } else if (previewData.formattedCycleAmount.isNotEmpty) {
        continuePriceText = previewData.formattedCycleAmount;
      } else {
        final occurrence = previewData.occurrenceCount > 0
            ? previewData.occurrenceCount
            : (state.frequency == 'daily' ? 30 : 0);
        continuePriceText = "₹${(state.selectedPrice?.amount ?? 0) * occurrence}";
      }

      if (previewData.pricing.vendorAmount > 0) {
        taxAmountInt = previewData.pricing.vendorAmount;
      } else {
        final occurrence = previewData.occurrenceCount > 0
            ? previewData.occurrenceCount
            : (state.frequency == 'daily' ? 30 : 0);
        taxAmountInt = (state.selectedPrice?.amount ?? 0) * occurrence;
      }
    }
  }

  return GestureDetector(
    onTap: isDisabled
        ? null
        : () {
            if (context.requireLogin()) return;

            BlocProvider.of<BookSewaPageBloc>(context).add(
              const BookSewaPageEvent.resetState(),
            );

            BlocProvider.of<BookSewaPageBloc>(context).add(
              SaveCategoryId(
                categoryId: "${state.categoryId}",
                catdes: "${state.categoryDescription}",
                catname: "${state.categoryName}",
              ),
            );

            BlocProvider.of<BookSewaPageBloc>(context).add(
              SavePaymentSelection(
                paymentType: state.paymentType,
                frequency: state.frequency,
                selectedDays: state.selectedDays,
                selectedTithis: state.selectedTithis,
                selectedOfferingItem: state.selectedOfferingItem,
              ),
            );

            BlocProvider.of<BookSewaPageBloc>(context).add(
              GetTax(
                amount: "$taxAmountInt",
              ),
            );

            Navigator.pushNamed(
              context,
              AppRoutes.BOOK_SEWA_PAGE,
            );
          },
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: isDisabled
            ? const Color(0xFF793C01).withValues(alpha: 0.45)
            : const Color(0xFF793C01),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.l10n.continueWithPrice(continuePriceText),
            style: AppTextStyle.gilroyBold(
              16,
              color: Colors.white.withValues(alpha: isDisabled ? 0.7 : 1.0),
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward,
            color: Colors.white.withValues(alpha: isDisabled ? 0.7 : 1.0),
            size: 18,
          ),
        ],
      ),
    ),
  );
}

String _getAmountSubtitle(SevaPageState state, AmountOption item) {
  if (state.paymentType == 'one_time') {
    return "";
  }
  final previewData = state.schedulePreviewApiResponse.data;
  final occurrenceCount = previewData.occurrenceCount > 0
      ? previewData.occurrenceCount
      : (state.frequency == 'daily' ? 30 : 0);

  if (occurrenceCount > 0) {
    final totalVendor = item.amount * occurrenceCount;
    return "${item.amount} * $occurrenceCount = ₹$totalVendor";
  }
  return item.label;
}

Widget _customRadio({required bool isSelected, double size = 12}) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isSelected ? const Color(0xFF793C01) : Colors.white,
      border: Border.all(
        color: isSelected ? const Color(0xFF793C01) : const Color(0xFF848484),
        width: 0.8,
      ),
    ),
    child: isSelected
        ? Center(
            child: Container(
              width: size * 0.4,
              height: size * 0.4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          )
        : null,
  );
}

class AmountBox extends StatelessWidget {
  final String amount;
  final String subtitle;
  final bool selected;

  const AmountBox({
    super.key,
    required this.amount,
    required this.subtitle,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return AmountBoxSmall(
        amount: amount,
        subtitle: subtitle,
        selected: selected,
      );
    } else {
      return AmountBoxMedium(
        amount: amount,
        subtitle: subtitle,
        selected: selected,
      );
    }
  }
}

class AmountBoxSmall extends StatelessWidget {
  final String amount;
  final String subtitle;
  final bool selected;

  const AmountBoxSmall({
    super.key,
    required this.amount,
    required this.subtitle,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF793C01) : Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: selected ? const Color(0xFF793C01) : const Color(0xFFD3E2FF),
          width: 1.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.038,
              color: selected ? AppColor.appWhiteColor : AppColor.fullBlack,
            ),
          ),
          if (subtitle.isNotEmpty) ...[
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroySemiBold(
                  context.screenWidth * 0.024,
                  color: selected ? AppColor.appWhiteColor : AppColor.fullBlack,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class AmountBoxMedium extends StatelessWidget {
  final String amount;
  final String subtitle;
  final bool selected;

  const AmountBoxMedium({
    super.key,
    required this.amount,
    required this.subtitle,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF793C01) : Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: selected ? const Color(0xFF793C01) : const Color(0xFFD3E2FF),
          width: 1.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount,
            style: AppTextStyle.gilroySemiBold(
              context.screenWidth * 0.03,
              color: selected ? AppColor.appWhiteColor : AppColor.fullBlack,
            ),
          ),
          if (subtitle.isNotEmpty) ...[
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroySemiBold(
                  context.screenWidth * 0.014,
                  color: selected ? AppColor.appWhiteColor : AppColor.fullBlack,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
