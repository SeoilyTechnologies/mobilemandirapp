import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class SevaSectionLabel extends StatelessWidget {
  const SevaSectionLabel({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppTextStyle.gilroySemiBold(
        context.screenWidth * 0.0373,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}