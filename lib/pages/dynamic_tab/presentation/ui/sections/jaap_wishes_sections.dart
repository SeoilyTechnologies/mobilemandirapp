import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/utils/share_helper.dart';
import '../../../data/entity/dynamic_tab_models.dart';
import '../dynamic_action_router.dart';
import '../widgets/dynamic_style.dart';
import 'section_utils.dart';

/// Figma "Navratri Naam Jaap": purple→brown card, mantra rows with coins, CTA.
class NaamJaapSection extends StatelessWidget {
  final DynamicSectionModel section;

  const NaamJaapSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final c = section.config;
    final secondary = DynamicPaletteScope.of(context).secondary;
    final s = context.dp(1);
    final heading = c.str('heading');
    final cta = c.str('ctaText');
    final ctaAction = c.action('ctaAction') ?? const DynamicAction(type: 'JAAP');
    final start = parseHexColor(c.str('gradientStart'), const Color(0xFF2B0C4B));
    final end = parseHexColor(c.str('gradientEnd'), const Color(0xFF562A0C));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19 * s),
      child: Container(
        padding: EdgeInsets.fromLTRB(17.54 * s, 16 * s, 16.5 * s, 22.7 * s),
        decoration: BoxDecoration(
          gradient: cssLinearGradient(137.75, [start, end], const [0.0373, 0.787]),
          borderRadius: BorderRadius.circular(10.319 * s),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (heading.isNotEmpty)
              Text(heading, style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardHeading), color: Colors.white)),
            SizedBox(height: 13 * s),
            for (final item in section.items) ...[
              _JaapRow(item: item, secondary: secondary),
              SizedBox(height: 14.45 * s),
            ],
            if (cta.isNotEmpty)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => DynamicActionRouter.open(context, ctaAction),
                child: Container(
                  constraints: BoxConstraints(minHeight: 37.148 * s),
                  padding: EdgeInsets.symmetric(horizontal: 10 * s, vertical: 8 * s),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: secondary,
                    border: Border.all(color: const Color(0x78FFFFFF), width: 1.032),
                    borderRadius: BorderRadius.circular(5.159 * s),
                  ),
                  child: Text(
                    cta,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyBold(context.fs(DynamicFont.body), color: Colors.black),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _JaapRow extends StatelessWidget {
  final DynamicItemModel item;
  final Color secondary;

  const _JaapRow({required this.item, required this.secondary});

  @override
  Widget build(BuildContext context) {
    final s = context.dp(1);
    final coins = item.extra.integer('coins');
    final count = item.extra.str('count');

    final row = Container(
      constraints: BoxConstraints(minHeight: 54.69 * s),
      padding: EdgeInsets.fromLTRB(12.38 * s, 8.26 * s, 8.5 * s, 8 * s),
      decoration: BoxDecoration(
        color: const Color(0x40FFFFFF),
        border: Border.all(color: const Color(0x63FFFFFF), width: 1.032),
        borderRadius: BorderRadius.circular(5.159 * s),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3 * s),
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyBold(context.fs(DynamicFont.body), color: Colors.white),
                ),
                if (item.subtitle.isNotEmpty) ...[
                  SizedBox(height: 6 * s),
                  Text(
                    item.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroySemiBold(context.fs(DynamicFont.secondary), color: secondary),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: 6 * s),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (coins > 0)
                Container(
                  padding: EdgeInsets.only(left: 3.5 * s, right: 6.2 * s, top: 2 * s, bottom: 2 * s),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(8.771 * s),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 11.35 * s,
                        height: 11.35 * s,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset('assets/dynamic/coin_outer.svg', width: 11.35 * s, height: 11.35 * s),
                            SvgPicture.asset('assets/dynamic/coin_inner.svg', width: 5.57 * s, height: 5.57 * s),
                          ],
                        ),
                      ),
                      SizedBox(width: 3 * s),
                      Text(
                        '$coins Coins',
                        style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.tiny), color: Colors.black),
                      ),
                    ],
                  ),
                ),
              if (count.isNotEmpty) ...[
                SizedBox(height: 6 * s),
                Text(
                  count,
                  style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.tiny), color: const Color(0xFFE9BFA2)),
                ),
              ],
            ],
          ),
        ],
      ),
    );

    if (!DynamicActionRouter.isTappable(item.action)) return row;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => DynamicActionRouter.open(context, item.action),
      child: row,
    );
  }
}

/// Figma "Navratri Wishes": gradient card with pattern and green Share button.
class WishesCtaSection extends StatelessWidget {
  final DynamicSectionModel section;

  const WishesCtaSection({super.key, required this.section});

  Future<void> _share(BuildContext context) async {
    final c = section.config;
    final text = c.str('shareText').isNotEmpty ? c.str('shareText') : c.str('heading');
    final image = c.media('shareImage');
    if (image != null && image.url.isNotEmpty) {
      // Image is remote; share the link with the message (same as other app shares).
      await ShareHelper.shareGenericUrl(url: image.url, message: text);
      return;
    }
    if (text.isNotEmpty) await ShareHelper.shareText(text: text);
  }

  @override
  Widget build(BuildContext context) {
    final c = section.config;
    final s = context.dp(1);
    final heading = c.str('heading');
    final subtitle = c.str('subtitle');
    final button = c.str('buttonText');
    final start = parseHexColor(c.str('gradientStart'), const Color(0xFF2D0E49));
    final end = parseHexColor(c.str('gradientEnd'), const Color(0xFF753B14));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18 * s),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5 * s),
        child: Container(
          constraints: BoxConstraints(minHeight: 117 * s),
          decoration: BoxDecoration(
            gradient: cssLinearGradient(120.87, [start, end], const [0.212, 0.8655]),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: -55.75 * s,
                top: -49.44 * s,
                width: 442.935 * s,
                height: 207.613 * s,
                child: Center(
                  child: Transform.rotate(
                    angle: -8.79 * math.pi / 180,
                    child: SvgPicture.asset(
                      'assets/dynamic/wishes_pattern.svg',
                      width: 425.898 * s,
                      height: 144.218 * s,
                    ),
                  ),
                ),
              ),
              // Full card width so heading, subtitle and button sit in the centre.
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16 * s, 17 * s, 16 * s, 20 * s),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (heading.isNotEmpty)
                      Text(
                        heading,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardHeading), color: Colors.white),
                      ),
                    if (subtitle.isNotEmpty) ...[
                      SizedBox(height: 8 * s),
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.secondary), color: Colors.white),
                      ),
                    ],
                    SizedBox(height: 12 * s),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _share(context),
                      child: Container(
                        constraints: BoxConstraints(minWidth: 102 * s),
                        padding: EdgeInsets.symmetric(horizontal: 10.5 * s, vertical: 5 * s),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00A613),
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(1.794 * s),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/dynamic/share.svg',
                              width: 13 * s,
                              height: 13 * s,
                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            ),
                            SizedBox(width: 6 * s),
                            Text(
                              button.isEmpty ? 'Share Wishes' : button,
                              style: AppTextStyle.gilroyBold(context.fs(DynamicFont.secondary), color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
