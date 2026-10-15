import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/component/network_image.dart';

class MobileHomeSevaCard extends StatelessWidget {
  final String imagePath;
  final String sevaName;
  final String amount;
  final String date;
  final String paymentStatus;
  final String status;
  final String statusLable;

  const MobileHomeSevaCard({
    super.key,
    required this.imagePath,
    required this.sevaName,
    required this.amount,
    required this.date,
    required this.paymentStatus,
    required this.status,
    required this.statusLable,
  });

  static String formatSevaDate(String apiDate) {
    if (apiDate.trim().isEmpty) return '';

    try {
      final date = DateTime.parse(apiDate);
      return DateFormat('d MMMM, yyyy').format(date);
    } catch (_) {
      return apiDate;
    }
  }

  static String formatSevaAmount({
    required String formattedFinalPayment,
    required String formattedAmount,
    required int amount,
  }) {
    if (formattedFinalPayment.trim().isNotEmpty) {
      return formattedFinalPayment;
    }
    if (formattedAmount.trim().isNotEmpty) {
      return formattedAmount;
    }
    return '₹$amount';
  }

  static String formatSevaStatus(String paymentStatus, String status) {
    final value = paymentStatus.trim().isNotEmpty ? paymentStatus : status;
    if (value.trim().isEmpty) return 'Pending';

    return value
        .split(' ')
        .map(
          (word) => word.isEmpty
              ? word
              : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}',
        )
        .join(' ');
  }

  Color _statusBackgroundColor(String value) {
    switch (value.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return AppColor.lightgreenbackground;
      case 'pending':
      case 'processing':
      case 'under_review':
      return const Color(0xFFFFF4E0);
      case 'failed':
      case 'time_out':
      case 'issue_raised':
      case 'cancelled':
        return const Color(0xFFFFECEC);
      default:
        return AppColor.lightgreenbackground;
    }
  }

  Color _statusBorderColor(String value) {
    switch (value.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return AppColor.appNewGreen;
      case 'pending':
      case 'processing':
      case 'under_review':
        return AppColor.appYellow;
      case 'failed':
      case 'time_out':
      case 'issue_raised':
      case 'cancelled':
        return AppColor.appRed;
      default:
        return AppColor.appNewGreen;
    }
  }

  Color _statusTextColor(String value) {
    switch (value.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return AppColor.appNewGreen;
      case 'pending':
      case 'processing':
      case 'under_review':
        return AppColor.newsecondaruy;
      case 'failed':
      case 'time_out':
      case 'issue_raised':
      case 'cancelled':
        return AppColor.appRed;
      default:
        return AppColor.appNewGreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    //final displayStatus = formatSevaStatus(paymentStatus, status);
    final displayStatus = status.trim();
    final statusStyle = _getStatusStyle(displayStatus);
    //final statusStyle = _getStatusStyle(displayStatus);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: AppColor.appSantbackground,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: NetworkImageWidget(
                imageUrl: imagePath.isEmpty
                    ? ''
                    : '${AppConstant.fileBaseUrl}$imagePath',
                fullimage: true,
                imageHeight: 64,
                imageWidth: 64,
                radiusAll: 8,
                imageFitType: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  sevaName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.04,
                    color: AppColor.fullBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  amount,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.036,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (date.isNotEmpty)
                Text(
                  date,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.03,
                    color: AppColor.newGreyy,
                  ),
                ),
              if (date.isNotEmpty) const SizedBox(height: 6),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              //   decoration: BoxDecoration(
              //     color: _statusBackgroundColor(displayStatus),
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(
              //       color: _statusBorderColor(displayStatus),
              //       width: 1,
              //     ),
              //   ),
              //   child: Text(
              //     statusLable,
              //     style: AppTextStyle.gilroyMedium(
              //       context.screenWidth * 0.028,
              //       color: _statusTextColor(displayStatus),
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusStyle.backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: statusStyle.borderColor,
                    width: 1,
                  ),
                ),
                child: Text(
                  statusLable,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.028,
                    color: statusStyle.textColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class StatusStyle {
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const StatusStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });
}

StatusStyle _getStatusStyle(String status) {
  switch (status.trim().toLowerCase()) {
  // Green
    case 'completed':
    case 'success':
    case 'paid':
      return StatusStyle(
        backgroundColor: const Color(0xFFE8F9ED),
        borderColor: const Color(0xFF18C54A),
        textColor: const Color(0xFF18C54A),
      );

  // Yellow
    case 'pending':
      return StatusStyle(
        backgroundColor: const Color(0xFFFFF8E5),
        borderColor: const Color(0xFFE4B200),
        textColor: const Color(0xFFE4B200),
      );

  // Orange
    case 'under_review':
    case 'processing':
    case 'in_review':
      return StatusStyle(
        backgroundColor: const Color(0xFFFFF1E8),
        borderColor: const Color(0xFFFF8A1D),
        textColor: const Color(0xFFFF8A1D),
      );

  // Red
    case 'failed':
    case 'cancelled':
    case 'refunded':
    case 'refund':
    case 'issue_raised':
    case 'rejected':
    case 'time_out':
      return StatusStyle(
        backgroundColor: const Color(0xFFFFECEC),
        borderColor: const Color(0xFFFF3B30),
        textColor: const Color(0xFFFF3B30),
      );

    default:
      return StatusStyle(
        backgroundColor: const Color(0xFFE8F9ED),
        borderColor: const Color(0xFF18C54A),
        textColor: const Color(0xFF18C54A),
      );
  }
}