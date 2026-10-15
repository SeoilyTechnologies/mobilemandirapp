import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/component/network_image.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../l10n/l10n_extension.dart';
import '../../../../../pages/language/bloc/language_bloc.dart';

import '../../../../../common/utils/seva_date_helper.dart';

class HistorySevaCard extends StatelessWidget {
  final String id;
  final String thumbnailUrl;
  final String sevaName;
  final String donorName;
  final String addedAt;
  final String amount;
  final String status;
  final String statusLabel;
  final String liveStatusSubtitle;
  final bool hasVideoProof;
  final VoidCallback? onTap;
  final VoidCallback? onVideoProofTap;

  const HistorySevaCard({
    super.key,
    required this.id,
    required this.thumbnailUrl,
    required this.sevaName,
    this.donorName = '',
    required this.addedAt,
    required this.amount,
    required this.status,
    required this.statusLabel,
    this.liveStatusSubtitle = '',
    this.hasVideoProof = false,
    this.onTap,
    this.onVideoProofTap,
  });

  static String formatSevaDate(String apiDate, {bool isHindi = false}) {
    return SevaDateHelper.formatSevaDate(apiDate, isHindi: isHindi);
  }

  Color _statusBgColor(String st) {
    switch (st.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return const Color(0xFFE5FFE7);
      case 'pending':
      case 'processing':
      case 'under_review':
      case 'review':
        return const Color(0xFFFFF6E0);
      case 'failed':
      case 'rejected':
      case 'time_out':
      case 'cancelled':
      case 'returned':
        return const Color(0xFFFFECEC);
      default:
        return const Color(0xFFE5FFE7);
    }
  }

  Color _statusBorderColor(String st) {
    switch (st.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return const Color(0xFF00A613);
      case 'pending':
      case 'processing':
      case 'under_review':
      case 'review':
        return const Color(0x33C8922A);
      case 'failed':
      case 'rejected':
      case 'time_out':
      case 'cancelled':
      case 'returned':
        return const Color(0xFFFF4D4F);
      default:
        return const Color(0xFF00A613);
    }
  }

  Color _statusTextColor(String st) {
    switch (st.toLowerCase()) {
      case 'completed':
      case 'success':
      case 'paid':
        return const Color(0xFF00A613);
      case 'pending':
      case 'processing':
      case 'under_review':
      case 'review':
        return const Color(0xFF6B3200);
      case 'failed':
      case 'rejected':
      case 'time_out':
      case 'cancelled':
      case 'returned':
        return const Color(0xFFD32F2F);
      default:
        return const Color(0xFF00A613);
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';

    final String rawStatus = (status.isNotEmpty ? status : statusLabel).toLowerCase().trim();
    final bool isCompleted = rawStatus == 'completed' ||
        rawStatus == 'success' ||
        rawStatus == 'released' ||
        rawStatus == 'paid';

    final bool isReturned = rawStatus == 'rejected' ||
        rawStatus == 'time_out' ||
        rawStatus == 'returned' ||
        rawStatus == 'refunded';

    final String displayStatusLabel = isCompleted
        ? context.l10n.completed
        : isReturned
            ? context.l10n.sevaReturned
            : (rawStatus == 'pending' || rawStatus == 'processing' || rawStatus == 'under_review' || rawStatus == 'review')
                ? context.l10n.inReview
                : (statusLabel.isNotEmpty ? statusLabel : context.l10n.inReview);

    final String proofSubtitle = liveStatusSubtitle.isNotEmpty
        ? liveStatusSubtitle
        : isCompleted
            ? context.l10n.proofDeliveredToYou
            : isReturned
                ? context.l10n.thisSevaCouldNotBeCompleted
                : context.l10n.sevaRequestReceived;

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
            /// Top row: Thumbnail + Details (Name, Donor, Date) + (Amount & Status)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Thumbnail
                Container(
                  width: 0.2 * screenWidth,
                  height: 0.0899 * screenHeight,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF1E3),
                    borderRadius: BorderRadius.circular(
                      0.0093 * screenWidth,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      0.0093 * screenWidth,
                    ),
                    child: NetworkImageWidget(
                      imageUrl: thumbnailUrl.isEmpty
                          ? ''
                          : '${AppConstant.fileBaseUrl}$thumbnailUrl',
                      fullimage: true,
                      imageHeight: 0.0899 * screenHeight,
                      imageWidth: 0.2 * screenWidth,
                      radiusAll: 0.0093 * screenWidth,
                      imageFitType: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 0.032 * screenWidth),

                /// Name, Donor Name, Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sevaName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroyBold(
                          0.044 * screenWidth,
                          color: Colors.black,
                        ),
                      ),
                      if (donorName.isNotEmpty) ...[
                        SizedBox(height: 0.0037 * screenHeight),
                        Text(
                          context.l10n.byDonor(donorName),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.gilroyMedium(
                            0.028 * screenWidth,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                      SizedBox(height: 0.0049 * screenHeight),
                      Text(
                        formatSevaDate(addedAt, isHindi: isHindi),
                        style: AppTextStyle.gilroyMedium(
                          0.0304 * screenWidth,
                          color: Colors.black87,
                        ),
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
                      amount,
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
                        color: _statusBgColor(status),
                        border: Border.all(
                          width: 0.002 * screenWidth,
                          color: _statusBorderColor(status),
                        ),
                        borderRadius: BorderRadius.circular(
                          0.0396 * screenWidth,
                        ),
                      ),
                      child: Text(
                        displayStatusLabel,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyMedium(
                          0.0213 * screenWidth,
                          color: _statusTextColor(status),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 0.0123 * screenHeight),

            /// Bottom Row 1: Status tracking strip
            Container(
              height: 0.0283 * screenHeight,
              padding: EdgeInsets.symmetric(
                horizontal: 0.0267 * screenWidth,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF0E3),
                borderRadius: BorderRadius.circular(
                  0.0067 * screenWidth,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      proofSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyMedium(
                        0.024 * screenWidth,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.l10n.track,
                          style: AppTextStyle.gilroyMedium(
                            0.0304 * screenWidth,
                            color: const Color(0xFF793C01),
                          ),
                        ),
                        SizedBox(width: 0.0107 * screenWidth),
                        Icon(
                          Icons.arrow_forward,
                          size: 0.0293 * screenWidth,
                          color: const Color(0xFF793C01),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Bottom Row 2: Video proof banner (Ready vs In Progress)
            if (!isReturned) ...[
              SizedBox(height: 0.0086 * screenHeight),
              GestureDetector(
                onTap: (hasVideoProof || isCompleted)
                    ? (onVideoProofTap ?? onTap)
                    : onTap,
                child: Container(
                  height: 0.0296 * screenHeight,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (hasVideoProof || isCompleted)
                        ? const Color(0xFFE5FFE7)
                        : const Color(0xFFE8E8E8),
                    border: Border.all(
                      width: 0.0012 * screenWidth,
                      color: (hasVideoProof || isCompleted)
                          ? const Color(0xFF00A613)
                          : const Color(0xFFBCBCBC),
                    ),
                    borderRadius: BorderRadius.circular(
                      0.0084 * screenWidth,
                    ),
                  ),
                  child: Text(
                    (hasVideoProof || isCompleted)
                        ? context.l10n.videoProofReadyTap
                        : context.l10n.videoProofInProgress,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroySemiBold(
                      0.0267 * screenWidth,
                      color: (hasVideoProof || isCompleted)
                          ? const Color(0xFF00A613)
                          : const Color(0xFF616161),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
