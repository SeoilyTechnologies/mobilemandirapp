import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';

class SubscriptionPaymentBreakdownCard extends StatelessWidget {
  final SevaSubscriptionDetailData data;

  const SubscriptionPaymentBreakdownCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final sevaAmount = data.formattedVendorAmount.isNotEmpty
        ? data.formattedVendorAmount
        : (data.vendorAmount > 0 ? '₹${data.vendorAmount}' : '₹2,100');

    final platformFee = data.formattedPlatformFee.isNotEmpty
        ? data.formattedPlatformFee
        : (data.platformFee > 0 ? '₹${data.platformFee}' : '₹105');

    final gst = data.formattedGstAmount.isNotEmpty
        ? data.formattedGstAmount
        : (data.gstAmount > 0 ? '₹${data.gstAmount}' : '₹19');

    final totalPerCycle = data.formattedAmount.isNotEmpty
        ? data.formattedAmount
        : (data.amount > 0 ? '₹${data.amount}' : '₹2,224');

    return Container(
      width: 0.9253 * screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 0.04 * screenWidth),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0133 * screenWidth),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F9E9E9E),
            blurRadius: 15,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 0.0347 * screenWidth,
        vertical: 0.0197 * screenHeight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header: Icon + Title "Payment Breakdown"
          Row(
            children: [
              SvgPicture.asset(
                'assets/new_design/icon/medical_16667682 1.svg',
                width: 0.0507 * screenWidth,
                height: 0.0507 * screenWidth,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 0.024 * screenWidth),
              Text(
                context.l10n.paymentBreakdown,
                style: AppTextStyle.gilroyBold(
                  0.0373 * screenWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 0.0197 * screenHeight),

          /// 2x2 Grid of Price Boxes
          Row(
            children: [
              Expanded(
                child: _buildBreakdownBox(
                  label: context.l10n.sevaAmount,
                  value: sevaAmount,
                  bgColor: const Color(0xFFFEFEED),
                  borderColor: const Color(0xFFE4AE23),
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ),
              SizedBox(width: 0.04 * screenWidth),
              Expanded(
                child: _buildBreakdownBox(
                  label: context.l10n.platformFee,
                  value: platformFee,
                  bgColor: const Color(0xFFFEFEED),
                  borderColor: const Color(0xFFE4AE23),
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ),
            ],
          ),
          SizedBox(height: 0.0148 * screenHeight),
          Row(
            children: [
              Expanded(
                child: _buildBreakdownBox(
                  label: context.l10n.gst,
                  value: gst,
                  bgColor: const Color(0xFFFEFEED),
                  borderColor: const Color(0xFFE4AE23),
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ),
              SizedBox(width: 0.04 * screenWidth),
              Expanded(
                child: _buildBreakdownBox(
                  label: context.l10n.totalPerCycle,
                  value: totalPerCycle,
                  bgColor: const Color(0xFFFFF0E3),
                  borderColor: const Color(0xFF793C01),
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBreakdownBox({
    required String label,
    required String value,
    required Color bgColor,
    required Color borderColor,
    required double screenWidth,
    required double screenHeight,
  }) {
    return Container(
      height: 0.0813 * screenHeight,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
          width: 0.0014 * screenWidth,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(0.0138 * screenWidth),
      ),
      padding: EdgeInsets.symmetric(vertical: 0.0098 * screenHeight),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppTextStyle.gilroyMedium(
              0.0275 * screenWidth,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 0.0049 * screenHeight),
          Text(
            value,
            textAlign: TextAlign.center,
            style: AppTextStyle.gilroyBold(
              0.0413 * screenWidth,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
