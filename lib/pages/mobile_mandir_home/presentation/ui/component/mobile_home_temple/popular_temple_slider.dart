import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';

class DistanceSliderComponent extends StatelessWidget {
  final String title;
  final double min;
  final double max;
  final double value;
  final String startLabel;
  final String endLabel;
  final ValueChanged<double> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final Color backgroundColor;

  const DistanceSliderComponent({
    super.key,
    required this.value,
    required this.onChanged,
    this.title = "Popular Temples",
    this.min = 0,
    this.max = 3,
    this.startLabel = "0 km",
    this.endLabel = "3 km",
    this.activeColor = const Color(0xFF8B4A00),
    this.inactiveColor = const Color(0xFFD1C8C0),
    this.backgroundColor = const Color(0xFFF3F3F3),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.only(left: 18, right: 16, top: 18, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.048,
              color: AppColor.fullBlack,
            ),
          ),

          const SizedBox(height: 10),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 5,
              padding: EdgeInsets.zero,
              overlayShape: SliderComponentShape.noOverlay,
              activeTrackColor: activeColor,
              inactiveTrackColor: inactiveColor,
              thumbShape: CustomSliderThumb(activeColor),
            ),
            child: Slider(
              min: min,
              max: max,
              value: value.clamp(min, max),
              onChanged: onChanged,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                startLabel,
                style: AppTextStyle.gilroySemiBold(
                  context.screenWidth * 0.0266,
                  color: AppColor.fullBlack,
                ),
              ),
              Text(
                endLabel,
                style: AppTextStyle.gilroySemiBold(
                  context.screenWidth * 0.0266,
                  color: AppColor.fullBlack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSliderThumb extends SliderComponentShape {
  final Color borderColor;

  const CustomSliderThumb(this.borderColor);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(18, 18);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, 8, fillPaint);
    canvas.drawCircle(center, 8, borderPaint);
  }
}
