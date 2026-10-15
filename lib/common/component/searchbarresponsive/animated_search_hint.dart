import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../pages/mobile_mandir_home/presentation/ui/component/search_bar_widget.dart';
import '../../values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
class AnimatedSearchHint extends StatefulWidget {
  final List<String>? animatedHints;
  final String? hintText;
  final double fontSize;
  final bool isListening;

  const AnimatedSearchHint({
    super.key,
    this.animatedHints,
    this.hintText,
    required this.fontSize,
    required this.isListening,
  });

  @override
  State<AnimatedSearchHint> createState() => _AnimatedSearchHintState();
}

class _AnimatedSearchHintState extends State<AnimatedSearchHint> {
  int current = 0;

  @override
  void initState() {
    super.initState();

    if ((widget.animatedHints?.length ?? 0) > 1) {
      Timer.periodic(const Duration(seconds: 2), (timer) {
        if (!mounted) {
          timer.cancel();
          return;
        }

        setState(() {
          current = (current + 1) % widget.animatedHints!.length;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = widget.animatedHints ?? [];
    if (list.isEmpty) {
      return Text(
        widget.hintText ?? "",
        style: AppTextStyle.gilroySemiBold(
          widget.fontSize,
          color: AppColor.appBlack,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    }
    return  Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(
          context.l10n.searchPrefix,
          style: AppTextStyle.gilroySemiBold(
            widget.fontSize,
            color: AppColor.appBlack,
          ),
        ),

        Flexible(
          child: BlinkitAnimatedText(
            texts: widget.animatedHints ?? [],
            style: AppTextStyle.gilroySemiBold(
              widget.fontSize,
              color: AppColor.appBlack,
            ),
          ),
        ),
      ],
    );
  }
}