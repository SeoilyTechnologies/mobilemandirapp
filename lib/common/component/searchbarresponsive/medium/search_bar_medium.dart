import '../../../../../../common/routes/exports.dart';
import '../search_bar_core.dart';
import '../search_bar_ui.dart';

class SearchBarMedium extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final VoidCallback? onMicTap;
  final VoidCallback? onBarTap;

  final TextEditingController? controller;
  final List<String>? animatedHints;

  const SearchBarMedium({
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
      builder: (c, isL, s, micTap, onChanged) {
        return SearchBarUI(
          height: 52,
          iconSize: 20,
          fontFactor: 0.028,
          hintFactor: 0.029,
          controller: c,
          isListening: isL,
          status: s,
          animatedHints: animatedHints,
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