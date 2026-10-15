import 'dart:async';

import 'package:mandirapp/common/component/searchbarresponsive/large/search_bar_large.dart';
import 'package:mandirapp/common/component/searchbarresponsive/large/search_bar_large_landscape.dart';
import 'package:mandirapp/common/component/searchbarresponsive/medium/search_bar_medium.dart';
import 'package:mandirapp/common/component/searchbarresponsive/medium/search_bar_medium_landscape.dart';
import 'package:mandirapp/common/component/searchbarresponsive/small/search_bar_small.dart';
import 'package:mandirapp/common/component/searchbarresponsive/small/search_bar_widget_smalllandscape.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
class SearchBarWidgett extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;
  final VoidCallback? onBarTap;
  final List<String>? animatedHints;
  const SearchBarWidgett({
    super.key,
    this.onChanged,
    this.hintText,
    this.micIcon,
    this.activeMicIcon,
    this.controller,
    this.onMicTap,
    this.onBarTap,
    this.animatedHints,

  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return context.isPortrait
          ? SearchBarSmall(
        controller: controller,
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
        onMicTap: onMicTap,
        onBarTap: onBarTap,
        animatedHints: animatedHints,
      )
          : SearchBarSmallLandscape(

        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    } else if (context.isMediumScreen) {
      return context.isPortrait
          ? SearchBarMedium(
        controller: controller,
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
        onMicTap: onMicTap,
        onBarTap: onBarTap,
        animatedHints: animatedHints,
      )
          : SearchBarMediumLandscape(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    } else {
      return context.isPortrait
          ? SearchBarLarge(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      )
          : SearchBarLargeLandscape(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    }
  }
}
