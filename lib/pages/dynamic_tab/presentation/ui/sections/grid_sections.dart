import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../data/entity/dynamic_tab_models.dart';
import '../dynamic_action_router.dart';
import '../widgets/dynamic_image.dart';
import '../widgets/dynamic_style.dart';

/// Tappable wrapper that only reacts when the item has an action.
class _Tap extends StatelessWidget {
  final DynamicAction action;
  final Widget child;

  const _Tap({required this.action, required this.child});

  @override
  Widget build(BuildContext context) {
    if (!DynamicActionRouter.isTappable(action)) return child;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => DynamicActionRouter.open(context, action),
      child: child,
    );
  }
}

/// Figma "Nau Devi" / "Vrat Food": 3 per row, 111.7×132.7 white cards.
class Grid3ColSection extends StatelessWidget {
  final DynamicSectionModel section;

  const Grid3ColSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final primary = DynamicPaletteScope.of(context).primary;
    final gap = context.dp(10.41);
    final side = context.dp(18.5);
    final cardW = (MediaQuery.sizeOf(context).width - side * 2 - gap * 2) / 3;
    final scale = cardW / 111.726;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: side),
      child: Wrap(
        spacing: gap,
        runSpacing: context.dp(12),
        children: [
          for (final item in section.items)
            _Tap(
              action: item.action,
              child: Container(
                width: cardW,
                padding: EdgeInsets.only(bottom: 6 * scale),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.258 * scale),
                  boxShadow: kDynamicCardShadow,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5.99 * scale),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.193 * scale),
                      child: DynamicImage.media(
                        item.media,
                        width: 97.76 * scale,
                        height: 85.79 * scale,
                        fallback: Container(
                          width: 97.76 * scale,
                          height: 85.79 * scale,
                          color: const Color(0xFFF3E6D6),
                        ),
                      ),
                    ),
                    SizedBox(height: 6 * scale),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4 * scale),
                      child: Text(
                        item.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroyBold(
                          context.fs(DynamicFont.gridTitle),
                          color: primary,
                          height: 1.3,
                        ),
                      ),
                    ),
                    SizedBox(height: 4 * scale),
                    Image.asset(
                      'assets/dynamic/divider_ornament.png',
                      width: 68.814 * scale,
                      height: 10.229 * scale,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Figma "Navratri Seva": 108.9×137 gradient cards with pattern, title, arrow and image.
class GradientCardsSection extends StatelessWidget {
  final DynamicSectionModel section;

  const GradientCardsSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final palette = DynamicPaletteScope.of(context);
    final side = context.dp(19);
    final gap = context.dp(14.95);
    final cardW = (MediaQuery.sizeOf(context).width - side * 2 - gap * 2) / 3;
    final s = cardW / 108.86;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: side),
      child: Wrap(
        spacing: gap,
        runSpacing: context.dp(14),
        children: [
          for (final item in section.items)
            _Tap(
              action: item.action,
              child: _GradientCard(item: item, width: cardW, scale: s, arrowColor: palette.primary),
            ),
        ],
      ),
    );
  }
}

class _GradientCard extends StatelessWidget {
  final DynamicItemModel item;
  final double width;
  final double scale;
  final Color arrowColor;

  const _GradientCard({
    required this.item,
    required this.width,
    required this.scale,
    required this.arrowColor,
  });

  /// Figma's 72px title box, widened only as much as the longest word needs,
  /// so "God Seva" still wraps like the design but "Vanspati" never splits.
  double _titleWidth(TextStyle style) {
    double widest = 0;
    for (final word in item.title.split(RegExp(r's+'))) {
      if (word.isEmpty) continue;
      final painter = TextPainter(
        text: TextSpan(text: word, style: style),
        textDirection: TextDirection.ltr,
        maxLines: 1,
      )..layout();
      if (painter.width > widest) widest = painter.width;
    }
    return math.min(math.max(72.165 * scale, widest + 2), width - 12 * scale);
  }

