// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:flutter/services.dart' show rootBundle;
//
// // void main() {
// //   runApp(const MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home: GaneshAartiScreen(),
// //   ));
// // }
//
// class LyricLine {
//   final Duration start;
//   final String text;
//   LyricLine({required this.start, required this.text});
// }
//
// class GaneshAartiScreen extends StatefulWidget {
//   const GaneshAartiScreen({super.key});
//
//   @override
//   State<GaneshAartiScreen> createState() => _GaneshAartiScreenState();
// }
//
// class _GaneshAartiScreenState extends State<GaneshAartiScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   final ScrollController _scrollController = ScrollController();
//
//   List<LyricLine> _lines = [];
//   int _currentIndex = -1;
//   bool _isPlaying = false;
//   StreamSubscription<Duration>? _positionSub;
//
//   // estimated height of each item (used to auto-scroll)
//   static const double _itemHeight = 56.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _initEverything();
//   }
//
//   Future<void> _initEverything() async {
//     // 1) Load lyrics (LRC) and parse
//     final lrc = await rootBundle.loadString('assets/subs/ganesh_aarti.lrc');
//     _lines = _parseLrc(lrc);
//
//     // 2) Load audio
//     await _audioPlayer.setAsset('assets/audio/Jai_Ganesh_Deva_1.mp3');
//
//     // 3) Listen to position stream and update current index
//     _positionSub = _audioPlayer.createPositionStream().listen((pos) {
//       _updateCurrentIndex(pos);
//     });
//
//     // (optional) start paused; user can press play
//     setState(() {});
//   }
//
//   List<LyricLine> _parseLrc(String content) {
//     final List<LyricLine> list = [];
//     final lines = content.split(RegExp(r'\r?\n'));
//
//     final timeTagRegex = RegExp(r'\[(\d{2}):(\d{2})(?:[.:](\d{1,2}))?\]');
//
//     for (var raw in lines) {
//       raw = raw.trim();
//       if (raw.isEmpty) continue;
//
//       // find all time tags in the line
//       final matches = timeTagRegex.allMatches(raw).toList();
//       if (matches.isEmpty) {
//         // no timestamp: skip or attach to previous line (we skip here)
//         continue;
//       }
//
//       // the text is the part after the last time tag
//       final lastMatch = matches.last;
//       final text = raw.substring(lastMatch.end).trim();
//       if (text.isEmpty) continue;
//
//       for (final m in matches) {
//         final min = int.tryParse(m.group(1) ?? '0') ?? 0;
//         final sec = int.tryParse(m.group(2) ?? '0') ?? 0;
//         final centStr = m.group(3) ?? '0';
//         // centiseconds or hundredths: make milliseconds
//         final ms = (centStr.length == 1)
//             ? int.parse(centStr) * 100
//             : (int.tryParse(centStr) ?? 0) * (centStr.length == 2 ? 10 : 1);
//
//         final start = Duration(minutes: min, seconds: sec, milliseconds: ms);
//         list.add(LyricLine(start: start, text: text));
//       }
//     }
//
//     // sort by start time
//     list.sort((a, b) => a.start.compareTo(b.start));
//     return list;
//   }
//
//   void _updateCurrentIndex(Duration position) {
//     if (_lines.isEmpty) return;
//
//     // find the last line whose start <= position (binary search)
//     int low = 0;
//     int high = _lines.length - 1;
//     int found = -1;
//
//     while (low <= high) {
//       final mid = (low + (high - low) ~/ 2);
//       if (_lines[mid].start <= position) {
//         found = mid;
//         low = mid + 1;
//       } else {
//         high = mid - 1;
//       }
//     }
//
//     if (found != _currentIndex) {
//       setState(() {
//         _currentIndex = found;
//       });
//
//       // auto-scroll so the current line is visible & roughly centered
//       if (_scrollController.hasClients && found != -1) {
//         final targetOffset =
//             (found * _itemHeight) - (MediaQuery.of(context).size.height / 2) + (_itemHeight / 2);
//         final min = _scrollController.position.minScrollExtent;
//         final max = _scrollController.position.maxScrollExtent;
//         final safeOffset = targetOffset.clamp(min, max);
//         _scrollController.animateTo(
//           safeOffset,
//           duration: const Duration(milliseconds: 400),
//           curve: Curves.easeOut,
//         );
//       }
//     }
//   }
//
//   void _togglePlayPause() async {
//     if (_audioPlayer.playing) {
//       await _audioPlayer.pause();
//       setState(() => _isPlaying = false);
//     } else {
//       await _audioPlayer.play();
//       setState(() => _isPlaying = true);
//     }
//   }
//
//   @override
//   void dispose() {
//     _positionSub?.cancel();
//     _audioPlayer.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   Widget _buildLyricItem(int index) {
//     final line = _lines[index];
//     final isCurrent = index == _currentIndex;
//     return Container(
//       height: _itemHeight,
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       alignment: Alignment.center,
//       child: AnimatedDefaultTextStyle(
//         duration: const Duration(milliseconds: 300),
//         style: TextStyle(
//           fontSize: isCurrent ? 20 : 16,
//           fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
//           color: isCurrent ? Colors.deepOrange : Colors.black87,
//         ),
//         child: Text(
//           line.text,
//           textAlign: TextAlign.center,
//         ),
//       ),
//       decoration: BoxDecoration(
//         color: isCurrent ? Colors.deepOrange.withOpacity(0.12) : Colors.transparent,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final totalDuration = _audioPlayer.duration ?? Duration.zero;
//     final currentPosition = _audioPlayer.position;
//
//     return Scaffold(
//       backgroundColor: Colors.orange.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         title: Text('जय गणेश आरती', style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 12),
//           // progress + time
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 Slider(
//                   min: 0,
//                   max: (totalDuration.inMilliseconds > 0)
//                       ? totalDuration.inMilliseconds.toDouble()
//                       : 1.0,
//                   value: currentPosition.inMilliseconds.clamp(0, totalDuration.inMilliseconds).toDouble(),
//                   onChanged: (v) async {
//                     await _audioPlayer.seek(Duration(milliseconds: v.round()));
//                   },
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(_formatDuration(currentPosition)),
//                     Text(_formatDuration(totalDuration)),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           const SizedBox(height: 6),
//           Expanded(
//             child: _lines.isEmpty
//                 ? const Center(child: Text('Loading lyrics...', style: TextStyle(fontSize: 16)))
//                 : ListView.builder(
//               controller: _scrollController,
//               itemCount: _lines.length,
//               padding: const EdgeInsets.only(bottom: 24, top: 8),
//               itemBuilder: (context, index) => _buildLyricItem(index),
//             ),
//           ),
//
//           // Play/pause + simple controls
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 14.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   iconSize: 56,
//                   color: Colors.deepOrange,
//                   icon: Icon(_isPlaying ? Icons.pause_circle : Icons.play_circle),
//                   onPressed: _togglePlayPause,
//                 ),
//                 const SizedBox(width: 8),
//                 IconButton(
//                   iconSize: 36,
//                   color: Colors.deepOrange,
//                   onPressed: () async {
//                     // rewind 5 seconds (use milliseconds and clamp integers)
//                     final pos = _audioPlayer.position;
//                     final totalMs = totalDuration.inMilliseconds;
//                     final newMs = (pos - const Duration(seconds: 5)).inMilliseconds.clamp(0, totalMs);
//                     await _audioPlayer.seek(Duration(milliseconds: newMs));
//                   },
//                   icon: const Icon(Icons.replay_10),
//                 ),
//                 const SizedBox(width: 8),
//                 IconButton(
//                   iconSize: 36,
//                   color: Colors.deepOrange,
//                   onPressed: () async {
//                     // forward 10 seconds (use milliseconds and clamp integers)
//                     final pos = _audioPlayer.position;
//                     final totalMs = totalDuration.inMilliseconds;
//                     final newMs = (pos + const Duration(seconds: 10)).inMilliseconds.clamp(0, totalMs);
//                     await _audioPlayer.seek(Duration(milliseconds: newMs));
//                   },
//                   icon: const Icon(Icons.forward_10),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   String _formatDuration(Duration d) {
//     final mm = d.inMinutes.remainder(60).toString().padLeft(2, '0');
//     final ss = d.inSeconds.remainder(60).toString().padLeft(2, '0');
//     return '$mm:$ss';
//   }
// }
