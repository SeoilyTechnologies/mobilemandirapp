import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/services.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/routes/exports.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final String countryCode;
  final String flagAsset;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const PhoneNumberField({
    super.key,
    required this.controller,
    this.countryCode = "+91",
    this.flagAsset = "assets/flags/india.png",
    this.hintText = "Phone Number",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.phoneNumber,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.034,
            color: AppColor.fullBlack,
          ),
        ),
        const SizedBox(height: 6),

        Row(
          children: [
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    flagAsset,
                    width: 18,
                    height: 18,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    countryCode,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.038,
                      color: AppColor.appBlack,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            /// 📞 Phone Icon + TextField Box (SEPARATE)
            Expanded(
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/new_design/icon/call_outline.png",
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        controller: controller,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        onChanged: onChanged,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.038,
                          color: AppColor.appBlack,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          isDense: true,
                          //contentPadding: EdgeInsets.symmetric(
                          // vertical: 16,
                          // horizontal: 4,
                          //),
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PhoneNumberFieldMedium extends StatelessWidget {
  final TextEditingController controller;
  final String countryCode;
  final String flagAsset;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const PhoneNumberFieldMedium({
    super.key,
    required this.controller,
    this.countryCode = "+91",
    this.flagAsset = "assets/flags/india.png",
    this.hintText = "Phone Number",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.phoneNumber,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.034,
            color: AppColor.fullBlack,
          ),
        ),
        const SizedBox(height: 6),

        Row(
          children: [
            Container(
              height: context.screenHeight * 0.06,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    flagAsset,
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    countryCode,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.038,
                      color: AppColor.appBlack,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            /// 📞 Phone Icon + TextField Box (SEPARATE)
            Expanded(
              child: Container(
                height: context.screenHeight * 0.06,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/new_design/icon/call_outline.png",
                      width: 34,
                      height: 34,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        controller: controller,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        onChanged: onChanged,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.038,
                          color: AppColor.appBlack,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 4,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 18,
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PhoneNumberFieldLarge extends StatelessWidget {
  final TextEditingController controller;
  final String countryCode;
  final String flagAsset;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const PhoneNumberFieldLarge({
    super.key,
    required this.controller,
    this.countryCode = "+91",
    this.flagAsset = "assets/flags/india.png",
    this.hintText = "Phone Number",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.phoneNumber,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.025,
            color: AppColor.fullBlack,
          ),
        ),
        const SizedBox(height: 6),

        Row(
          children: [
            Container(
              height: context.screenHeight * 0.067,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    flagAsset,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    countryCode,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.02,
                      color: AppColor.appBlack,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            /// 📞 Phone Icon + TextField Box (SEPARATE)
            Expanded(
              child: Container(
                height: context.screenHeight * 0.067,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/new_design/icon/call_outline.png",
                      width: context.screenWidth * 0.02,
                      height: context.screenHeight * 0.03,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        controller: controller,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        onChanged: onChanged,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.02,
                          color: AppColor.appBlack,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 4,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
