import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../data/entity/dynamic_tab_models.dart';
import '../dynamic_action_router.dart';
import '../widgets/dynamic_image.dart';
import '../widgets/dynamic_style.dart';
import 'section_utils.dart';

const _kSandCard = Color(0xFFF8E7D1);
const _kSandBorder = Color(0xFFF3D3A5);

/// Figma "Lakshmi Mata" card: 81px image, title + ornament, description, See Detail.
class InfoCardSection extends StatelessWidget {
  final DynamicSectionModel section;

  const InfoCardSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    if (section.items.isEmpty) return const SizedBox.shrink();
    final item = section.items.first;
    final primary = DynamicPaletteScope.of(context).primary;
    final s = context.dp(1);
    final button = section.config.str('buttonText');
    final tappable = DynamicActionRouter.isTappable(item.action);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19 * s),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: tappable ? () => DynamicActionRouter.open(context, item.action) : null,
        child: Container(
          padding: EdgeInsets.all(8 * s),
          decoration: BoxDecoration(
            color: _kSandCard,
            border: Border.all(color: _kSandBorder),
            borderRadius: BorderRadius.circular(10 * s),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5 * s),
                child: DynamicImage.media(
                  item.media,
                  width: 81 * s,
                  height: 81 * s,
                  fallback: Container(width: 81 * s, height: 81 * s, color: _kSandBorder),
                ),
              ),
              SizedBox(width: 15 * s),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1 * s),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            item.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardTitle), color: primary),
                          ),
                        ),
                        SizedBox(width: 5 * s),
                        Image.asset(
                          'assets/dynamic/title_ornament.png',
                          width: 24.603 * s,
                          height: 10.109 * s,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    if (item.subtitle.isNotEmpty) ...[
                      SizedBox(height: 6 * s),
                      Text(
                        item.subtitle,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroyRegular(context.fs(DynamicFont.secondary), color: Colors.black, height: 1.35),
                      ),
                    ],
                    if (tappable) ...[
                      SizedBox(height: 8 * s),
                      // Figma: 63×20 pill sized to its label (not full width).
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8 * s, vertical: 4 * s),
                        constraints: BoxConstraints(minWidth: 63 * s),
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(3.66 * s),
                        ),
                        child: Center(
                          widthFactor: 1,
                          child: Text(
                            button.isEmpty ? 'See Detail' : button,
                            style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.secondary), color: Colors.white),
                          ),
                        ),
                      ),
                    ],
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

/// Figma "Lakshmi Mata Temple" strip: brown bar, image, name, location, See Detail.
class TempleStripSection extends StatelessWidget {
  final DynamicSectionModel section;

