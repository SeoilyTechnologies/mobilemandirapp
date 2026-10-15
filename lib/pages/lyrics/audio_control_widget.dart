import '../../common/routes/exports.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/aartiplayer_bloc.dart';
// import '../bloc/aartiplayer_event.dart';
// import '../bloc/aartiplayer_state.dart';
import 'bloc/aartiplayer_bloc.dart';
import 'bloc/aartiplayer_event.dart';
import 'bloc/aartiplayer_state.dart';
class AudioControlsWidget extends StatelessWidget {
  const AudioControlsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AartiPlayerBloc, AartiPlayerState, _AudioControlViewState>(
      selector: (state) => _AudioControlViewState(
        isPlaying: state.isPlaying,
        isLooping: state.isLooping,
        speed: state.speed,
      ),
      builder: (context, viewState) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.25),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // 🔁 Rewind
              IconButton(
                icon: const Icon(Icons.replay, size: 30, color: Colors.orange),
                onPressed: () => context.read<AartiPlayerBloc>().add(RewindAudio()),
                tooltip: "Rewind to Start",
              ),

              // ▶️ / ⏸️ Play-Pause toggle with animation
              GestureDetector(
                onTap: () => context.read<AartiPlayerBloc>().add(TogglePlayPause()),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  transitionBuilder: (child, anim) => ScaleTransition(scale: anim, child: child),
                  child: Icon(
                    viewState.isPlaying
                        ? Icons.pause_circle_filled
                        : Icons.play_circle_fill,
                    key: ValueKey(viewState.isPlaying ? 'playing' : 'paused'),
                    size: 56,
                    color: Colors.orange,
                  ),
                ),
              ),

              // ♾️ Loop toggle with glow effect
              GestureDetector(
                onTap: () => context.read<AartiPlayerBloc>().add(LoopToggle()),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: viewState.isLooping
                        ? [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.6),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ]
                        : [],
                  ),
                  child: Icon(
                    Icons.all_inclusive,
                    size: 32,
                    color: viewState.isLooping ? Colors.orange : Colors.black38,
                  ),
                ),
              ),

              // ⚙️ Speed selector chip
              PopupMenuButton<double>(
                initialValue: viewState.speed,
                onSelected: (value) =>
                    context.read<AartiPlayerBloc>().add(SpeedChange(value)),
                itemBuilder: (_) => const [
                  PopupMenuItem(value: 0.5, child: Text("0.5x")),
                  PopupMenuItem(value: 1.0, child: Text("1x")),
                  PopupMenuItem(value: 1.5, child: Text("1.5x")),
                  PopupMenuItem(value: 2.0, child: Text("2x")),
                ],
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.orange, width: 1),
                  ),
                  child: Text(
                    "${viewState.speed}x",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Helper class for BlocSelector
class _AudioControlViewState {
  final bool isPlaying;
  final bool isLooping;
  final double speed;

  const _AudioControlViewState({
    required this.isPlaying,
    required this.isLooping,
    required this.speed,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is _AudioControlViewState &&
              runtimeType == other.runtimeType &&
              isPlaying == other.isPlaying &&
              isLooping == other.isLooping &&
              speed == other.speed;

  @override
  int get hashCode => isPlaying.hashCode ^ isLooping.hashCode ^ speed.hashCode;
}

// class AudioControlsWidget extends StatelessWidget {
//   const AudioControlsWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AartiPlayerBloc, AartiPlayerState>(
//
//       builder: (context, state) {
//         print("STATE is SHOWING HERE HERE====${ state.isPlaying}");
//         return Container(
//           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.8),
//             borderRadius: BorderRadius.circular(30),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.orange.withOpacity(0.25),
//                 blurRadius: 12,
//                 offset: const Offset(0, 6),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               // 🔁 Rewind
//               IconButton(
//                 icon: const Icon(Icons.replay, size: 30, color: Colors.orange),
//                 onPressed: () =>
//                     context.read<AartiPlayerBloc>().add(RewindAudio()),
//                 tooltip: "Rewind to Start",
//               ),
//
//               // ▶️ / ⏸️ Play-Pause toggle with animation
//               GestureDetector(
//                 onTap: () => context.read<AartiPlayerBloc>().add(TogglePlayPause()),
//                 child: AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 250),
//                   transitionBuilder: (child, anim) => ScaleTransition(scale: anim, child: child),
//                   child: Icon(
//                     state.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
//                     key: ValueKey(state.isPlaying ? 'playing' : 'paused'),
//                     size: 56,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ),
//
//
//               // ♾️ Loop toggle with glow effect
//               GestureDetector(
//                 onTap: () =>
//                     context.read<AartiPlayerBloc>().add(LoopToggle()),
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     boxShadow: state.isLooping
//                         ? [
//                       BoxShadow(
//                         color: Colors.orange.withOpacity(0.6),
//                         blurRadius: 15,
//                         spreadRadius: 2,
//                       ),
//                     ]
//                         : [],
//                   ),
//                   child: Icon(
//                     Icons.all_inclusive,
//                     size: 32,
//                     color:
//                     state.isLooping ? Colors.orange : Colors.black38,
//                   ),
//                 ),
//               ),
//
//               // ⚙️ Speed selector chip
//               PopupMenuButton<double>(
//                 initialValue: state.speed,
//                 onSelected: (value) => context
//                     .read<AartiPlayerBloc>()
//                     .add(SpeedChange(value)),
//                 itemBuilder: (_) => const [
//                   PopupMenuItem(value: 0.5, child: Text("0.5x")),
//                   PopupMenuItem(value: 1.0, child: Text("1x")),
//                   PopupMenuItem(value: 1.5, child: Text("1.5x")),
//                   PopupMenuItem(value: 2.0, child: Text("2x")),
//                 ],
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 12, vertical: 6),
//                   decoration: BoxDecoration(
//                     color: Colors.orange.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: Colors.orange, width: 1),
//                   ),
//                   child: Text(
//                     "${state.speed}x",
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.orange,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class AudioControlsWidget extends StatelessWidget {
//   final bool isPlaying;
//   final double speed;
//   final bool isLooping;
//   final VoidCallback onRewind;
//   final VoidCallback onLoopToggle;
//   final VoidCallback onPlayPause;
//   final Function(double) onSpeedChange;
//
//   const AudioControlsWidget({
//     super.key,
//     required this.isPlaying,
//     required this.speed,
//     required this.isLooping,
//     required this.onRewind,
//     required this.onLoopToggle,
//     required this.onPlayPause,
//     required this.onSpeedChange,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.8),
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.orange.withOpacity(0.25),
//             blurRadius: 12,
//             offset: const Offset(0, 6),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           // 🔁 Rewind
//           IconButton(
//             icon: const Icon(Icons.replay, size: 30, color: Colors.orange),
//             onPressed: onRewind,
//             tooltip: "Rewind to Start",
//           ),
//
//           // ▶️ / ⏸️ Play-Pause toggle with animation
//           GestureDetector(
//             onTap: onPlayPause,
//             child: AnimatedSwitcher(
//               duration: const Duration(milliseconds: 300),
//               transitionBuilder: (child, anim) =>
//                   ScaleTransition(scale: anim, child: child),
//               child: Icon(
//                 isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
//                 key: ValueKey(isPlaying),
//                 size: 56,
//                 color: Colors.orange,
//               ),
//             ),
//           ),
//
//           // ♾️ Loop toggle with glow effect
//           GestureDetector(
//             onTap: onLoopToggle,
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 boxShadow: isLooping
//                     ? [
//                   BoxShadow(
//                     color: Colors.orange.withOpacity(0.6),
//                     blurRadius: 15,
//                     spreadRadius: 2,
//                   ),
//                 ]
//                     : [],
//               ),
//               child: Icon(
//                 Icons.all_inclusive,
//                 size: 32,
//                 color: isLooping ? Colors.orange : Colors.black38,
//               ),
//             ),
//           ),
//
//           // ⚙️ Speed selector chip
//           PopupMenuButton<double>(
//             initialValue: speed,
//             onSelected: onSpeedChange,
//             itemBuilder: (_) => const [
//               PopupMenuItem(value: 0.5, child: Text("0.5x")),
//               PopupMenuItem(value: 1.0, child: Text("1x")),
//               PopupMenuItem(value: 1.5, child: Text("1.5x")),
//               PopupMenuItem(value: 2.0, child: Text("2x")),
//             ],
//             child: Container(
//               padding:
//               const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//               decoration: BoxDecoration(
//                 color: Colors.orange.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(20),
//                 border: Border.all(color: Colors.orange, width: 1),
//               ),
//               child: Text(
//                 "${speed}x",
//                 style: const TextStyle(
//                   fontSize: 16,
//                   color: Colors.orange,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
