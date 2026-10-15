import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import '../values/app_color.dart';
import '../values/screenUtils.dart';
import 'app_text_style.dart';

class LoadMoreButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;

  const LoadMoreButton({
    super.key,
    this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 4,
        ),
        child: Text(
          title ?? context.l10n.loadMore,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.0373,
            color: AppColor.appWhiteColor,
          ),
        ),
      ),
    );
  }
}