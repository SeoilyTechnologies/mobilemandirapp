import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/l10n/l10n.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final VoidCallback? onTermsTap;

  const TermsCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.onTermsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColor.newsecondaruy,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),

        const SizedBox(width: 6),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  height: 1.3,
                  color: AppColor.newGreyy,
                  fontFamily: AppFont.gilroyMedium,
                ),
                children: [
                  TextSpan(
                    text: context.l10n.iAcceptThe,
                  ),

                  TextSpan(
                    text: context.l10n.termsAndConditions,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.newsecondaruy,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = onTermsTap,
                  ),

                  TextSpan(
                    text: context.l10n.communicationConsent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TermsCheckboxMedium extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final VoidCallback? onTermsTap;

  const TermsCheckboxMedium({
    super.key,
    required this.value,
    required this.onChanged,
    this.onTermsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColor.newsecondaruy,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),

        const SizedBox(width: 6),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.3,
                  color: AppColor.newGreyy,
                  fontFamily: AppFont.gilroyMedium,
                ),
                children: [
                  TextSpan(
                    text: context.l10n.iAcceptThe,
                  ),

                  TextSpan(
                    text: context.l10n.termsAndConditions,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.newsecondaruy,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = onTermsTap,
                  ),

                  TextSpan(
                    text: context.l10n.communicationConsent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// class TermsCheckboxMedium extends StatelessWidget {
//   final bool value;
//   final ValueChanged<bool?> onChanged;
//   final String text;
//   final VoidCallback? onTextTap;
//
//   const TermsCheckboxMedium({
//     super.key,
//     required this.value,
//     required this.onChanged,
//     required this.text,
//     this.onTextTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(top: 0),
//           child: Checkbox(
//             value: value,
//             onChanged: onChanged,
//             activeColor: AppColor.newsecondaruy, // change as per theme
//             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           ),
//         ),
//         const SizedBox(width: 6),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: 3, top: 8),
//             child: GestureDetector(
//               onTap: onTextTap,
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 18,
//                   height: 1.2,
//                   color: AppColor.newGreyy,
//                   fontFamily: AppFont.gilroyMedium,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }



class TermsCheckboxLarge extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String text;
  final VoidCallback? onTextTap;

  const TermsCheckboxLarge({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
    this.onTextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColor.newsecondaruy, // change as per theme
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 3, top: 8),
            child: GestureDetector(
              onTap: onTextTap,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: context.screenWidth * 0.017,
                  height: 1.2,
                  color: AppColor.newGreyy,
                  fontFamily: AppFont.gilroyMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class TermsCheckboxLargeLandScape extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String text;
  final VoidCallback? onTextTap;

  const TermsCheckboxLargeLandScape({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
    this.onTextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColor.newsecondaruy, // change as per theme
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 3, top: 8),
            child: GestureDetector(
              onTap: onTextTap,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: context.screenWidth * 0.013,
                  height: 1.2,
                  color: AppColor.newGreyy,
                  fontFamily: AppFont.gilroyMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
