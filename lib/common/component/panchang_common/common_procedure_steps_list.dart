import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class ProcedureStepItem {
  final String step;
  final String text;

  const ProcedureStepItem({required this.step, required this.text});
}

class CommonProcedureStepsList extends StatelessWidget {
  final List<ProcedureStepItem> steps;

  const CommonProcedureStepsList({
    super.key,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Column(
      children: List.generate(steps.length, (index) {
        final item = steps[index];
        final isLast = index == steps.length - 1;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 16.53,
                    height: 16.53,
                    margin: const EdgeInsets.only(top: 2),
                    decoration: const BoxDecoration(
                      color: Color(0xFF793C01),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        item.step,
                        style: AppTextStyle.gilroyBold(
                          w * 0.024,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item.text,
                      style: AppTextStyle.gilroyRegular(
                        w * 0.031,
                        color: const Color(0xFF000000),
                        height: 1.35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (!isLast)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Divider(
                  color: Color(0xFFDCDCDC),
                  height: 1,
                  thickness: 1,
                ),
              ),
          ],
        );
      }),
    );
  }
}
