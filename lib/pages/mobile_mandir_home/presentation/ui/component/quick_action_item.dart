import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';

class QuickActionItem extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback? onTap;   // ← optional

  const QuickActionItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,                // ← optional
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("$icon",width: 48,height: 48,fit: BoxFit.contain,),
          const SizedBox(height: 8),
          Text(
            label,
            style:  AppTextStyle.bold(context.screenWidth*0.032,color: Colors.black),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