  const TempleStripSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    if (section.items.isEmpty) return const SizedBox.shrink();
    final item = section.items.first;
    final primary = DynamicPaletteScope.of(context).primary;
    final s = context.dp(1);
    final button = section.config.str('buttonText');
    final tappable = DynamicActionRouter.isTappable(item.action);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19 * s),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: tappable ? () => DynamicActionRouter.open(context, item.action) : null,
        child: Container(
          constraints: BoxConstraints(minHeight: 60 * s),
          padding: EdgeInsets.fromLTRB(9 * s, 8 * s, 25 * s, 8 * s),
          decoration: BoxDecoration(color: primary, borderRadius: BorderRadius.circular(6 * s)),
          child: Row(
            children: [
              Container(
                width: 45 * s,
                height: 44 * s,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.6 * s),
                  borderRadius: BorderRadius.circular(3 * s),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3 * s),
                  child: DynamicImage.media(item.media),
                ),
              ),
              SizedBox(width: 14 * s),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardTitle), color: Colors.white),
                    ),
                    if (item.subtitle.isNotEmpty) ...[
                      SizedBox(height: 6 * s),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/dynamic/location.svg',
                            width: 11 * s,
                            height: 11 * s,
                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          SizedBox(width: 3 * s),
                          Flexible(
                            child: Text(
                              item.subtitle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.secondary), color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              if (tappable) ...[
                SizedBox(width: 8 * s),
                Container(
                  constraints: BoxConstraints(minWidth: 71 * s),
                  padding: EdgeInsets.symmetric(horizontal: 8 * s, vertical: 5 * s),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3 * s),
                  ),
                  child: Text(
                    button.isEmpty ? 'See Detail' : button,
                    style: AppTextStyle.gilroySemiBold(context.fs(DynamicFont.secondary), color: primary),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Figma "Poojan Vidhi": sand card, title inside, faded text with Show More.
class ExpandableTextSection extends StatefulWidget {
  final DynamicSectionModel section;

  const ExpandableTextSection({super.key, required this.section});

  @override
  State<ExpandableTextSection> createState() => _ExpandableTextSectionState();
}

class _ExpandableTextSectionState extends State<ExpandableTextSection> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final html = widget.section.config.str('html');
    if (html.trim().isEmpty) return const SizedBox.shrink();
    final primary = DynamicPaletteScope.of(context).primary;
    final s = context.dp(1);
    final lines = widget.section.config.integer('collapsedLines', 4).clamp(1, 20);
    final collapsedHeight = lines * context.fs(DynamicFont.body) * 1.45;

    final body = Html(
      data: html,
      style: {
        'body': Style(
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
          textAlign: TextAlign.center,
          fontFamily: 'Gilroy-Regular',
          fontSize: FontSize(context.fs(DynamicFont.body)),
          lineHeight: const LineHeight(1.45),
          color: Colors.black,
        ),
        'p': Style(margin: Margins.zero),
      },
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19 * s),
      child: Container(
        padding: EdgeInsets.fromLTRB(25 * s, 11 * s, 25 * s, 10 * s),
        decoration: BoxDecoration(
          color: _kSandCard,
          border: Border.all(color: _kSandBorder),
          borderRadius: BorderRadius.circular(10 * s),
        ),
        child: Column(
          children: [
            if (widget.section.title.isNotEmpty)
              Text(
                widget.section.title,
                textAlign: TextAlign.center,
                style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardHeading), color: Colors.black),
              ),
            SizedBox(height: 6 * s),
            AnimatedSize(
              duration: const Duration(milliseconds: 250),
              alignment: Alignment.topCenter,
              child: _expanded
                  ? body
                  : SizedBox(
                      height: collapsedHeight,
                      child: ShaderMask(
                        // Figma fade: transparent sand at 29% → solid sand at 50% of the overlay.
                        shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.black, Colors.transparent],
                          stops: [0, 0.45, 1],
                        ).createShader(rect),
                        blendMode: BlendMode.dstIn,
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: body,
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 4 * s),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => setState(() => _expanded = !_expanded),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _expanded ? 'Show Less' : 'Show More',
                    style: AppTextStyle.gilroySemiBold(context.fs(DynamicFont.body), color: primary),
                  ),
                  SizedBox(width: 1 * s),
                  // Figma rotates a right-chevron 90° → points down (up when expanded).
                  RotatedBox(
                    quarterTurns: _expanded ? 3 : 1,
                    child: SvgPicture.asset(
                      'assets/dynamic/chevron_down.svg',
                      width: 16 * s,
                      height: 16 * s,
                      colorFilter: ColorFilter.mode(primary, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Figma "Shubh Muhurat → Pooja Kab Karein": diya heading and dashed time boxes.
class MuhuratSection extends StatelessWidget {
  final DynamicSectionModel section;

  const MuhuratSection({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final boxes = section.config.maps('boxes');
    if (boxes.isEmpty) return const SizedBox.shrink();
    final primary = DynamicPaletteScope.of(context).primary;
    final s = context.dp(1);
    final heading = section.config.str('heading');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19 * s),
      child: Container(
        padding: EdgeInsets.fromLTRB(16 * s, 12 * s, 16 * s, 21 * s),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF4D3),
          border: Border.all(color: const Color(0xFFF1DA9F), width: 1.029),
          borderRadius: BorderRadius.circular(6.174 * s),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/dynamic/candle.svg', width: 17.493 * s, height: 17.493 * s),
                SizedBox(width: 7 * s),
                Expanded(
                  child: Text(
                    heading.isEmpty ? 'Pooja Kab Karein' : heading,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardHeading), color: const Color(0xFF2C1200)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14 * s),
            LayoutBuilder(
              builder: (context, c) {
                const perRow = 3;
                final gap = 11 * s;
                final boxW = (c.maxWidth - gap * (perRow - 1)) / perRow;
                return Wrap(
                  spacing: gap,
                  runSpacing: gap,
                  children: [
                    for (final b in boxes)
                      CustomPaint(
                        foregroundPainter: DashedBorderPainter(color: primary, strokeWidth: 0.7, radius: 5.145 * s),
                        child: Container(
                          width: boxW,
                          constraints: BoxConstraints(minHeight: 109 * s),
                          padding: EdgeInsets.symmetric(vertical: 10 * s),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.145 * s),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3 * s),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  b.str('label'),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.gilroyBold(context.fs(DynamicFont.body), color: Colors.black, height: 1.2),
                                ),
                                SizedBox(height: 8 * s),
                                Text(
                                  b.str('time'),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: AppTextStyle.gilroyBold(context.fs(DynamicFont.cardTitle), color: primary),
                                ),
                                SizedBox(height: 6 * s),
                                Text(
                                  b.str('subtitle'),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.gilroyMedium(context.fs(DynamicFont.secondary), color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
