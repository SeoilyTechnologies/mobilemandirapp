import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class TextWithAddbtn extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;
  final bool showActionButton;

  const TextWithAddbtn({
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
            context.screenWidth * 0.048,
            color: AppColor.fullBlack,
          ),
        ),
if(showActionButton)
        Container(
          padding: EdgeInsets.only(left: 8,right: 8,top: 6,bottom: 6),
          decoration: BoxDecoration(
            color: AppColor.newsecondaruy,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Row(
            spacing: 6,
            children: [
              Image.asset("assets/new_design/icon/add_image.png", width: 16),
              Text(
                actionText ?? "",
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.0373,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
