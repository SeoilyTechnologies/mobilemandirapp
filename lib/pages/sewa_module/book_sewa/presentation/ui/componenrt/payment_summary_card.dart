import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../bloc/book_sewa_page_bloc.dart';
import '../../../bloc/book_sewa_page_state.dart';

class PaymentSummaryCard extends StatelessWidget {


  const PaymentSummaryCard({
    super.key,

  });


  String formatPrice(double value) {
    return "₹${value.toInt()}";
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookSewaPageBloc, BookSewaPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final payment = state.priceTaxApiResponse.data;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              _summaryRow(
                context,
                title: context.l10n.sevaAmount,
                value: payment.formattedVendorAmount,
              ),

              const SizedBox(height: 16),
              const Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD8D8D8),
              ),
              const SizedBox(height: 10),

              _summaryRow(
                context,
                title: context.l10n.platformFee,
                value: payment.formattedPlatformFee,
              ),

              if (payment.gstAmount > 0) ...[
                const SizedBox(height: 10),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFD8D8D8),
                ),
                const SizedBox(height: 10),

                _summaryRow(
                  context,
                  title: context.l10n.gst,
                  value: payment.formattedGstAmount,
                ),
              ],

              const SizedBox(height: 10),
              const Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFD8D8D8),
              ),
              const SizedBox(height: 10),

              _summaryRow(
                context,
                title: context.l10n.total,
                value: payment.formattedGrossAmount,
                isBold: true,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _summaryRow(BuildContext context, {
    required String title,
    required String value,
    bool isBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroyBold(context.screenWidth * 0.034),
        ),
        Text(
          value,
          style: AppTextStyle.gilroyBold(context.screenWidth * 0.032),
        ),
      ],
    );
  }
}
