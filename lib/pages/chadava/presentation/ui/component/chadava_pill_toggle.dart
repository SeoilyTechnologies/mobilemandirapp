import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaPillToggle extends StatelessWidget {
  final int activeIndex;
  final ValueChanged<int> onTabChanged;

  const ChadavaPillToggle({
    super.key,
    required this.activeIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isGodSeva = activeIndex == 0;

    return Center(
      child: Container(
        width: context.w(233),
        height: context.h(35),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(context.w(19.50)),
          border: Border.all(
            width: 0.50,
            color: const Color(0xFF793C01),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x208C8C8C),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // God Seva Tab
            Expanded(
              child: GestureDetector(
                onTap: () => onTabChanged(0),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(context.w(3)),
                  decoration: BoxDecoration(
                    color: isGodSeva ? const Color(0xFF793C01) : Colors.transparent,
                    borderRadius: BorderRadius.circular(context.w(13.50)),
                  ),
                  child: Center(
                    child: Text(
                      'God Seva',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.gilroySemiBold(
                        context.sp(14),
                        color: isGodSeva ? Colors.white : const Color(0xFF793C01),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Vanspati Seva Tab
            Expanded(
              child: GestureDetector(
                onTap: () => onTabChanged(1),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(context.w(3)),
                  decoration: BoxDecoration(
                    color: !isGodSeva ? const Color(0xFF793C01) : Colors.transparent,
                    borderRadius: BorderRadius.circular(context.w(13.50)),
                  ),
                  child: Center(
                    child: Text(
                      'Vanspati Seva',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.gilroySemiBold(
                        context.sp(14),
                        color: !isGodSeva ? Colors.white : const Color(0xFF793C01),
                      ),
                    ),
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
