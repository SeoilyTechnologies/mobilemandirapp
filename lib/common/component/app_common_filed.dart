import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

String _getLocalizedGender(BuildContext context, String value) {
  switch (value.toLowerCase()) {
    case 'male':
    case 'm':
    case 'पुरुष':
      return context.l10n.male;
    case 'female':
    case 'f':
    case 'महिला':
      return context.l10n.female;
    case 'other':
    case 'o':
    case 'अन्य':
      return context.l10n.other;
    default:
      return value;
  }
}

String _getLocalizedHint(BuildContext context, String hint) {
  if (hint.toLowerCase() == 'select gender') {
    return context.l10n.selectGender;
  }
  return hint;
}

String? _normalizeDropdownValue(String text, List<String>? items) {
  if (text.isEmpty || items == null) return null;
  final clean = text.trim().toLowerCase();
  String? mappedText;
  if (clean == 'male' || clean == 'm' || clean == 'पुरुष') {
    mappedText = 'Male';
  } else if (clean == 'female' || clean == 'f' || clean == 'महिला') {
    mappedText = 'Female';
  } else if (clean == 'other' || clean == 'o' || clean == 'अन्य') {
    mappedText = 'Other';
  }
  for (final item in items) {
    if (item.toLowerCase() == clean ||
        (mappedText != null &&
            item.toLowerCase() == mappedText.toLowerCase())) {
      return item;
    }
  }
  return null;
}