  @override
  Widget build(BuildContext context) {
    final s = scale;
    final start = parseHexColor(item.gradientStart, const Color(0xFFFFE7CF));
    final end = parseHexColor(item.gradientEnd, const Color(0xFFFFD27E));
    final patternTint = Color.lerp(end, Colors.black, 0.45)!;
    final titleStyle = AppTextStyle.gilroyBold(
      context.fs(DynamicFont.sevaTitle),
      color: Colors.black,
      height: 1.2,
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(6.116 * s),
      child: Container(
        width: width,
        height: 136.992 * s,
        decoration: BoxDecoration(
          gradient: cssLinearGradient(96.24, [start, end], const [0.0153, 1]),
        ),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            // Wavy pattern, rotated −50.42° like the Figma layer.
            Positioned(
              left: -47.7 * s,
              top: -88.07 * s,
              width: 226.038 * s,
              height: 248.291 * s,
              child: Center(
                child: Transform.rotate(
                  angle: -50.42 * math.pi / 180,
                  child: SvgPicture.asset(
                    'assets/dynamic/card_pattern.svg',
                    width: 251.684 * s,
                    height: 85.226 * s,
                    colorFilter: ColorFilter.mode(patternTint, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            if (item.media != null)
              Positioned(
                left: 17.45 / 100 * width,
                right: 18.27 / 100 * width,
                top: 54.02 / 100 * 136.992 * s,
                bottom: -2.97 / 100 * 136.992 * s,
                child: DynamicImage.media(item.media, fit: BoxFit.contain),
              ),
            Positioned(
              left: 0,
              right: 0,
              top: 19.64 / 100 * 136.992 * s,
              child: Center(
                child: SizedBox(
                  width: _titleWidth(titleStyle),
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: titleStyle,
                  ),
                ),
              ),
            ),
            if (DynamicActionRouter.isTappable(item.action))
              Positioned(
                left: 88.07 * s,
                top: 3.67 * s,
                width: 15.9 * s,
                height: 15.9 * s,
                child: Container(
                  decoration: BoxDecoration(color: arrowColor, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: -32.36 * math.pi / 180,
                    child: SvgPicture.asset(
                      'assets/dynamic/seva_arrow.svg',
                      width: 10.296 * s,
                      height: 10.296 * s,
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

/// Figma "Diwali Aarti": horizontal cards with heart, title and audio/play icons.
class ContentCarouselSection extends StatelessWidget {
  final DynamicSectionModel section;

  const ContentCarouselSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final primary = DynamicPaletteScope.of(context).primary;
    final s = context.dp(1);
    final titleSize = context.fs(DynamicFont.gridTitle);
    const lineHeight = 1.3;
    final cardW = 111.938 * s;
    final imageH = 91.753 * s;
    // Card height follows the app font size: image + 2 title lines + icon row.
    final cardH = 6.42 * s + imageH + 6 * s + titleSize * lineHeight * 2 + 6 * s + 12.19 * s + 8 * s;

    return SizedBox(
      height: cardH + 12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(18.6 * s, 2, 18.6 * s, 10),
        clipBehavior: Clip.none,
        itemCount: section.items.length,
        separatorBuilder: (_, _) => SizedBox(width: 10 * s),
        itemBuilder: (context, i) {
          final item = section.items[i];
          return _Tap(
            action: item.action,
            child: Container(
              width: cardW,
              height: cardH,
              padding: EdgeInsets.fromLTRB(7.34 * s, 6.42 * s, 7.34 * s, 8 * s),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.278 * s),
                boxShadow: kDynamicCardShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.208 * s),
                        child: DynamicImage.media(
                          item.media,
                          width: 97.258 * s,
                          height: imageH,
                          fallback: Container(width: 97.258 * s, height: imageH, color: const Color(0xFFF3E6D6)),
                        ),
                      ),
                      Positioned(
                        right: 4 * s,
                        top: 3.67 * s,
                        child: SvgPicture.asset(
                          'assets/dynamic/heart_outline.svg',
                          width: 11.01 * s,
                          height: 11.01 * s,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6 * s),
                  Expanded(
                    child: Text(
                      [item.title, item.subtitle].where((t) => t.isNotEmpty).join('\n'),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyBold(titleSize, color: primary, height: lineHeight),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12.19 * s,
                        height: 12.19 * s,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primary, width: 0.509 * s),
                        ),
                        child: Image.asset(
                          'assets/dynamic/audio_mask.png',
                          width: 6.104 * s,
                          height: 6.104 * s,
                          color: primary,
                        ),
                      ),
                      SizedBox(width: 4.06 * s),
                      // Brown circle + white triangle, as in Figma.
                      SvgPicture.asset(
                        'assets/dynamic/play_circle.svg',
                        width: 12.19 * s,
                        height: 12.19 * s,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
