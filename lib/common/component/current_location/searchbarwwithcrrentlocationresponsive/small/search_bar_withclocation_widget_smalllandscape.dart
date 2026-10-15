import '../../../../../../common/routes/exports.dart';
import '../search_bar_withcurrentlocation_core.dart';
import '../search_bar_withcurrent_ui.dart';

class SearchBarWithclocationWidgetSmalllandscape extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;

  const SearchBarWithclocationWidgetSmalllandscape({
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
          height: 44,
          iconSize: 16,
          fontFactor: 0.030,
          hintFactor: 0.028,
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