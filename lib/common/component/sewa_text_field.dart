
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import 'common_textfield/large/seva_textfield_large.dart';
import 'common_textfield/medium/seva_textfield_medium.dart';
import 'common_textfield/medium/seva_textfield_medium_landscape.dart';
import 'common_textfield/small/seva_textfield_small.dart';
import 'common_textfield/small/seva_textfield_small_landscape.dart';


class SevaTextField extends StatelessWidget {
  const SevaTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.maxLines = 1,
    this.keyboardType,
    this.onChanged,
    this.suffixWidget,
    this.isColoredBorder = false,
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final int maxLines;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Widget? suffixWidget;
  final bool isColoredBorder;

  @override
  Widget build(BuildContext context) {

    if (context.isSmallScreen) {
      return context.isPortrait
          ? SevaTextFieldSmall(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      )
          : SevaTextFieldSmallLandscape(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      );
    }

    else if (context.isMediumScreen) {
      return context.isPortrait
          ? SevaTextFieldMedium(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      )
          : SevaTextFieldMediumLandscape(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      );
    }

    else {
      return context.isPortrait
          ? SevaTextFieldLarge(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      )
          : SevaTextFieldLargeLandscape(
        label: label,
        hint: hint,
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        onChanged: onChanged,
        suffixWidget: suffixWidget,
        isColoredBorder: isColoredBorder,
      );
    }
  }
}


class SevaDropdownField extends StatelessWidget {
  const SevaDropdownField({
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.items,
    this.onChanged,
  });

  final String label;
  final String hint;
  final String? value;
  final List<String> items;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //SevaSectionLabel(label: label),
        const SizedBox(height: 6),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor.appWhiteColor,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              color: AppColor.appWhiteColor,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFB7B7B7).withOpacity(0.25),
                offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),

          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              hint: Text(
                hint,
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.032,
                  color: AppColor.newGreyy,
                ),
              ),

              icon: const Icon(Icons.keyboard_arrow_down),

              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.032,
                color: AppColor.appBlack,
              ),

              items: items.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),

              onChanged: (val) {
                if (val != null) {
                  onChanged?.call(val);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}