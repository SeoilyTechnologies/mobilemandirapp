import '../../../../../../common/routes/exports.dart';
import '../search_bar_withcurrentlocation_core.dart';
import '../search_bar_withcurrent_ui.dart';
import '../../../../../../common/routes/exports.dart';
import '../search_bar_withcurrentlocation_core.dart';
import '../search_bar_withcurrent_ui.dart';

class SearchBarWithclocationSmall extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final VoidCallback? onMicTap;
  final TextEditingController? controller;

  const SearchBarWithclocationSmall({
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
          height: 42,
          iconSize: 14,
          fontFactor: 0.036,
          hintFactor: 0.035,
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
// class SearchBarWithclocationSmall extends StatelessWidget {
//   final Function(String)? onChanged;
//   final String? hintText;
//   final String? micIcon;
//   final String? activeMicIcon;
//   final VoidCallback? onMicTap;
//
//   final TextEditingController? controller;
//
//   const SearchBarWithclocationSmall({
//     super.key,
//     this.onChanged,
//     this.hintText,
//     this.micIcon,
//     this.activeMicIcon,
//     this.controller,
//     this.onMicTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SearchBarWithcurrentlocationCore(
//       onChanged: onChanged,
//       controller: controller,
//       onMicTap: onMicTap,
//       builder: (c, isL, s, micTap, onChanged) {
//         return SearchBarWithcurrentUi(
//           height: 42,
//           iconSize: 14,
//           fontFactor: 0.036,
//           hintFactor: 0.035,
//           controller: c,
//           isListening: isL,
//           status: s,
//           onMicTap: micTap,
//           onChanged: onChanged,
//           hintText: hintText,
//           micIcon: micIcon,
//           activeMicIcon: activeMicIcon,
//         );
//       },
//     );
//   }
// }
