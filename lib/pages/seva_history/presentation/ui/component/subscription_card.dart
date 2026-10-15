import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/seva_date_helper.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_response.dart';

class SubscriptionCard extends StatelessWidget {
  final SevaSubscriptionItem item;
  final bool? hasVideoProof;
  final VoidCallback? onTap;
  final VoidCallback? onVideoProofTap;

  const SubscriptionCard({
    super.key,
    required this.item,
    this.hasVideoProof,
    this.onTap,
    this.onVideoProofTap,
  });

  static String formatSevaDate(String apiDate, {bool isHindi = false}) {
    return SevaDateHelper.formatSevaDate(apiDate, isHindi: isHindi);
  }

  Color _statusBgColor(String st) {
    switch (st.toLowerCase()) {
      case 'active':
      case 'completed':
      case 'success':
        return const Color(0xFFE5FFE7);
      case 'pending':
      case 'processing':
      case 'review':
        return const Color(0xFFFFF6E0);
      case 'cancelled':
      case 'canceled':
      case 'failed':
      case 'expired':
        return const Color(0xFFFFECEC);
      default:
        return const Color(0xFFE5FFE7);
    }
  }

  Color _statusBorderColor(String st) {
    switch (st.toLowerCase()) {
      case 'active':
      case 'completed':
      case 'success':
        return const Color(0xFF00A613);
      case 'pending':
      case 'processing':
      case 'review':
        return const Color(0x33C8922A);
      case 'cancelled':
      case 'canceled':
      case 'failed':
      case 'expired':
        return const Color(0xFFFF4D4F);
      default:
        return const Color(0xFF00A613);
    }
  }

  Color _statusTextColor(String st) {
    switch (st.toLowerCase()) {
      case 'active':
      case 'completed':
      case 'success':
        return const Color(0xFF00A613);
      case 'pending':
      case 'processing':
      case 'review':
        return const Color(0xFF6B3200);
      case 'cancelled':
      case 'canceled':
      case 'failed':
      case 'expired':
        return const Color(0xFFD32F2F);
      default:
        return const Color(0xFF00A613);
    }
  }

  String _formatFrequency(BuildContext context) {
    final freq = item.frequency.trim().toLowerCase();
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

    final imagePath = item.service.icon;
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final sevaTitle = isHindi
        ? (item.sevaNameHi.isNotEmpty
            ? item.sevaNameHi
            : (item.service.nameHi.isNotEmpty
                ? item.service.nameHi
                : (item.sevaName.isNotEmpty
                    ? item.sevaName
                    : (item.service.name.isNotEmpty
                        ? item.service.name
                        : 'गौ सेवा'))))
        : (item.sevaName.isNotEmpty
            ? item.sevaName
            : (item.service.nameEn.isNotEmpty
                ? item.service.nameEn
                : (item.service.name.isNotEmpty
                    ? item.service.name
                    : (item.sevaNameHi.isNotEmpty
                        ? item.sevaNameHi
                        : 'Gau Seva'))));

    final donorTitle = item.donorName.isNotEmpty
        ? context.l10n.byDonor(item.donorName)
        : '';

    final rawStatus = (item.status.isNotEmpty ? item.status : item.statusLabel).toLowerCase().trim();
    final String statusText;
    if (rawStatus == 'active') {
      statusText = context.l10n.active;
    } else if (rawStatus == 'completed' || rawStatus == 'success' || rawStatus == 'done') {
      statusText = context.l10n.completed;
    } else if (rawStatus == 'cancelled' || rawStatus == 'canceled' || rawStatus == 'failed') {
      statusText = context.l10n.cancelled;
    } else if (rawStatus == 'pending' || rawStatus == 'processing' || rawStatus == 'review' || rawStatus == 'under_review') {
      statusText = context.l10n.pending;
    } else {
      statusText = item.statusLabel.isNotEmpty
          ? item.statusLabel
          : (item.status.isNotEmpty
              ? '${item.status[0].toUpperCase()}${item.status.substring(1).toLowerCase()}'
              : context.l10n.active);
    }

    final amountText = item.formattedAmount.isNotEmpty
        ? item.formattedAmount
        : item.amount > 0
            ? '₹${item.amount}'
            : '₹1,100';

    final dateStr = item.createdAt.isNotEmpty
        ? formatSevaDate(item.createdAt, isHindi: isHindi)
        : item.cycleStartAt.isNotEmpty
            ? formatSevaDate(item.cycleStartAt, isHindi: isHindi)
            : (isHindi ? '17 अगस्त, 2026' : '17 Aug, 2026');

    final endsDateStr = item.cycleEndAt.isNotEmpty
        ? formatSevaDate(item.cycleEndAt, isHindi: isHindi)
        : (isHindi ? '23 सितंबर, 2026' : '23 Sep, 2026');

    final totalOccurrences =
        item.totalOccurrences > 0 ? item.totalOccurrences : 30;
    final completedOccurrences = item.completedOccurrences;

    final bool isProofAvailable = hasVideoProof ??
        (item.proofAvailable && completedOccurrences > 0);

    Widget thumbnailWidget;
    if (imagePath.isNotEmpty) {
      if (imagePath.startsWith('http')) {
        thumbnailWidget = NetworkImageWidget(
          imageUrl: imagePath,
          fullimage: true,
          imageHeight: 0.0897 * screenHeight,
          imageWidth: 0.199 * screenWidth,
          radiusAll: 0.0086 * screenWidth,
          imageFitType: BoxFit.cover,
        );
      } else if (imagePath.startsWith('assets/')) {
        thumbnailWidget = Image.asset(
          imagePath,
          height: 0.0897 * screenHeight,
          width: 0.199 * screenWidth,
          fit: BoxFit.cover,
        );
      } else {
        thumbnailWidget = NetworkImageWidget(
          imageUrl: '${AppConstant.fileBaseUrl}$imagePath',
          fullimage: true,
          imageHeight: 0.0897 * screenHeight,
          imageWidth: 0.199 * screenWidth,
          radiusAll: 0.0086 * screenWidth,
          imageFitType: BoxFit.cover,
        );
      }
    } else {
      thumbnailWidget = Padding(
        padding: EdgeInsets.all(0.016 * screenWidth),
        child: Image.asset(
          'assets/icons/cow.png',
          height: 0.0897 * screenHeight,
          width: 0.199 * screenWidth,
          fit: BoxFit.contain,
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 0.04 * screenWidth,
          vertical: 0.0086 * screenHeight,
        ),
        padding: EdgeInsets.all(0.032 * screenWidth),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.0169 * screenWidth),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Row: Thumbnail + Info (Title, Donor, Frequency & Date) + (Amount & Status)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Thumbnail
                Container(
                  width: 0.199 * screenWidth,
                  height: 0.0897 * screenHeight,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF1E3),
                    borderRadius: BorderRadius.circular(
                      0.0086 * screenWidth,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      0.0086 * screenWidth,
                    ),
                    child: thumbnailWidget,
                  ),
                ),
                SizedBox(width: 0.032 * screenWidth),

