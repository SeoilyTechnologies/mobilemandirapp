import '../../../../../../common/routes/exports.dart';
import '../search_bar_core.dart';
import '../search_bar_ui.dart';

class SearchBarSmall extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final VoidCallback? onMicTap;
  final VoidCallback? onBarTap;

  final TextEditingController? controller;
  final List<String>? animatedHints;

  const SearchBarSmall({
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
    return SearchBarCore(
      onChanged: onChanged,
      controller: controller,

      onMicTap: onMicTap,
      builder: (c, isL, s, micTap, onChanged) {
        return SearchBarUI(
          height: 42,
          animatedHints: animatedHints,
          iconSize: 14,
          fontFactor: 0.036,
          hintFactor: 0.035,
          controller: c,
          isListening: isL,
          status: s,
          onMicTap: micTap,
          onBarTap: onBarTap,
          onChanged: onChanged,
          hintText: hintText,
          micIcon: micIcon,
          activeMicIcon: activeMicIcon,
        );
      },
    );
  }
}
