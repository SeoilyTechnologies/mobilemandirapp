import 'package:flutter/material.dart';

import '../../../../../common/component/app_text_style.dart';
import 'dynamic_style.dart';

/// "~❀~ Nau Devi ~❀~" — Gilroy Bold 16, primary colour, 27×11 ornament each side.
class DynamicSectionTitle extends StatelessWidget {
  final String title;
  final bool showOrnament;
  final Color? color;

  const DynamicSectionTitle({
    super.key,
    required this.title,
    this.showOrnament = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (title.trim().isEmpty) return const SizedBox.shrink();
    final c = color ?? DynamicPaletteScope.of(context).primary;
    final ornament = Image.asset(
      'assets/dynamic/title_ornament.png',
      width: context.dp(27),
      height: context.dp(11),
      fit: BoxFit.fill,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dp(19)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showOrnament) Transform.flip(flipX: true, child: ornament),
          if (showOrnament) SizedBox(width: context.dp(6)),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.gilroyBold(context.fs(DynamicFont.heading), color: c, height: 1.1),
            ),
          ),
          if (showOrnament) SizedBox(width: context.dp(6)),
          if (showOrnament) ornament,
        ],
      ),
    );
  }
}

/// Small gold flourish used under card titles and the page title.
class DynamicDividerOrnament extends StatelessWidget {
  final double width;

  const DynamicDividerOrnament({super.key, this.width = 85});

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/dynamic/divider_ornament.png',
        width: context.dp(width),
        height: context.dp(width * 13 / 85),
        fit: BoxFit.fill,
      );
}