                /// Middle info column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sevaTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroyBold(
                          0.0439 * screenWidth,
                          color: Colors.black,
                        ),
                      ),
                      if (donorTitle.isNotEmpty) ...[
                        SizedBox(height: 0.0037 * screenHeight),
                        Text(
                          donorTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.gilroyMedium(
                            0.027 * screenWidth,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      SizedBox(height: 0.0062 * screenHeight),
                      Row(
                        children: [
                          /// Frequency badge (pink)
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.0169 * screenWidth,
                              vertical: 0.0025 * screenHeight,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFE3F9),
                              borderRadius: BorderRadius.circular(
                                0.044 * screenWidth,
                              ),
                            ),
                            child: Text(
                              _formatFrequency(context),
                              textAlign: TextAlign.center,
                              style: AppTextStyle.gilroyMedium(
                                0.0226 * screenWidth,
                                color: const Color(0xFFAF2994),
                              ),
                            ),
                          ),
                          SizedBox(width: 0.0213 * screenWidth),

                          /// Date text
                          Text(
                            dateStr,
                            style: AppTextStyle.gilroyMedium(
                              0.032 * screenWidth,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 0.0213 * screenWidth),

                /// Amount & Status Badge
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amountText,
                      textAlign: TextAlign.right,
                      style: AppTextStyle.gilroyBold(
                        0.0405 * screenWidth,
                        color: const Color(0xFF793C01),
                      ),
                    ),
                    SizedBox(height: 0.0074 * screenHeight),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.0213 * screenWidth,
                        vertical: 0.0037 * screenHeight,
                      ),
                      decoration: BoxDecoration(
                        color: _statusBgColor(item.status),
                        border: Border.all(
                          width: 0.002 * screenWidth,
                          color: _statusBorderColor(item.status),
                        ),
                        borderRadius: BorderRadius.circular(
                          0.0396 * screenWidth,
                        ),
                      ),
                      child: Text(
                        statusText,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyMedium(
                          0.0213 * screenWidth,
                          color: _statusTextColor(item.status),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 0.0123 * screenHeight),

            /// Bottom Row 1: Sevas Progress & Ends Date strip
            Container(
              height: 0.0259 * screenHeight,
              padding: EdgeInsets.symmetric(
                horizontal: 0.0267 * screenWidth,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF0E3),
                borderRadius: BorderRadius.circular(
                  0.005 * screenWidth,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.sevasDoneProgress(completedOccurrences, totalOccurrences),
                    style: AppTextStyle.gilroyMedium(
                      0.032 * screenWidth,
                      color: Colors.black,
                      height: 1.25,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        endsDateStr.isNotEmpty
                            ? context.l10n.endsOnDate(endsDateStr)
                            : '',
                        textAlign: TextAlign.right,
                        style: AppTextStyle.gilroyMedium(
                          0.0304 * screenWidth,
                          color: const Color(0xFF793C01),
                        ),
                      ),
                      SizedBox(width: 0.0107 * screenWidth),
                      Icon(
                        Icons.arrow_forward,
                        size: 0.027 * screenWidth,
                        color: const Color(0xFF793C01),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 0.0086 * screenHeight),

            /// Bottom Row 2: Video proof banner (Ready vs In Progress / Disabled)
            GestureDetector(
              onTap: isProofAvailable ? (onVideoProofTap ?? onTap) : null,
              child: Container(
                height: 0.0271 * screenHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isProofAvailable
                      ? const Color(0xFFE5FFE7)
                      : const Color(0xFFE8E8E8),
                  border: Border.all(
                    width: 0.0012 * screenWidth,
                    color: isProofAvailable
                        ? const Color(0xFF00A613)
                        : const Color(0xFFBCBCBC),
                  ),
                  borderRadius: BorderRadius.circular(
                    0.0084 * screenWidth,
                  ),
                ),
                child: Text(
                  isProofAvailable
                      ? context.l10n.videoProofReadyTap
                      : context.l10n.videoProofInProgress,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroySemiBold(
                    0.0267 * screenWidth,
                    color: isProofAvailable
                        ? const Color(0xFF00A613)
                        : const Color(0xFF757575),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
