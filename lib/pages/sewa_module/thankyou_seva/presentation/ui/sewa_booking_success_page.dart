import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/sewa_module/thankyou_seva/presentation/bloc/thankyou_sewa_page_bloc.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../book_sewa/bloc/book_sewa_page_bloc.dart';
import '../../../book_sewa/bloc/book_sewa_page_event.dart';
import 'package:mandirapp/pages/sewa_module/sewa_page/data/entity/thankyou_sewa/thankyou_seva_api_response.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import '../bloc/thankyou_sewa_page_state.dart';

class SewaBookingSuccessPage extends StatelessWidget {
  const SewaBookingSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();

    return BlocConsumer<ThankyouSewaPageBloc, ThankyouSewaPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final isSubscription = state.thankyouApoiResponse.data.upcoming.isNotEmpty;

        final title = isSubscription
            ? (state.thankyouApoiResponse.data.thankYouTitle.isNotEmpty
                ? state.thankyouApoiResponse.data.thankYouTitle
                : context.l10n.autopayStarted)
            : state.thankyouApoiResponse.data.thankYouTitle;

        final grossAmt = state.thankyouApoiResponse.data.transaction.formattedGrossAmount.isNotEmpty
            ? state.thankyouApoiResponse.data.transaction.formattedGrossAmount
            : '₹${state.thankyouApoiResponse.data.receipt.title}';
        final message = isSubscription
            ? (state.thankyouApoiResponse.data.thankYouMessage.isNotEmpty
                ? state.thankyouApoiResponse.data.thankYouMessage
                : context.l10n.autopayStartedDesc(grossAmt, 30))
            : state.thankyouApoiResponse.data.thankYouMessage;

