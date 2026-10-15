import 'package:mandirapp/common/component/common_textfield/seva_section_level.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';

class SevaTextFieldView extends StatelessWidget {
  const SevaTextFieldView({
    required this.label,
    required this.hint,
    required this.controller,
    required this.maxLines,
    required this.keyboardType,
    required this.onChanged,
    required this.suffixWidget,
    required this.isColoredBorder,
    required this.fontScale,
    required this.paddingV,
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final int maxLines;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Widget? suffixWidget;
  final bool isColoredBorder;

  final double fontScale;
  final double paddingV;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SevaSectionLabel(label: label),
        SizedBox(height: context.screenHeight * 0.008),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.screenWidth * 0.025,
          ),
          decoration: BoxDecoration(
            color: AppColor.appWhiteColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: isColoredBorder ? Colors.grey : AppColor.appWhiteColor,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFB7B7B7).withOpacity(0.25),
                offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  maxLines: maxLines,
                  keyboardType: keyboardType,
                  onChanged: onChanged,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * fontScale,
                    color: AppColor.appBlack,
                  ),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: AppTextStyle.gilroyMedium(
                      context.screenWidth * fontScale,
                      color: AppColor.newGreyy,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: paddingV),
                  ),
                ),
              ),
              if (suffixWidget != null) suffixWidget!,
            ],
          ),
        ),
      ],
    );
  }
}
