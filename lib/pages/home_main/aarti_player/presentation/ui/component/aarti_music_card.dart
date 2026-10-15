import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';

import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/bloc/aartiplayer_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';

import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/bloc/aartiplayer_state.dart';

class AartiMusicCard extends StatelessWidget {
  const AartiMusicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AartiPlayerBloc, AartiPlayerState>(
      builder: (context, state) {
        // ================= SAFE SLIDER VALUES =================
        final double maxSeconds = state.duration.inSeconds > 0
            ? state.duration.inSeconds.toDouble()
            : 1.0;

        final double currentSeconds = state.position.inSeconds.toDouble().clamp(
          0.0,
          maxSeconds,
        );

        final Duration safePosition = state.position <= state.duration
            ? state.position
            : state.duration;

        final Duration safeDuration = state.duration.inSeconds > 0
            ? state.duration
            : Duration.zero;

        return Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 1),
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ================= PROGRESS BAR =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatTime(safePosition),
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          _formatTime(safeDuration),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2.5,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: AppColor.newsecondaruy,
                        inactiveTrackColor: AppColor.newsecondaruy.withOpacity(
                          0.4,
                        ),
                        thumbColor: AppColor.newsecondaruy,
                      ),
                      child: Slider(
                        min: 0.0,
                        max: maxSeconds,
                        value: currentSeconds,
                        onChanged: (value) {
                          context.read<AartiPlayerBloc>().add(
                            SeekAudio(Duration(seconds: value.toInt())),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // ================= CONTROLS =================
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _smallButton(
                    assetPath: "assets/new_design/icon/restart_button.png",
                    isSelected: false,
                    onTap: () =>
                        context.read<AartiPlayerBloc>().add(RewindAudio()),
                  ),

                  const SizedBox(width: 18),

                  _smallButton(
                    assetPath: "assets/new_design/icon/previcious_play.png",
                    isSelected: false,
                    isEnabled: state.currentQueueIndex > 0,
                    onTap: () =>
                        context.read<AartiPlayerBloc>().add(PlayPreviousTrack()),
                  ),

                  const SizedBox(width: 18),

                  // ================= PLAY / PAUSE =================
                  GestureDetector(
                    onTap: () =>
                        context.read<AartiPlayerBloc>().add(TogglePlayPause()),
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.newsecondaruy,
                      ),
                      child: Icon(
                        state.isPlaying ? Icons.pause : Icons.play_arrow,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 18),

                  _smallButton(
                    assetPath: "assets/new_design/icon/next_play.png",
                    isSelected: false,
                    onTap: () =>
                        context.read<AartiPlayerBloc>().add(const PlayNextTrack()),
                  ),

                  const SizedBox(width: 18),

                  _smallButton(
                    assetPath: "assets/new_design/icon/repeat_button.png",
                    isSelected: state.repeatMode != TrackRepeatMode.off,
                    onTap: () =>
                        context.read<AartiPlayerBloc>().add(LoopToggle()),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // ================= SMALL BUTTON =================
  Widget _smallButton({
    required String assetPath,
    required VoidCallback onTap,
    required bool isSelected,
    bool isEnabled = true,
  }) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Opacity(
        opacity: isEnabled ? 1.0 : 0.4,
        child: Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.newsecondaruy : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              assetPath,
              width: 42,
              height: 42,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
  // ================= TIME FORMAT =================
  String _formatTime(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }
}

// class AartiMusicCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String subtitle;
//
//   const AartiMusicCard({
//     super.key,
//     required this.imageUrl,
//     required this.title,
//     required this.subtitle,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<
//       AartiPlayerBloc,
//       AartiPlayerState,
//       _AudioControlViewState
//     >(
//       selector: (state) => _AudioControlViewState(
//         isPlaying: state.isPlaying,
//         isLooping: state.isLooping,
//         speed: state.speed,
//       ),
//       builder: (context, state) {
//         return Container(
//           margin: const EdgeInsets.all(12),
//           // padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             gradient: const LinearGradient(
//               colors: [Colors.white, Colors.white],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.2),
//                 blurRadius: 8,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // --- Image Avatar ---
//               SizedBox(height: 20),
//
//               // --- Text + Wave + Play ---
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       BlocProvider.of<AartiPlayerBloc>(
//                         context,
//                       ).add(RewindAudio());
//                     },
//                     child: _controlButton(Icons.replay),
//                   ), //previcicious song play
//                   const SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: () =>
//                         context.read<AartiPlayerBloc>().add(TogglePlayPause()),
//                     child: _playPausecontrolButton(
//                       state.isPlaying
//                           ? Icons.pause_circle_filled
//                           : Icons.play_circle_fill,
//                     ), //play/pause button
//                   ),
//                   const SizedBox(width: 8),
//
//                   // _controlButton(Icons.skip_next),//next song play
//                   //next song play
//                   GestureDetector(
//                     onTap: () {
//                       BlocProvider.of<AartiPlayerBloc>(
//                         context,
//                       ).add(LoopToggle());
//                     },
//                     child: _controlButton(Icons.all_inclusive),
//                   ), //next song play
//                   const SizedBox(width: 8),
//                 ],
//               ),
//               SizedBox(height: 24),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Speed: "),
//                   PopupMenuButton<double>(
//                     padding: EdgeInsets.zero,
//                     initialValue: state.speed,
//                     onSelected: (value) =>
//                         context.read<AartiPlayerBloc>().add(SpeedChange(value)),
//                     itemBuilder: (_) => const [
//                       PopupMenuItem(value: 0.5, child: Text("0.5x")),
//                       PopupMenuItem(value: 1.0, child: Text("1x")),
//                       PopupMenuItem(value: 1.5, child: Text("1.5x")),
//                       PopupMenuItem(value: 2.0, child: Text("2x")),
//                     ],
//                     child: Container(
//                       padding: const EdgeInsets.all(4),
//                       //    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.1),
//                         shape: BoxShape.rectangle,
//                         // border: Border.all(
//                         //   color: Colors.white24,
//                         //   width: 1.2,
//                         // ),
//                       ),
//                       child: Text(
//                         "${state.speed}x",
//                         style: const TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 12),
//               // --- Right Side Wave + Play Circle ---
//               // Column(
//               //   children: [
//               //     Icon(
//               //       Icons.waves,
//               //       color: Colors.pinkAccent.shade100,
//               //       size: 22,
//               //     ),
//               //     const SizedBox(height: 12),
//               //     // Container(
//               //     //   padding: const EdgeInsets.all(10),
//               //     //   decoration: BoxDecoration(
//               //     //     color: Colors.white.withOpacity(0.1),
//               //     //     shape: BoxShape.circle,
//               //     //     border: Border.all(color: Colors.white24, width: 1.5),
//               //     //   ),
//               //     //   child: const Icon(
//               //     //     Icons.play_arrow,
//               //     //     color: Colors.white,
//               //     //     size: 18,
//               //     //   ),
//               //     // ),
//               //   ],
//               // ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _playPausecontrolButton(IconData icon) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: AppColor.primary1,
//         shape: BoxShape.circle,
//         border: Border.all(color: Colors.white, width: 1.2),
//       ),
//       child: Icon(icon, color: AppColor.white, size: 38),
//     );
//   }
//
//   Widget _controlButton(IconData icon) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         shape: BoxShape.circle,
//         border: Border.all(color: Colors.white24, width: 1.2),
//       ),
//       child: Icon(icon, color: Colors.black, size: 16),
//     );
//   }
// }
//
// class _AudioControlViewState {
//   final bool isPlaying;
//   final bool isLooping;
//   final double speed;
//
//   const _AudioControlViewState({
//     required this.isPlaying,
//     required this.isLooping,
//     required this.speed,
//   });
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is _AudioControlViewState &&
//           runtimeType == other.runtimeType &&
//           isPlaying == other.isPlaying &&
//           isLooping == other.isLooping &&
//           speed == other.speed;
//
//   @override
//   int get hashCode => isPlaying.hashCode ^ isLooping.hashCode ^ speed.hashCode;
// }
