// AartiPlayerScreen
import 'dart:math';

import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../common/routes/exports.dart';
import '../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../home_main/lyrics_timex.dart';
import 'audio_control_widget.dart';
import 'bloc/aartiplayer_bloc.dart';
import 'bloc/aartiplayer_event.dart';
import 'bloc/aartiplayer_state.dart';
import 'lyricrepositery/lyric_line.dart';
import 'track_model.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:async';

// class AartiPlayerScreen extends StatefulWidget {
//   //final Track track;
//
//  // const AartiPlayerScreen({super.key, required this.track});
//   const AartiPlayerScreen({super.key});
//
//   @override
//   State<AartiPlayerScreen> createState() => _AartiPlayerScreenState();
// }
//
// class _AartiPlayerScreenState extends State<AartiPlayerScreen> {
//   late AudioPlayer _player;
//   Duration _position = Duration.zero;
//   Duration _duration = Duration.zero;
//   Timer? _timer;
//   final ScrollController _scrollController = ScrollController();
//   double _speed = 1.0;
//   bool _isLooping = false; // 🔁 loop toggle
//
//   @override
//   void initState() {
//     super.initState();
//     _player = AudioPlayer();
//
//     _player.playerStateStream.listen((state) {
//       if (state.processingState == ProcessingState.completed) {
//         if (_isLooping) {
//           _player.seek(Duration.zero);
//           _player.play();
//         } else {
//           _player.stop();
//         }
//       }
//     });
//
//     _player.durationStream.listen((d) {
//       if (d != null) setState(() => _duration = d);
//     });
//
//     _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
//       final pos = _player.position;
//       setState(() => _position = pos);
//       _autoScroll();
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _player.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _playAudio() async {
//     await _player.setAsset(widget.track.audioAsset);
//     await _player.setSpeed(_speed);
//     _player.play();
//   }
//
//   Future<void> _pauseAudio() async => _player.pause();
//
//   Future<void> _stopAudio() async => _player.stop();
//
//   Future<void> _rewindAudio() async => _player.seek(Duration.zero);
//
//   void _toggleLoop() {
//     setState(() => _isLooping = !_isLooping);
//   }
//
//   void _changeSpeed(double speed) async {
//     _speed = speed;
//     await _player.setSpeed(speed);
//     setState(() {});
//   }
//
//   int _currentIndex() {
//     final lyrics = widget.track.lyrics;
//     for (int i = 0; i < lyrics.length; i++) {
//       if (_position >= lyrics[i].start && _position < lyrics[i].end) return i;
//     }
//     return -1;
//   }
//
//   void _autoScroll() {
//     final idx = _currentIndex();
//     if (idx < 0 || !_scrollController.hasClients) return;
//
//     final itemHeight = 60.0;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final centerOffset = (screenHeight / 2) - (itemHeight / 2);
//     final offset = (idx * itemHeight) - centerOffset + 100;
//
//     _scrollController.animateTo(
//       offset.clamp(0.0, _scrollController.position.maxScrollExtent),
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   String _formatDuration(Duration d) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final minutes = twoDigits(d.inMinutes.remainder(60));
//     final seconds = twoDigits(d.inSeconds.remainder(60));
//     return "$minutes:$seconds";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final idx = _currentIndex();
//     final lyrics = widget.track.lyrics;
//     final isPlaying = _player.playing;
//
//     return Scaffold(
//       //backgroundColor: Colors.orange.shade50,
//       //  appBar: AppBar(title: Text(widget.track.title)),
//       body: Container(
//         width: context.screenWidth,
//         height: context.screenHeight,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/updated/aarti_back_aarti.jpg'),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Column(
//           children: [
//             // Lyrics
//             SizedBox(height: 120),
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/updated/aarti_name_back.png'),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(0.0),
//                 child: Center(
//                   child: Text(
//                     widget.track.title,
//                     style: TextStyle(
//                       color: AppColor.dddddddd,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 controller: _scrollController,
//                 padding: const EdgeInsets.only(
//                   top: 46,
//                   left: 30,
//                   right: 30,
//                   bottom: 20,
//                 ),
//                 itemCount: lyrics.length,
//                 itemBuilder: (context, i) {
//                   final line = lyrics[i];
//                   final isActive = i == idx;
//                   return Padding(
//                     //  padding: const EdgeInsets.symmetric(vertical: 6.0),
//                     padding: const EdgeInsets.only(
//                       top: 6,
//                       left: 30,
//                       right: 30,
//                       bottom: 6,
//                     ),
//                     child: AnimatedDefaultTextStyle(
//                       duration: const Duration(milliseconds: 200),
//                       style: TextStyle(
//                         color: isActive ? Colors.amber : Colors.white,
//                         fontSize: isActive ? 22 : 18,
//                         fontWeight: isActive
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                       ),
//                       child: Text(line.text, textAlign: TextAlign.center),
//                     ),
//                   );
//                 },
//               ),
//             ),
//
//             // Progress bar
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: [
//                   Slider(
//                     min: 0,
//                     max: _duration.inMilliseconds.toDouble(),
//                     value: _position.inMilliseconds
//                         .clamp(0, _duration.inMilliseconds)
//                         .toDouble(),
//                     onChanged: (value) {
//                       final newPos = Duration(milliseconds: value.toInt());
//                       _player.seek(newPos);
//                       setState(() => _position = newPos);
//                     },
//                     activeColor: Colors.orange,
//                     inactiveColor: Colors.white60,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         _formatDuration(_position),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       Text(
//                         _formatDuration(_duration),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             // 🎵 Audio Controls Widget
//             AudioControlsWidget(
//               isPlaying: isPlaying,
//               speed: _speed,
//               isLooping: _isLooping,
//               onPlayPause: () async {
//                 if (isPlaying) {
//                   await _pauseAudio();
//                 } else {
//                   if (_player.processingState == ProcessingState.idle) {
//                     await _playAudio();
//                   } else {
//                     _player.play();
//                   }
//                 }
//                 setState(() {});
//               },
//               onRewind: _rewindAudio,
//               onLoopToggle: _toggleLoop,
//               onSpeedChange: _changeSpeed,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




class AartiPlayerScreen extends StatelessWidget {
  const AartiPlayerScreen({super.key});

  int _currentIndex(List<LyricsModel> lyrics, Duration position) {
    for (int i = 0; i < lyrics.length; i++) {
      if (position >= lyrics[i].startDuration &&
          position < lyrics[i].endDuration) {
        return i;
      }
    }
    return -1; // start / seek case
  }


  String _formatDuration(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AartiPlayerBloc, AartiPlayerState>(
        builder: (context, state) {
          final track = state.track;
          if (track == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final idx = _currentIndex(track.lyrics, state.position);
          final scrollController = ScrollController();

          // auto-scroll similar to old code
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!scrollController.hasClients) return;
            final itemHeight = 60.0;
            final screenHeight = MediaQuery.of(context).size.height;
            final centerOffset = (screenHeight / 2) - (itemHeight / 2);
            final offset = (idx * itemHeight) - centerOffset + 100;
            scrollController.animateTo(
              max(0.0, offset.clamp(0.0, scrollController.position.maxScrollExtent)),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          });

          return Container(
            width: context.screenWidth,
            height: context.screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/updated/aarti_back_aarti.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 120),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/updated/aarti_name_back.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      track.title,
                      style: TextStyle(
                        color: AppColor.dddddddd,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.only(top: 46, left: 30, right: 30, bottom: 20),
                    itemCount: track.lyrics.length,
                    itemBuilder: (context, i) {
                      final line = track.lyrics[i];
                      final isActive = i == idx;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 200),
                          style: TextStyle(
                            color: isActive ? Colors.amber : Colors.white,
                            fontSize: isActive ? 22 : 18,
                            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                          ),
                          child: Text(line.text, textAlign: TextAlign.center),
                        ),
                      );
                    },
                  ),
                ),

                // Progress bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                  //   Slider(
                  //   min: 0,
                  //   max: state.duration.inMilliseconds.toDouble(),
                  //   value: state.position.inMilliseconds
                  //       .clamp(0, state.duration.inMilliseconds)
                  //       .toDouble(),
                  //   onChangeEnd: (value) {
                  //     // ✅ Seek to position on release
                  //     final newPos = Duration(milliseconds: value.toInt());
                  //     context.read<AartiPlayerBloc>().add(SeekAudio(newPos));
                  //   },
                  //   onChanged: (value) {
                  //     // ✅ Instantly update slider thumb visually
                  //     final newPos = Duration(milliseconds: value.toInt());
                  //     context.read<AartiPlayerBloc>().add(UpdateSliderPosition(newPos));
                  //   },
                  //   activeColor: Colors.orange,
                  //   inactiveColor: Colors.white60,
                  // ),
                    BlocSelector<AartiPlayerBloc, AartiPlayerState, Duration>(
                  selector: (state) => state.position,
                  builder: (context, position) {
                    final duration = context.read<AartiPlayerBloc>().state.duration;
                    return Slider(
                      min: 0,
                      max: duration.inMilliseconds.toDouble(),
                      value: position.inMilliseconds.clamp(0, duration.inMilliseconds).toDouble(),
                      onChanged: (value) {
                        context.read<AartiPlayerBloc>().add(UpdateSliderPosition(Duration(milliseconds: value.toInt())));
                      },
                      onChangeEnd: (value) {
                        context.read<AartiPlayerBloc>().add(SeekAudio(Duration(milliseconds: value.toInt())));
                      },
                    );
                  },
                  ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_formatDuration(state.position), style: const TextStyle(color: Colors.white)),
                          Text(_formatDuration(state.duration), style: const TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                // 🎵 Audio Controls
                AudioControlsWidget()
                // BlocBuilder<AartiPlayerBloc, AartiPlayerState>(
                //  buildWhen: (previous, current) => previous.isPlaying != current.isPlaying,
                //   builder: (context, state) {
                //     return AudioControlsWidget(
                //       // isPlaying: state.isPlaying,
                //       // speed: state.speed,
                //       // isLooping: state.isLooping,
                //       // onPlayPause: () {
                //       //   context.read<AartiPlayerBloc>().add(TogglePlayPause());
                //       // },
                //       // onRewind: () => context.read<AartiPlayerBloc>().add(RewindAudio()),
                //       // onLoopToggle: () => context.read<AartiPlayerBloc>().add(LoopToggle()),
                //       // onSpeedChange: (v) => context.read<AartiPlayerBloc>().add(SpeedChange(v)),
                //     );
                //   },
                // ),

              ],
            ),
          );
        },
      ),
    );
  }
}


