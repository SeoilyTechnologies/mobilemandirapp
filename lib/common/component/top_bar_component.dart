import 'package:mandirapp/common/values/screenUtils.dart';

import '../routes/exports.dart';
import 'app_text_style.dart';

class TopBarComponent extends StatelessWidget {
  final String title;
  final VoidCallback onBackTap;

  final bool showAction;
  final IconData actionIcon;
  final VoidCallback? onActionTap;

  final double? horizontalPadding;
  final double? verticalPadding;

  const TopBarComponent({
    super.key,
    required this.title,
    required this.onBackTap,
    this.showAction = false,
    this.actionIcon = Icons.favorite,
    this.onActionTap,
    this.horizontalPadding,
    this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0,
        vertical: verticalPadding ?? 12,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onBackTap,
            child: const Icon(Icons.arrow_back_ios_new, size: 24),
          ),

          const SizedBox(width: 12),

          Text(
            title,
            style: AppTextStyle.bold(
              context.screenWidth * 0.042,
              color: Colors.black,
            ),
          ),

          const Spacer(),

          if (showAction)
            GestureDetector(
              onTap: onActionTap,
              child: Icon(
                actionIcon,
                size: 26,
                color: Colors.red,
              ),
            ),
        ],
      ),
    );
  }
}
