import 'dart:async';

import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../../../../common/routes/exports.dart';

import '../../../../../common/routes/exports.dart';

class SearchBarWithcurrentlocationCore extends StatelessWidget {
  final Widget Function(
      TextEditingController controller,
      VoidCallback onMicTap,
      Function(String)? onChanged,
      ) builder;

  final Function(String)? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onMicTap;

  const SearchBarWithcurrentlocationCore({
    super.key,
    required this.builder,
    this.onChanged,
    this.controller,
    this.onMicTap,
  });

  @override
  Widget build(BuildContext context) {
    return builder(
      controller ?? TextEditingController(),
      onMicTap ?? () {},
      onChanged,
    );
  }
}

// class SearchBarWithcurrentlocationCore extends StatefulWidget {
//   final Widget Function(
//     TextEditingController controller,
//     bool isListening,
//     String status,
//     VoidCallback onMicTap,
//     Function(String)? onChanged,
//   )
//   builder;
//
//   final Function(String)? onChanged;
//   final TextEditingController? controller;
//   final VoidCallback? onMicTap;
//
//   const SearchBarWithcurrentlocationCore({
//     super.key,
//     required this.builder,
//     this.onChanged,
//     this.controller,
//     this.onMicTap,
//   });
//
//   @override
//   State<SearchBarWithcurrentlocationCore> createState() =>
//       _SearchBarCoreState();
// }
//
// class _SearchBarCoreState extends State<SearchBarWithcurrentlocationCore> {
//   late TextEditingController _controller;
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
//     _controller = widget.controller ?? TextEditingController();
//     _initSpeech();
//   }
//
//   void _initSpeech() async {
//     _speech = stt.SpeechToText();
//     _speechEnabled = await _speech.initialize(
//       onStatus: (status) {
//         if (status == "done" || status == "notListening") {
//           _stopListening();
//         }
//       },
//       onError: (error) {
//         _stopListening();
//       },
//     );
//     setState(() {});
//   }
//
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
//         _controller.selection = TextSelection.fromPosition(
//           TextPosition(offset: _controller.text.length),
//         );
//         widget.onChanged?.call(_controller.text);
//         setState(() {});
//       },
//     );
//
//     _timer?.cancel();
//     _timer = Timer(const Duration(seconds: 5), _stopListening);
//   }
//
//   void _stopListening() async {
//     _timer?.cancel();
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
//     if (widget.controller == null) {
//       _controller.dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return widget.builder(_controller, _isListening, _status, () {
//       if (_isListening) {
//         _stopListening();
//       } else {
//         _startListening();
//       }
//     }, widget.onChanged);
//   }
// }