class AppCommonField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final AppFieldType fieldType;
  final List<String>? dropdownItems;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String? prefixAsset;

  /// 👇 NEW (optional)
  final FocusNode? focusNode;

  const AppCommonField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.fieldType,
    this.dropdownItems,
    this.onChanged,
    this.onTap,
    this.prefixAsset,
    this.focusNode, // 👈 added
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        Text(
          label,
          style: AppTextStyle.gilroySemiBold(
            context.screenWidth * 0.0373,
            color: AppColor.newsecondaruy,
          ),
        ),
        const SizedBox(height: 6),

        /// Field Container
        Container(
          height: 45,
          padding: EdgeInsets.symmetric(
            horizontal: label == "Full Name" ? 8 : 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFB7B7B7).withOpacity(0.25),
                offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: _buildField(context),
        ),
      ],
    );
  }

  Widget _buildField(BuildContext context) {
    switch (fieldType) {
      case AppFieldType.text:
        return _textField(context);
      case AppFieldType.dropdown:
        return _dropdownField(context);
      case AppFieldType.date:
      case AppFieldType.time:
        return _pickerField(context);
    }
  }

  /// ================= TEXT FIELD =================
  Widget _textField(BuildContext context) {
    return Row(
      //alignment: Alignment.centerLeft,
      children: [
        if (prefixAsset != null)
          Image.asset(prefixAsset!, width: 20, height: 20),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            // 👈 attached here
            onChanged: onChanged,
            onTap: onTap,
            style: AppTextStyle.gilroyMedium(
              context.screenWidth * 0.0371,
              color: AppColor.fullBlack,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              // contentPadding: EdgeInsets.only(
              //   left: prefixAsset == null ? 0 : 40,
              //   top: 12,
              //   bottom: 4,
              // ),
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),

        /// Prefix Icon
        // if (prefixAsset != null)
        //   Positioned(
        //     left: 0,
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 8),
        //       child: Image.asset(
        //         prefixAsset!,
        //         width: 20,
        //         height: 20,
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  /// ================= DROPDOWN FIELD =================
  Widget _dropdownField(BuildContext context) {
    return Row(
      children: [
        if (prefixAsset != null)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(prefixAsset!, width: 20, height: 20),
          ),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _normalizeDropdownValue(controller.text, dropdownItems),
              hint: Text(
                _getLocalizedHint(context, hint),
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.0371,
                  color: AppColor.fullBlack,
                ),
              ),
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.0371,
                color: AppColor.fullBlack,
              ),
              isExpanded: false,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: dropdownItems
                  ?.map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(_getLocalizedGender(context, e)),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                controller.text = value ?? '';
                if (onChanged != null && value != null) {
                  onChanged!(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  /// ================= DATE / TIME FIELD =================
  Widget _pickerField(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (prefixAsset != null)
            Image.asset(prefixAsset!, width: 20, height: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              controller.text.isEmpty ? hint : controller.text,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.0371,
                color: controller.text.isEmpty
                    ? AppColor.newGreyy
                    : AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppCommonFieldMedium extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final AppFieldType fieldType;
  final List<String>? dropdownItems;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String? prefixAsset;

  /// 👇 NEW (optional)
  final FocusNode? focusNode;

  const AppCommonFieldMedium({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.fieldType,
    this.dropdownItems,
    this.onChanged,
    this.onTap,
    this.prefixAsset,
    this.focusNode, // 👈 added
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        Text(
          label,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.03,
            color: AppColor.newsecondaruy,
          ),
        ),
      //  const SizedBox(height: 2),

        /// Field Container
        Container(
          height: 52,
          padding: EdgeInsets.symmetric(
            horizontal: label == "Full Name" ? 0 : 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFB7B7B7).withOpacity(0.25),
                offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: _buildFieldMedium(context),
        ),
      ],
    );
  }

  Widget _buildFieldMedium(BuildContext context) {
    switch (fieldType) {
      case AppFieldType.text:
        return _textField(context);
      case AppFieldType.dropdown:
        return _dropdownFieldMedium(context);
      case AppFieldType.date:
      case AppFieldType.time:
        return _pickerFieldMedium(context);
    }
  }

  /// ================= TEXT FIELD =================


  Widget _textField(BuildContext context) {
    return Row(
      //alignment: Alignment.centerLeft,
      children: [
        if (prefixAsset != null)
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Image.asset(prefixAsset!, width: 26, height: 26),
          ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            onTap: onTap,
            style: AppTextStyle.gilroyMedium(
              context.screenWidth * 0.03,
              color: AppColor.fullBlack,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: false,
              contentPadding: EdgeInsets.only(left: 0, top: 0, bottom: 6),
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),

        /// Prefix Icon
        // if (prefixAsset != null)
        //   Positioned(
        //     left: 0,
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 8),
        //       child: Image.asset(
        //         prefixAsset!,
        //         width: 20,
        //         height: 20,
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  /// ================= DROPDOWN FIELD =================
  Widget _dropdownFieldMedium(BuildContext context) {
    return Row(
      children: [
        if (prefixAsset != null)
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Image.asset(prefixAsset!, width: 26, height: 26),
          ),
        const SizedBox(width: 8),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _normalizeDropdownValue(controller.text, dropdownItems),
              hint: Text(
                _getLocalizedHint(context, hint),
                style: AppTextStyle.gilroyMedium(
                  context.screenWidth * 0.028,
                  color: AppColor.fullBlack,
                ),
              ),
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.028,
                color: AppColor.fullBlack,
              ),

              isExpanded: false,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: dropdownItems
                  ?.map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(_getLocalizedGender(context, e)),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                controller.text = value ?? '';
                if (onChanged != null && value != null) {
                  onChanged!(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  /// ================= DATE / TIME FIELD =================
  Widget _pickerFieldMedium(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (prefixAsset != null)
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Image.asset(prefixAsset!, width: 26, height: 26),
            ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              controller.text.isEmpty ? hint : controller.text,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.028,
                color: AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class AppCommonFieldLargeLandScape extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final AppFieldType fieldType;
  final List<String>? dropdownItems;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String? prefixAsset;

  /// 👇 NEW (optional)
  final FocusNode? focusNode;

  const AppCommonFieldLargeLandScape({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.fieldType,
    this.dropdownItems,
    this.onChanged,
    this.onTap,
    this.prefixAsset,
    this.focusNode, // 👈 added
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        Text(
          label,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.02,
            color: AppColor.newsecondaruy,
          ),
        ),
        //  const SizedBox(height: 2),

        /// Field Container
        Container(
          height: 52,
          padding: EdgeInsets.symmetric(
            horizontal: label == "Full Name" ? 0 : 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFB7B7B7).withOpacity(0.25),
                offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: _buildFieldMedium(context),
        ),
      ],
    );
  }

  Widget _buildFieldMedium(BuildContext context) {
    switch (fieldType) {
      case AppFieldType.text:
        return _textField(context);
      case AppFieldType.dropdown:
        return _dropdownFieldMedium(context);
      case AppFieldType.date:
      case AppFieldType.time:
        return _pickerFieldMedium(context);
    }
  }

  /// ================= TEXT FIELD =================
  // Widget _textField(BuildContext context) {
  //   return Stack(
  //     alignment: Alignment.centerLeft,
  //     children: [
  //       TextField(
  //         controller: controller,
  //         focusNode: focusNode,
  //         // 👈 attached here
  //         onChanged: onChanged,
  //         onTap: onTap,
  //         style: AppTextStyle.gilroySemiBold(
  //           context.screenWidth * 0.0371,
  //           color: AppColor.fullBlack,
  //         ),
  //         decoration: InputDecoration(
  //           isDense: true,
  //           contentPadding: EdgeInsets.only(
  //             left: prefixAsset == null ? 0 : 48,
  //             top: 12,
  //             bottom: 4,
  //           ),
  //           hintText: hint,
  //           border: InputBorder.none,
  //         ),
  //       ),
  //
  //       /// Prefix Icon
  //       if (prefixAsset != null)
  //         Positioned(
  //           left: 0,
  //           child: Padding(
  //             padding: const EdgeInsets.only(left: 8),
  //             child: Image.asset(
  //               prefixAsset!,
  //               width: 32,
  //               height: 32,
  //               fit: BoxFit.contain,
  //             ),
  //           ),
  //         ),
  //     ],
  //   );
  // }

  Widget _textField(BuildContext context) {
    return Row(
      //alignment: Alignment.centerLeft,
      children: [
        if (prefixAsset != null)
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Image.asset(prefixAsset!, width: 22, height: 26),
          ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            onTap: onTap,
            style: AppTextStyle.gilroyMedium(
              context.screenWidth * 0.02,
              color: AppColor.fullBlack,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: false,
              contentPadding: EdgeInsets.only(left: 0, top: 0, bottom: 6),
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),

        /// Prefix Icon
        // if (prefixAsset != null)
        //   Positioned(
        //     left: 0,
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 8),
        //       child: Image.asset(
        //         prefixAsset!,
        //         width: 20,
        //         height: 20,
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  /// ================= DROPDOWN FIELD =================
  Widget _dropdownFieldMedium(BuildContext context) {
    return Row(
      children: [
        if (prefixAsset != null)
          Padding(
            padding: EdgeInsets.only(left: 2),
            child: Image.asset(prefixAsset!, width: 22, height: 26),
          ),
        const SizedBox(width: 8),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _normalizeDropdownValue(controller.text, dropdownItems),
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.02,
                color: AppColor.fullBlack,
              ),


              isExpanded: false,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: dropdownItems
                  ?.map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(_getLocalizedGender(context, e)),
                    ),
              )
                  .toList(),
              onChanged: (value) {
                controller.text = value ?? '';
                if (onChanged != null && value != null) {
                  onChanged!(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  /// ================= DATE / TIME FIELD =================
  Widget _pickerFieldMedium(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (prefixAsset != null)
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: Image.asset(prefixAsset!, width: 22, height: 26),
            ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              controller.text.isEmpty ? hint : controller.text,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.02,
                color: AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


enum AppFieldType { text, dropdown, date, time }
