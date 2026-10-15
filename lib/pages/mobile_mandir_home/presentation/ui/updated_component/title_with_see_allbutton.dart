import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class TitleWithSeeAllButton extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;
  final bool showActionButton;

  const TitleWithSeeAllButton({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
    this.showActionButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroyBold(
            fontWeight: FontWeight.w400,

            context.screenWidth * 0.053,
            color: AppColor.fullBlack,
          ),
        ),

        if (showActionButton)
          InkWell(
            onTap: onActionTap,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.newsecondaruy,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                actionText ?? '',
                style: AppTextStyle.gilroyBold(
                  context.screenWidth*0.034,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class TitleWithSeeAllButtonLarge extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;
  final bool showActionButton;

  const TitleWithSeeAllButtonLarge({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
    this.showActionButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.03,
            color: AppColor.fullBlack,
          ),
        ),

        if (showActionButton)
          InkWell(
            onTap: onActionTap,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.newsecondaruy,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                actionText ?? '',
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.02,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
