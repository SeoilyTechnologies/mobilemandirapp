import '../../../../../../common/routes/exports.dart';
import '../search_bar_core.dart';
import '../search_bar_ui.dart';

class SearchBarSmallLandscape extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;

  const SearchBarSmallLandscape({
    super.key,
    this.onChanged,
    this.hintText,
    this.micIcon,
    this.activeMicIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBarCore(
      onChanged: onChanged,
      builder: (c, isL, s, micTap, onChanged) {
        return SearchBarUI(
          height: 44,
          iconSize: 16,
          fontFactor: 0.030,
          hintFactor: 0.028,
          controller: c,
          isListening: isL,
          status: s,
          onMicTap: micTap,
          onChanged: onChanged,
          hintText: hintText,
          micIcon: micIcon,
          activeMicIcon: activeMicIcon,
        );
      },
    );
  }
}