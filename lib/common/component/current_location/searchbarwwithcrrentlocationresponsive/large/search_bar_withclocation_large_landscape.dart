import '../../../../../../common/routes/exports.dart';
import '../search_bar_withcurrentlocation_core.dart';
import '../search_bar_withcurrent_ui.dart';

class SearchBarWithclocationLargeLandscape extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;

  const SearchBarWithclocationLargeLandscape({
    super.key,
    this.onChanged,
    this.hintText,
    this.micIcon,
    this.activeMicIcon,
    this.controller,
    this.onMicTap,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBarWithcurrentlocationCore(
      controller: controller,
      onChanged: onChanged,
      onMicTap: onMicTap,
      builder: (c, micTap, onChanged) {
        return SearchBarWithcurrentUi(
          height: 52,
          iconSize: 20,
          fontFactor: 0.018,
          hintFactor: 0.016,
          controller: c,
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