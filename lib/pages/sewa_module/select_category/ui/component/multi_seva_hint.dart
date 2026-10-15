import 'package:mandirapp/l10n/l10n.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class MultiSevaHint extends StatelessWidget {
  const MultiSevaHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/new_design/vendor/multiple_selection_background.png"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'You can add multiple seva types after registration is complete',
        style: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.029,
          color: AppColor.newGreyy,
        ),
      ),
    );
  }
}