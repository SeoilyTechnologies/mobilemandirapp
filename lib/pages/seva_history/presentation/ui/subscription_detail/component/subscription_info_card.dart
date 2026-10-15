import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/utils/seva_date_helper.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';

class SubscriptionInfoCard extends StatelessWidget {
  final SevaSubscriptionDetailData data;

  const SubscriptionInfoCard({
    super.key,
    required this.data,
  });

  static String _formatDate(String raw, {bool isHindi = false}) {
    if (raw.trim().isEmpty) return isHindi ? '24 अगस्त, 2026' : '24 Aug, 2026';
    return SevaDateHelper.formatSevaDate(raw, isHindi: isHindi);
  }

  static String _calculateNextRenewal(String cycleEndAt, String status, {bool isHindi = false}) {
    return SevaDateHelper.calculateNextRenewal(cycleEndAt, status, isHindi: isHindi);
  }

  String _formatFrequency(BuildContext context) {
    if (data.weekdays.isNotEmpty) {
      final formattedDays = data.weekdays.map((w) {
        if (w.isEmpty) return '';
        return '${w[0].toUpperCase()}${w.substring(1).toLowerCase()}';
      }).join(', ');
      return '${context.l10n.weekly} ($formattedDays)';
    }
    final freq = data.frequency.trim().toLowerCase();
    if (freq == 'daily') return context.l10n.daily;
    if (freq == 'weekly') return context.l10n.weekly;
    if (freq == 'tithi') return context.l10n.tithi;
    if (freq.isEmpty) return context.l10n.daily;
    return '${freq[0].toUpperCase()}${freq.substring(1)}';
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final donorName = data.donorName.isNotEmpty ? data.donorName : 'Abhishek Kumar';
    final donorPhone = data.donorPhone.isNotEmpty
        ? (data.donorPhone.startsWith('+') ? data.donorPhone : '+91 ${data.donorPhone}')
        : '+91 9876543210';
    final startDate = _formatDate(data.cycleStartAt, isHindi: isHindi);
    final endDate = _formatDate(data.cycleEndAt, isHindi: isHindi);
    final nextRenewal = _calculateNextRenewal(data.cycleEndAt, data.status, isHindi: isHindi);
    final isCancelled = data.status.toLowerCase().trim() == 'cancelled';
    final hasCancelledAt = isCancelled && data.cancelledAt != null && data.cancelledAt!.isNotEmpty;

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
          /// Header: Icon + Title "Subscription Details"
          Row(
            children: [
              SvgPicture.asset(
                'assets/new_design/icon/subscribe_5836056 3.svg',
                width: 0.0507 * screenWidth,
                height: 0.0507 * screenWidth,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 0.024 * screenWidth),
              Text(
                context.l10n.subscriptionDetails,
                style: AppTextStyle.gilroyBold(
                  0.0373 * screenWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 0.0123 * screenHeight),

          /// Divider
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xFFDCDCDC),
          ),
          SizedBox(height: 0.0123 * screenHeight),

          /// Info Rows
          _buildInfoRow(
            icon: SvgPicture.asset(
              'assets/new_design/icon/charm_person.svg',
              width: 0.0427 * screenWidth,
              height: 0.0427 * screenWidth,
            ),
            label: context.l10n.donorName,
            value: donorName,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: Image.asset(
              'assets/new_design/icon/call_outline.png',
              width: 0.0373 * screenWidth,
              height: 0.0373 * screenWidth,
            ),
            label: context.l10n.phone,
            value: donorPhone,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: SvgPicture.asset(
              'assets/new_design/icon/waves_7279961 1.svg',
              width: 0.0373 * screenWidth,
              height: 0.0373 * screenWidth,
            ),
            label: context.l10n.frequency,
            value: _formatFrequency(context),
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: SvgPicture.asset(
              'assets/new_design/icon/calendar_12326637 1.svg',
              width: 0.032 * screenWidth,
              height: 0.032 * screenWidth,
            ),
            label: context.l10n.sevaStart,
            value: startDate,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: SvgPicture.asset(
              'assets/new_design/icon/calendar_12326637 2.svg',
              width: 0.032 * screenWidth,
              height: 0.032 * screenWidth,
            ),
            label: context.l10n.sevaEnd,
            value: endDate,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: SvgPicture.asset(
              'assets/new_design/icon/sync_7477044 1.svg',
              width: 0.0267 * screenWidth,
              height: 0.0267 * screenWidth,
            ),
            label: context.l10n.totalCycle,
            value: '1',
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          _buildInfoRow(
            icon: Image.asset(
              'assets/new_design/icon/solar_calendar-outline.png',
              width: 0.0267 * screenWidth,
              height: 0.0267 * screenWidth,
            ),
            label: context.l10n.nextRenewal,
            value: nextRenewal,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            isLast: !hasCancelledAt,
          ),
          if (hasCancelledAt)
            _buildInfoRow(
              icon: SvgPicture.asset(
                'assets/new_design/icon/calendar_12326637 2.svg',
                width: 0.032 * screenWidth,
                height: 0.032 * screenWidth,
              ),
              label: context.l10n.cancelledOn,
              value: _formatDate(data.cancelledAt!, isHindi: isHindi),
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              isLast: true,
            ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required Widget icon,
    required String label,
    required String value,
    required double screenWidth,
    required double screenHeight,
    bool isLast = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 0.016 * screenHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 0.048 * screenWidth,
                child: Center(child: icon),
              ),
              SizedBox(width: 0.0267 * screenWidth),
              Text(
                label,
                style: AppTextStyle.gilroyMedium(
                  0.032 * screenWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.gilroyBold(
                0.032 * screenWidth,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