        return Scaffold(
          backgroundColor: AppColor.appSantbackground,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: context.screenHeight * 0.03),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/background_image/white_sewa_circle.png',
                        width: context.screenWidth * 0.45,
                        fit: BoxFit.contain,
                      ),
                      Image.network(
                        AppConstant.fileBaseUrl +
                            state.thankyouApoiResponse.data.heroImage,
                        width: context.screenWidth * 0.34,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.058,
                      color: AppColor.goldDark,
                    ),
                  ),
                  if (!isSubscription) ...[
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColor.goldDark.withOpacity(0.35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.favorite_border,
                            size: 16,
                            color: AppColor.goldDark,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColor.goldDark.withOpacity(0.35),
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 12),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.036,
                      color: const Color(0xFF6B5E52),
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (isSubscription)
                    _buildSubscriptionAutopayCard(
                      context,
                      state.thankyouApoiResponse.data,
                    )
                  else ...[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.goldDark,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          _detailRow(
                            context,
                            iconBackground: const Color(0xFFFFE8CC),
                            icon: Image.network(
                              AppConstant.fileBaseUrl +
                                  '${state.thankyouApoiResponse.data.service.icon}',
                              width: 22,
                              height: 22,
                            ),
                            label: context.l10n.sevaName,
                            value: state.thankyouApoiResponse.data.receipt.sevaType.isNotEmpty
                                ? state.thankyouApoiResponse.data.receipt.sevaType
                                : state.thankyouApoiResponse.data.service.name,
                          ),
                          _divider(),
                          _detailRow(
                            context,
                            iconBackground: AppColor.lightgreenbackground,
                            icon: Icon(
                              Icons.person_outline,
                              color: AppColor.appNewGreen,
                              size: 22,
                            ),
                            label: context.l10n.donorName,
                            value: state.thankyouApoiResponse.data.receipt.donorName,
                          ),
                          _divider(),
                          _detailRow(
                            context,
                            iconBackground: const Color(0xFFE8F2FF),
                            icon: Text(
                              '₹',
                              style: AppTextStyle.gilroyBold(
                                18,
                                color: const Color(0xFF2F6FB2),
                              ),
                            ),
                            label: context.l10n.sevaAmount,
                            value: state.thankyouApoiResponse.data.transaction.formattedGrossAmount,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: AppColor.lightgreenbackground,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColor.appNewGreen,
                          width: 1.2,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 34,
                            height: 34,
                            decoration: const BoxDecoration(
                              color: AppColor.appNewGreen,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${state.thankyouApoiResponse.data.impact.title}',
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.04,
                                    color: AppColor.appNewGreen,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${state.thankyouApoiResponse.data.impact.message}',
                                  style: AppTextStyle.gilroyMedium(
                                    context.screenWidth * 0.033,
                                    color: AppColor.fullBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  SizedBox(height: context.screenHeight * 0.03),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _shareSeva(context, state: state),
                          child: Container(
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColor.goldDark,
                                width: 1.2,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  color: AppColor.goldDark,
                                  size: 18,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  context.l10n.share,
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.036,
                                    color: AppColor.goldDark,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _doAnotherSeva(context),
                          child: Container(
                            height: 44,
                            decoration: BoxDecoration(
                              color: AppColor.goldDark,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              isSubscription ? context.l10n.doAnotherSeva : context.l10n.goToHome,
                              style: AppTextStyle.gilroyBold(
                                context.screenWidth * 0.034,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSubscriptionAutopayCard(
    BuildContext context,
    ThankYouSevaData data,
  ) {
    final List<List<UpcomingSevaDate>> dateColumns = [];
    for (int i = 0; i < data.upcoming.length; i += 3) {
      dateColumns.add(
        data.upcoming.sublist(
          i,
          i + 3 > data.upcoming.length ? data.upcoming.length : i + 3,
        ),
      );
    }

    final String sevaName = data.receipt.sevaType.isNotEmpty
        ? data.receipt.sevaType
        : data.service.name;
    final String amount = data.transaction.formattedGrossAmount.isNotEmpty
        ? data.transaction.formattedGrossAmount
        : "₹${data.receipt.title}";

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFEFE6D9), width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sevaName,
                      style: AppTextStyle.gilroyBold(
                        18,
                        color: const Color(0xFF3B1E06),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${context.l10n.frequency}: ${data.receipt.paymentStatusLabel.isNotEmpty ? data.receipt.paymentStatusLabel : 'tithi'}",
                      style: AppTextStyle.gilroyMedium(
                        13,
                        color: const Color(0xFF887D73),
                      ),
                    ),
                    if (data.receipt.donorName.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        "${context.l10n.donor}: ${data.receipt.donorName}",
                        style: AppTextStyle.gilroyBold(
                          13,
                          color: const Color(0xFF793C01),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                amount,
                style: AppTextStyle.gilroyBold(
                  22,
                  color: const Color(0xFF3B1E06),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Container(
            height: 1,
            color: const Color(0xFFF2EAE0),
          ),
          const SizedBox(height: 14),

          Text(
            context.l10n.upcomingDatesMoneyUse,
            style: AppTextStyle.gilroyMedium(
              12,
              color: const Color(0xFF887D73),
            ),
          ),
          const SizedBox(height: 10),

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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF8EE),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFFF7E4CD),
                              width: 1.0,
                            ),
                          ),
                          child: Text(
                            chipText,
                            style: AppTextStyle.gilroyBold(
                              12,
                              color: const Color(0xFF793C01),
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
          const SizedBox(height: 14),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFE2F8ED),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.check,
                  size: 14,
                  color: Color(0xFF1E8855),
                ),
                const SizedBox(width: 4),
                Text(
                  context.l10n.active,
                  style: AppTextStyle.gilroyBold(
                    12,
                    color: const Color(0xFF1E8855),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(height: 1, color: Colors.white.withOpacity(0.18));
  }

  Widget _detailRow(
    BuildContext context, {
    required Color iconBackground,
    required Widget icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: icon,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.03,
                    color: Colors.white.withOpacity(0.75),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _shareSeva(BuildContext context, {ThankyouSewaPageState? state}) {
    ShareHelper.shareSeva(
      sevaType: state?.thankyouApoiResponse.data.receipt.sevaType,
    );
  }

  void _doAnotherSeva(BuildContext context) {
    BlocProvider.of<BookSewaPageBloc>(
      context,
    ).add(const BookSewaPageEvent.resetState());

    context.read<MobileHomeBloc>().add(
      MobileHomeEvent.selectHomeForYouTab(index: 0),
    );

    BlocProvider.of<MobileHomeBloc>(
      context,
    ).add(const MobileHomeEvent.getHomeForYouData(type: "aartibhajan"));
    BlocProvider.of<MobileHomeBloc>(
      context,
    ).add(
      MobileHomeEvent.changeTopTab(0),
    );
    BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.APPLICATION,
      (route) => false,
    );
  }
}
