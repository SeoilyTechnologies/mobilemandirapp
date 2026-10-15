import '../../../../../../../common/routes/exports.dart';
import '../seva_text_field_view.dart';
class SevaTextFieldSmallLandscape extends StatelessWidget {
  const SevaTextFieldSmallLandscape({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.maxLines,
    this.keyboardType,
    this.onChanged,
    this.suffixWidget,
    required this.isColoredBorder,
  });

  final String label, hint;
  final TextEditingController controller;
  final int maxLines;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Widget? suffixWidget;
  final bool isColoredBorder;

  @override
  Widget build(BuildContext context) {
    return SevaTextFieldView(
      label: label,
      hint: hint,
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      onChanged: onChanged,
      suffixWidget: suffixWidget,
      isColoredBorder: isColoredBorder,
      fontScale: 0.024,
      paddingV: 10,
    );
  }
}