import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';

class SubscriptionBannerCard extends StatelessWidget {
  final SevaSubscriptionDetailData data;
  final String? fallbackIcon;

  const SubscriptionBannerCard({
    super.key,
    required this.data,
    this.fallbackIcon,
  });

  String _formatFrequency(BuildContext context) {
    final freq = data.frequency.trim().toLowerCase();
    if (freq == 'daily') return context.l10n.daily;
    if (freq == 'weekly') return context.l10n.weekly;
    if (freq == 'tithi') return context.l10n.tithi;
    if (freq.isEmpty) return context.l10n.daily;
    return '${freq[0].toUpperCase()}${freq.substring(1)}';
  }

  static String _buildFullImageUrl(String path) {
    final trimmed = path.trim();
    if (trimmed.isEmpty) return '';
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    final baseUrl = AppConstant.fileBaseUrl.endsWith('/')
        ? AppConstant.fileBaseUrl
            .substring(0, AppConstant.fileBaseUrl.length - 1)
        : AppConstant.fileBaseUrl;
    final cleanPath = trimmed.startsWith('/') ? trimmed : '/$trimmed';
    return '$baseUrl$cleanPath';
  }

  Widget _buildSevaPhoto(
    String iconPath,
    double screenWidth,
    double screenHeight,
  ) {
    final double photoHeight = 0.125 * screenHeight;
    final double photoWidth = 0.28 * screenWidth;

    final trimmed = iconPath.trim();
    if (trimmed.isEmpty) {
      final isCow = data.sevaName.toLowerCase().contains('cow') ||
          data.sevaName.toLowerCase().contains('gau') ||
          data.sevaNameHi.contains('गौ') ||
          data.service.name.toLowerCase().contains('cow') ||
          data.service.name.toLowerCase().contains('gau') ||
          data.service.nameHi.contains('गौ');
      if (isCow) {
        return Image.asset(
          'assets/icons/cow.png',
          height: photoHeight,
          width: photoWidth,
          fit: BoxFit.contain,
        );
      }
      return const SizedBox.shrink();
    }

    if (trimmed.startsWith('assets/')) {
      return Image.asset(
        trimmed,
        height: photoHeight,
        width: photoWidth,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
      );
    }

    final fullUrl = _buildFullImageUrl(trimmed);

    return CachedNetworkImage(
      imageUrl: fullUrl,
      height: photoHeight,
      width: photoWidth,
      fit: BoxFit.contain,
      placeholder: (context, url) => const SizedBox.shrink(),
      errorWidget: (context, url, error) {
        final isCow = data.sevaName.toLowerCase().contains('cow') ||
            data.sevaName.toLowerCase().contains('gau') ||
            data.sevaNameHi.contains('गौ') ||
            data.service.name.toLowerCase().contains('cow') ||
            data.service.name.toLowerCase().contains('gau') ||
            data.service.nameHi.contains('गौ');
        if (isCow) {
          return Image.asset(
            'assets/icons/cow.png',
            height: photoHeight,
            width: photoWidth,
            fit: BoxFit.contain,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final sevaTitle = isHindi
        ? (data.sevaNameHi.isNotEmpty
            ? data.sevaNameHi
            : (data.service.nameHi.isNotEmpty
                ? data.service.nameHi
                : (data.sevaName.isNotEmpty
                    ? data.sevaName
                    : (data.service.name.isNotEmpty
                        ? data.service.name
                        : 'गौ सेवा'))))
        : (data.sevaName.isNotEmpty
            ? data.sevaName
            : (data.service.nameEn.isNotEmpty
                ? data.service.nameEn
                : (data.service.name.isNotEmpty
                    ? data.service.name
                    : (data.sevaNameHi.isNotEmpty
                        ? data.sevaNameHi
                        : 'Gau Seva'))));

    final rawStatus = (data.status.isNotEmpty ? data.status : data.statusLabel).toLowerCase().trim();
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
      statusText = data.statusLabel.isNotEmpty
          ? data.statusLabel
          : (data.status.isNotEmpty
              ? '${data.status[0].toUpperCase()}${data.status.substring(1).toLowerCase()}'
              : context.l10n.active);
    }

    final String s = data.status.toLowerCase().trim();
    final Color statusTextColor;
    final Color statusPillBg;

    if (s == 'cancelled') {
      statusTextColor = const Color(0xFFB50000);
      statusPillBg = const Color(0xFFFFD8D8);
    } else if (s == 'active') {
      statusTextColor = const Color(0xFF408D01);
      statusPillBg = Colors.white;
    } else {
      statusTextColor = const Color(0xFF793C01);
      statusPillBg = const Color(0xFFFFEAD6);
    }

    final rawIcon = data.service.icon.isNotEmpty
        ? data.service.icon
        : (fallbackIcon ?? '');

    return Container(
      width: 0.9253 * screenWidth,
      height: 0.1502 * screenHeight,
      margin: EdgeInsets.symmetric(horizontal: 0.04 * screenWidth),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0187 * screenWidth),
        image: const DecorationImage(
          image: AssetImage(
            'assets/new_design/icon/0b6444870a3ec771cd90241a62b4bd22f0629733.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0187 * screenWidth),
        child: Stack(
          children: [
            /// Content on left
            Padding(
              padding: EdgeInsets.only(
                left: 0.056 * screenWidth,
                right: 0.30 * screenWidth,
                top: 0.0185 * screenHeight,
                bottom: 0.0185 * screenHeight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sevaTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyBold(
                      0.064 * screenWidth,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    context.l10n.allDonationsInOnePlace,
                    style: AppTextStyle.gilroyMedium(
                      0.032 * screenWidth,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      /// Status badge
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.02 * screenWidth,
                        ),
                        height: 0.024 * screenHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: statusPillBg,
                          borderRadius: BorderRadius.circular(
                            0.04 * screenWidth,
                          ),
                        ),
                        child: Text(
                          statusText,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyMedium(
                            0.022 * screenWidth,
                            color: statusTextColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 0.016 * screenWidth),

                      /// Frequency badge (brown pill)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.02 * screenWidth,
                        ),
                        height: 0.024 * screenHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF793C01),
                          borderRadius: BorderRadius.circular(
                            0.04 * screenWidth,
                          ),
                        ),
                        child: Text(
                          _formatFrequency(context),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyMedium(
                            0.022 * screenWidth,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Seva Photo on right side (Cow, Dog, etc. from API)
            Positioned(
              right: 0.032 * screenWidth,
              top: 0.01 * screenHeight,
              bottom: 0.01 * screenHeight,
              child: Center(
                child: _buildSevaPhoto(rawIcon, screenWidth, screenHeight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