//---------------------------------------------------------------------------------------------------

//
// class AartiPlayerScreen extends StatefulWidget {
//   final Track track;
//   const AartiPlayerScreen({super.key, required this.track});
//
//   @override
//   State<AartiPlayerScreen> createState() => _AartiPlayerScreenState();
// }
//
// class _AartiPlayerScreenState extends State<AartiPlayerScreen> {
//   late AudioPlayer _player;
//   Duration _position = Duration.zero;
//   Duration _duration = Duration.zero;
//   Timer? _timer;
//   final ScrollController _scrollController = ScrollController();
//
//   double _speed = 1.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _player = AudioPlayer();
//
//     _player.playerStateStream.listen((state) {
//       if (state.processingState == ProcessingState.completed) {
//         _player.stop();
//       }
//     });
//
//     _player.durationStream.listen((d) {
//       if (d != null) setState(() => _duration = d);
//     });
//
//     _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
//       final pos = _player.position;
//       setState(() {
//         _position = pos;
//       });
//       _autoScroll();
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _player.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _playAudio() async {
//     await _player.setAsset(widget.track.audioAsset);
//     await _player.setSpeed(_speed);
//     _player.play();
//   }
//
//   Future<void> _pauseAudio() async => _player.pause();
//
//   Future<void> _stopAudio() async => _player.stop();
//
//   void _changeSpeed(double speed) async {
//     _speed = speed;
//     await _player.setSpeed(speed);
//     setState(() {});
//   }
//
//   int _currentIndex() {
//     final lyrics = widget.track.lyrics;
//     for (int i = 0; i < lyrics.length; i++) {
//       if (_position >= lyrics[i].start && _position < lyrics[i].end) return i;
//     }
//     return -1;
//   }
//
//   void _autoScroll() {
//     final idx = _currentIndex();
//     if (idx < 0 || !_scrollController.hasClients) return;
//
//     final itemHeight = 60.0; // each lyric line approx height
//     final screenHeight = MediaQuery.of(context).size.height;
//     final centerOffset = (screenHeight / 2) - (itemHeight / 2);
//     final offset = (idx * itemHeight) - centerOffset + 100; // +100 padding adjust
//
//     _scrollController.animateTo(
//       offset.clamp(0.0, _scrollController.position.maxScrollExtent),
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   String _formatDuration(Duration d) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final minutes = twoDigits(d.inMinutes.remainder(60));
//     final seconds = twoDigits(d.inSeconds.remainder(60));
//     return "$minutes:$seconds";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final idx = _currentIndex();
//     final lyrics = widget.track.lyrics;
//
//     return Scaffold(
//       backgroundColor: Colors.orange.shade50,
//       appBar: AppBar(title: Text(widget.track.title)),
//       body: Column(
//         children: [
//           // Lyrics
//           Expanded(
//             child: ListView.builder(
//               controller: _scrollController,
//               padding: const EdgeInsets.all(16),
//               itemCount: lyrics.length,
//               itemBuilder: (context, i) {
//                 final line = lyrics[i];
//                 final isActive = i == idx;
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 6.0),
//                   child: AnimatedDefaultTextStyle(
//                     duration: const Duration(milliseconds: 200),
//                     style: TextStyle(
//                       color: isActive ? Colors.amber : Colors.black45,
//                       fontSize: isActive ? 22 : 18,
//                       fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//                     ),
//                     child: Text(line.text, textAlign: TextAlign.center),
//                   ),
//                 );
//               },
//             ),
//           ),
//
//           // Progress bar & time
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               children: [
//                 Slider(
//                   min: 0,
//                   max: _duration.inMilliseconds.toDouble(),
//                   value: _position.inMilliseconds.clamp(0, _duration.inMilliseconds).toDouble(),
//                   onChanged: (value) {
//                     final newPos = Duration(milliseconds: value.toInt());
//                     _player.seek(newPos);
//                     setState(() => _position = newPos);
//                   },
//                   activeColor: Colors.orange,
//                   inactiveColor: Colors.black12,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(_formatDuration(_position)),
//                     Text(_formatDuration(_duration)),
//                   ],
//                 ),
//               ],
//             ),
//           ),
// // 🎵 Audio Controls Widget
//           AudioControlsWidget(
//             isPlaying: isPlaying,
//             speed: _speed,
//             isLooping: _isLooping,
//             onPlayPause: () async {
//               if (isPlaying) {
//                 await _pauseAudio();
//               } else {
//                 if (_player.processingState == ProcessingState.idle) {
//                   await _playAudio();
//                 } else {
//                   _player.play();
//                 }
//               }
//               setState(() {});
//             },
//             onStop: _stopAudio,
//             onRewind: _rewindAudio,
//             onLoopToggle: _toggleLoop,
//             onSpeedChange: _changeSpeed,
//           ),
//           // // Controls
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //     children: [
//           //       IconButton(
//           //         icon: const Icon(Icons.stop, size: 32),
//           //         onPressed: _stopAudio,
//           //       ),
//           //       IconButton(
//           //         icon: const Icon(Icons.pause, size: 32),
//           //         onPressed: _pauseAudio,
//           //       ),
//           //       IconButton(
//           //         icon: const Icon(Icons.play_arrow, size: 32),
//           //         onPressed: _playAudio,
//           //       ),
//           //       // Speed buttons
//           //       PopupMenuButton<double>(
//           //         initialValue: _speed,
//           //         onSelected: _changeSpeed,
//           //         itemBuilder: (_) => [
//           //           const PopupMenuItem(value: 0.5, child: Text("0.5x")),
//           //           const PopupMenuItem(value: 1.0, child: Text("1x")),
//           //           const PopupMenuItem(value: 1.5, child: Text("1.5x")),
//           //           const PopupMenuItem(value: 2.0, child: Text("2x")),
//           //         ],
//           //         child: Text("${_speed}x", style: const TextStyle(fontSize: 18)),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
