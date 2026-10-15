import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaSankalpWeeksSelector extends StatelessWidget {
  final List<int> weeksOptions;
  final int selectedWeeks;
  final ValueChanged<int> onWeeksSelected;

  const ChadavaSankalpWeeksSelector({
    super.key,
    this.weeksOptions = const [5, 11, 21, 51],
    required this.selectedWeeks,
    required this.onWeeksSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Title Row with Ornaments
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Left Golden Ornament
            Image.asset(
              "assets/new_design/chadhawa_image/left_side_golden decorative_ornament.png",
              width: context.w(27),
              height: context.h(11),
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  const SizedBox.shrink(),
            ),

            SizedBox(width: context.w(8)),

            // Section Title
            Text(
              'Kitne Shanivaar ka sankalp',
              textAlign: TextAlign.center,
              style: AppTextStyle.gilroyBold(
                context.sp(16),
                color: const Color(0xFF793C01),
              ),
            ),

            SizedBox(width: context.w(8)),

            // Right Golden Ornament
            Image.asset(
              "assets/new_design/chadhawa_image/right_side_golden decorative_ornament.png",
              width: context.w(27),
              height: context.h(11),
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  const SizedBox.shrink(),
            ),
          ],
        ),

        SizedBox(height: context.h(16)),

        // Horizontal Grid of Choice Chips [ 5, 11, 21, 51 ]
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: weeksOptions.map((weeks) {
            final isSelected = weeks == selectedWeeks;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w(6)),
              child: GestureDetector(
                onTap: () => onWeeksSelected(weeks),
                child: Container(
                  width: context.w(63),
                  height: context.h(39),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF793C01)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFE4AE23)
                          : const Color(0xFF793C01),
                      width: 1.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '$weeks',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.gilroySemiBold(
                        context.sp(20),
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
