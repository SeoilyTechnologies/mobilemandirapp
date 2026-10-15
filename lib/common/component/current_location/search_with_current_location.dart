import 'dart:async';

import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/large/search_bar_withclocation_large.dart';
import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/large/search_bar_withclocation_large_landscape.dart';
import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/medium/search_bar_withclocation_medium.dart';
import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/medium/search_bar_withclocation_medium_landscape.dart';
import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/small/search_bar_withclocation_small.dart';
import 'package:mandirapp/common/component/current_location/searchbarwwithcrrentlocationresponsive/small/search_bar_withclocation_widget_smalllandscape.dart';
import 'package:mandirapp/common/component/searchbarresponsive/large/search_bar_large.dart';
import 'package:mandirapp/common/component/searchbarresponsive/large/search_bar_large_landscape.dart';
import 'package:mandirapp/common/component/searchbarresponsive/medium/search_bar_medium.dart';
import 'package:mandirapp/common/component/searchbarresponsive/medium/search_bar_medium_landscape.dart';
import 'package:mandirapp/common/component/searchbarresponsive/small/search_bar_small.dart';
import 'package:mandirapp/common/component/searchbarresponsive/small/search_bar_widget_smalllandscape.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/screenUtils.dart';
class SearchWithCurrentLocation extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;

  const SearchWithCurrentLocation({
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
    if (context.isSmallScreen) {
      return context.isPortrait
          ? SearchBarWithclocationSmall(
        controller: controller,
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
        onMicTap: onMicTap,
      )
          : SearchBarWithclocationWidgetSmalllandscape(

        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    } else if (context.isMediumScreen) {
      return context.isPortrait
          ? SearchBarWithclocationMedium(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      )
          : SearchBarWithclocationMediumLandscape(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    } else {
      return context.isPortrait
          ? SearchBarWithclocationLarge(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      )
          : SearchBarWithclocationLargeLandscape(
        onChanged: onChanged,
        hintText: hintText,
        micIcon: micIcon,
        activeMicIcon: activeMicIcon,
      );
    }
  }
}


// class SearchBarWidgett extends StatelessWidget {
//   final Function(String)? onChanged;
//
//   const SearchBarWidgett({super.key, this.onChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     /// SMALL
//     if (context.isSmallScreen) {
//       return context.isPortrait
//           ? SearchBarSmall(onChanged: onChanged)
//           : SearchBarSmallLandscape(onChanged: onChanged);
//     }
//
//     /// MEDIUM
//     else if (context.isMediumScreen) {
//       return context.isPortrait
//           ? SearchBarMedium(onChanged: onChanged)
//           : SearchBarMediumLandscape(onChanged: onChanged);
//     }
//
//     /// LARGE
//     else {
//       return context.isPortrait
//           ? SearchBarLarge(onChanged: onChanged)
//           : SearchBarLargeLandscape(onChanged: onChanged);
//     }
//   }
// }
// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     /// SMALL SCREEN (Mobile)
//     if (context.isSmallScreen) {
//       return context.isPortrait
//           ? SearchBarWidgettSmall()
//           : SearchBarWidgettSmallLandscape(); // 👈 create if needed
//     }
//
//     /// MEDIUM SCREEN (Tablet)
//     else if (context.isMediumScreen) {
//       return context.isPortrait
//           ? SearchBarWidgettMedium()
//           : SearchBarWidgettMediumLandscaper();
//     }
//
//     /// LARGE SCREEN (Desktop / Web)
//     else {print("CODE IS RUNNING HERE HERE HERE HERE.LoginLargeLoginLarge........");
//     return context.isPortrait
//         ? SearchBarWidgettLarge()
//         : SearchBarWidgettLargeLandsacpe();
//     }
//   }
// }
//
//
//
//
//
// class SearchBarWidgett extends StatefulWidget {
//   final Function(String)? onChanged;
//
//   const SearchBarWidgett({super.key, this.onChanged});
//
//   @override
//   State<SearchBarWidgett> createState() => _SearchBarWidgettState();
// }
//
// class _SearchBarWidgettState extends State<SearchBarWidgett> {
//   final TextEditingController _controller = TextEditingController();
//   Timer? _timer;
//   late stt.SpeechToText _speech;
//
//   bool _isListening = false;
//   bool _speechEnabled = false;
//   String _status = "Tap mic to speak";
//
//   @override
//   void initState() {
//     super.initState();
//     _initSpeech();
//   }
//
//   /// ✅ INIT (IMPORTANT)
//   void _initSpeech() async {
//     _speech = stt.SpeechToText();
//
//     _speechEnabled = await _speech.initialize(
//       onStatus: (status) {
//         print("STATUS: $status");
//
//         if (status == "done" || status == "notListening") {
//           _stopListening();
//         }
//       },
//       onError: (error) {
//         print("ERROR: $error");
//         _stopListening();
//       },
//     );
//
//     setState(() {});
//   }
//
//   /// 🎤 START
//   void _startListening() async {
//     if (!_speechEnabled) return;
//
//     setState(() {
//       _isListening = true;
//       _status = "Listening...";
//     });
//
//     await _speech.listen(
//       localeId: "en_US",
//       onResult: (result) {
//         _controller.text = result.recognizedWords;
//
//         _controller.selection = TextSelection.fromPosition(
//           TextPosition(offset: _controller.text.length),
//         );
//
//         widget.onChanged?.call(_controller.text);
//         setState(() {});
//       },
//     );
//
//     /// 🔥 FORCE STOP after 5 sec
//     _timer?.cancel();
//     _timer = Timer(const Duration(seconds: 5), () {
//       _stopListening();
//     });
//   }
//
//   /// 🛑 STOP
//   void _stopListening() async {
//     _timer?.cancel(); // 🔥 important
//     await _speech.stop();
//
//     setState(() {
//       _isListening = false;
//       _status = "Tap mic to speak";
//     });
//   }
//
//   @override
//   void dispose() {
//     _speech.stop();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           decoration: BoxDecoration(
//             color: AppColor.searchBarBackground,
//             borderRadius: BorderRadius.circular(6),
//           ),
//           height: 48,
//           child: Row(
//             children: [
//               SizedBox(
//                 height: 18,
//                 child: Image.asset(
//                   "assets/new_design/icon/Search.png",
//                   width: 18,
//                   height: 18,
//                 ),
//               ),
//               const SizedBox(width: 8),
//
//               /// 🔹 TextField
//               Expanded(
//                 child: TextField(
//                   controller: _controller,
//                   style: AppTextStyle.regular(
//                     context.screenWidth * 0.036,
//                     color: Colors.black,
//                   ),
//                   onChanged: (value) {
//                     widget.onChanged?.call(value);
//                   },
//                   decoration: InputDecoration(
//                     hintText: "Search bookings...",
//                     hintStyle: AppTextStyle.gilroySemiBold(
//                       context.screenWidth * 0.035,
//                       color: AppColor.appBlack.withOpacity(0.6),
//                     ),
//                     border: InputBorder.none,
//                     contentPadding: const EdgeInsets.symmetric(vertical: 14),
//                   ),
//                 ),
//               ),
//
//               const SizedBox(width: 8),
//               Container(width: 1.5, height: 20, color: AppColor.newWhite),
//               const SizedBox(width: 6),
//
//               /// 🎤 Mic Button
//               GestureDetector(
//                 onTap: () {
//                   if (_isListening) {
//                     _stopListening();
//                   } else {
//                     _startListening();
//                   }
//                 },
//                 child: Icon(
//                   _isListening ? Icons.mic : Icons.mic_none,
//                   color: _isListening ? Colors.red : Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         /// 🔥 STATUS TEXT (IMPORTANT UX)
//         Padding(
//           padding: const EdgeInsets.only(top: 4, left: 4),
//           child: Text(
//             _status,
//             style: TextStyle(
//               color: _isListening ? Colors.red : Colors.grey,
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
