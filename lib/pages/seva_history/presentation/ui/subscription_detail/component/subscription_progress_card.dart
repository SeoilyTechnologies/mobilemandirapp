import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';

class SubscriptionProgressCard extends StatelessWidget {
  final SubscriptionDetailSummary summary;

  const SubscriptionProgressCard({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final int total = summary.total > 0 ? summary.total : 30;
    final int completed = summary.completed;
    final int scheduled = summary.scheduled > 0 ? summary.scheduled : (total - completed - summary.missed);
    final int missed = summary.missed;

    final double progressFraction = total > 0 ? (completed / total).clamp(0.0, 1.0) : 0.0;

    return Container(
      width: 0.9253 * screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 0.04 * screenWidth),
      padding: EdgeInsets.symmetric(
        horizontal: 0.0347 * screenWidth,
        vertical: 0.0148 * screenHeight,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEAD6),
        borderRadius: BorderRadius.circular(0.0133 * screenWidth),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row: Seva Progress Title & Progress Fraction (e.g. 0/30)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.sevaProgress,
                style: AppTextStyle.gilroyBold(
                  0.0373 * screenWidth,
                  color: Colors.black,
                ),
              ),
              Text(
                '$completed/$total',
                style: AppTextStyle.gilroySemiBold(
                  0.032 * screenWidth,
                  color: const Color(0xFF793C01),
                ),
              ),
            ],
          ),
          SizedBox(height: 0.0098 * screenHeight),

          /// Progress Bar (Track & Fill)
          LayoutBuilder(
            builder: (context, constraints) {
              final double barWidth = constraints.maxWidth;
              return Stack(
                children: [
                  Container(
                    width: barWidth,
                    height: 0.0062 * screenHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFDFAD),
                      borderRadius: BorderRadius.circular(0.007 * screenWidth),
                    ),
                  ),
                  Container(
                    width: barWidth * progressFraction,
                    height: 0.0062 * screenHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFF793C01),
                      borderRadius: BorderRadius.circular(0.007 * screenWidth),
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 0.0111 * screenHeight),

          /// Legend Row: Completed, Upcoming, Missed
          Row(
            children: [
              /// Completed
              _buildLegendDot(const Color(0xFF408D01), screenWidth),
              SizedBox(width: 0.0107 * screenWidth),
              Text(
                '${context.l10n.completed} ($completed)',
                style: AppTextStyle.gilroyMedium(
                  0.0267 * screenWidth,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 0.04 * screenWidth),

              /// Upcoming
              _buildLegendDot(const Color(0xFFE4AE23), screenWidth),
              SizedBox(width: 0.0107 * screenWidth),
              Text(
                context.l10n.upcomingWithCount(scheduled),
                style: AppTextStyle.gilroyMedium(
                  0.0267 * screenWidth,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 0.04 * screenWidth),

              /// Missed
              _buildLegendDot(const Color(0xFFEA0000), screenWidth),
              SizedBox(width: 0.0107 * screenWidth),
              Text(
                context.l10n.missedWithCount(missed),
                style: AppTextStyle.gilroyMedium(
                  0.0267 * screenWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendDot(Color color, double screenWidth) {
    return Container(
      width: 0.0109 * screenWidth,
      height: 0.0109 * screenWidth,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
