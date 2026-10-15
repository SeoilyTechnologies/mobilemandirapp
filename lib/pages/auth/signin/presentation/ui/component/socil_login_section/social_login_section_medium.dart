import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../social_login_button/social_login_button.dart';

class SocialLoginSectionMedium extends StatelessWidget {
  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;

  const SocialLoginSectionMedium({
    super.key,
    required this.onGoogleTap,
    required this.onAppleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.screenWidth * 0.2,
        right: context.screenWidth * 0.2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(height: 1, color: const Color(0xFFE0E0E0)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  context.l10n.orLoginWith,
                  style: const TextStyle(
                    fontFamily: AppFont.gilroyMedium,
                    fontSize: 16,
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Container(height: 1, color: const Color(0xFFE0E0E0)),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.only(
              left: context.screenWidth * 0.1,
              right: context.screenWidth * 0.1,
            ),
            child: Row(
              children: [
                SocialLoginButton(
                  title: context.l10n.google,
                  iconPath: "assets/icons/google_login_icon.png",
                  onTap: onGoogleTap,
                ),

                if (Platform.isIOS) ...[
                  const SizedBox(width: 12),
                  Expanded(
                    child: SocialLoginButton(
                      title: context.l10n.apple,
                      iconPath: "assets/icons/apple_login_icon.png",
                      onTap: onAppleTap,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
