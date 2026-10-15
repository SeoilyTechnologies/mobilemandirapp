import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../data/entity/youtubevideo/youtube_video_player_model.dart';
import '../bloc/mobile_home_state.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../data/entity/youtubevideo/youtube_video_player_model.dart';
import '../bloc/mobile_home_state.dart';

class ReelPlayerScreen extends StatefulWidget {
  final int initialIndex;

  const ReelPlayerScreen({
    super.key,
    required this.initialIndex,
  });

  @override
  State<ReelPlayerScreen> createState() => _ReelPlayerScreenState();
}

class _ReelPlayerScreenState extends State<ReelPlayerScreen> {
  late PageController _pageController;
  late int currentIndex;

  final Map<int, YoutubePlayerController> _controllers = {};

  @override
  void initState() {
    super.initState();

    currentIndex = widget.initialIndex;
    _pageController = PageController(
      initialPage: currentIndex,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final videos =
          context.read<MobileHomeBloc>().state.youtubeVideos;

      if (videos.isNotEmpty) {
        _preloadControllers(videos);
      }
    });
  }

  YoutubePlayerController _getController(
      int index,
      List<YouTubePlaylistVideoModel> videos,
      ) {
    if (_controllers.containsKey(index)) {
      return _controllers[index]!;
    }

    final controller = YoutubePlayerController(
      initialVideoId: videos[index].videoId,
      flags: const YoutubePlayerFlags(
        //autoPlay: false,
      //  mute: false,
        ///hideControls: true,
        disableDragSeek: true,
        enableCaption: false,
        //hideThumbnail: true,
        //loop: true,
        forceHD: false,
        useHybridComposition: false,
        autoPlay: true,
        mute: false,
        hideControls: true,
        loop: true,
        hideThumbnail: true,
      ),
    );

    _controllers[index] = controller;

    return controller;
  }

  /// preload previous & next video
  void _preloadControllers(List<YouTubePlaylistVideoModel> videos) {
    if (currentIndex + 1 < videos.length) {
      final controller = _getController(currentIndex + 1, videos);
      controller.cue(videos[currentIndex + 1].videoId);
    }
  }

  /// dispose far controllers
  void _disposeFarControllers(int index) {
    final keys = _controllers.keys.toList();

    for (final key in keys) {
      if ((key - index).abs() > 1) {
        _controllers[key]?.dispose();
        _controllers.remove(key);
      }
    }
  }

  void _onPageChanged(
      int index,
      List<YouTubePlaylistVideoModel> videos,
      ) {
    _controllers[currentIndex]?.pause();

    currentIndex = index;

    final controller = _getController(
      index,
      videos,
    );

    controller.play();

    _preloadControllers(videos);

    _disposeFarControllers(index);

    setState(() {});
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }

    _controllers.clear();

    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<MobileHomeBloc, MobileHomeState>(
        builder: (context, state) {
          final videos = state.youtubeVideos;

          if (videos.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }

          return PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: videos.length,
            onPageChanged: (index) =>
                _onPageChanged(index, videos),
            itemBuilder: (context, index) {
              final video = videos[index];

              final controller = _getController(
                index,
                videos,
              );

              return Stack(
                children: [
                  Positioned.fill(
                    child: YoutubePlayer(
                      controller: controller,
                      aspectRatio: 9 / 16,
                      width: double.infinity,
                      showVideoProgressIndicator: false,
                      liveUIColor: Colors.black,
                      thumbnail: Image.asset(
                        video.thumbnailUrl,
                        fit: BoxFit.cover,
                      ),
                      onReady: () {
                        if (index == currentIndex) {
                          controller.play();
                        }
                      },
                    ),
                  ),

                  /// Back Button
                  Positioned(
                    top: 40,
                    left: 10,
                    child: Navigator.canPop(context)
                        ? IconButton(
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          context
                              .read<AppBloc>()
                              .add(
                            TriggerAppEvent(0),
                          );
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )
                        : const SizedBox(),
                  ),

                  /// Title
                  Positioned(
                    left: 15,
                    right: 80,
                    bottom:
                    context.screenHeight * 0.14,
                    child: Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
// class ReelPlayerScreen extends StatefulWidget {
//   final int initialIndex;
//
//   const ReelPlayerScreen({super.key, required this.initialIndex});
//
//   @override
//   State<ReelPlayerScreen> createState() => _ReelPlayerScreenState();
// }
//
// class _ReelPlayerScreenState extends State<ReelPlayerScreen> {
//   late PageController _pageController;
//   late int currentIndex;
//
//   final Map<int, YoutubePlayerController> _controllers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     currentIndex = widget.initialIndex;
//     _pageController = PageController(initialPage: currentIndex);
//   }
//
//   YoutubePlayerController _getController(
//     int index,
//     List<YouTubePlaylistVideoModel> videos,
//   ) {
//     if (_controllers.containsKey(index)) {
//       return _controllers[index]!;
//     }
//
//     final controller = YoutubePlayerController(
//       initialVideoId: videos[index].videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//         hideControls: true,
//         disableDragSeek: true,
//         enableCaption: false,
//         hideThumbnail: true,
//         loop: true,
//         forceHD: false,
//         useHybridComposition: false,
//       ),
//     );
//
//     _controllers[index] = controller;
//     return controller;
//   }
//
//   void _onPageChanged(int index, List<YouTubePlaylistVideoModel> videos) {
//     _controllers[currentIndex]?.pause();
//     final controller = _getController(index, videos);
//     controller.play();
//     currentIndex = index;
//   }
//
//   @override
//   void dispose() {
//     for (final controller in _controllers.values) {
//       controller.dispose();
//     }
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: BlocBuilder<MobileHomeBloc, MobileHomeState>(
//         builder: (context, state) {
//           final videos = state.youtubeVideos;
//
//           if (videos.isEmpty) {
//             return const Center(
//               child: CircularProgressIndicator(color: Colors.red),
//             );
//           }
//
//           return PageView.builder(
//             controller: _pageController,
//             scrollDirection: Axis.vertical,
//             itemCount: videos.length,
//             padEnds: true,
//             onPageChanged: (index) => _onPageChanged(index, videos),
//             itemBuilder: (context, index) {
//               final video = videos[index];
//               final controller = _getController(index, videos);
//
//               return Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   /// ▶️ YOUTUBE PLAYER (FULL SCREEN)
//                   Positioned.fill(
//                     child: YoutubePlayer(
//                       controller: controller,
//                       aspectRatio: 9 / 16,
//
//                       // ✅ REELS RATIO
//                       showVideoProgressIndicator: false,
//                       width: double.infinity,
//                       thumbnail: Image.asset(
//                         video.thumbnailUrl,
//                         fit: BoxFit.contain,
//                       ),
//                       liveUIColor: Colors.black,
//
//                       onReady: () {
//                         if (index == currentIndex) {
//                           controller.play();
//                         }
//                       },
//                     ),
//                   ),
//
//                   /// 🔙 BACK
//                   Positioned(
//                     top: 40,
//                     left: 16,
//                     child: Navigator.canPop(context)
//                         ? IconButton(
//                             icon: const Icon(
//                               Icons.arrow_back,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {
//                               if (Navigator.canPop(context)) {
//                                 Navigator.pop(context);
//                               } else {
//                                 BlocProvider.of<AppBloc>(
//                                   context,
//                                 ).add(TriggerAppEvent(0));
//                               }
//                             },
//                           )
//                         : SizedBox(),
//                   ),
//
//                   /// 📝 TITLE
//                   Positioned(
//                     left: 12,
//                     right: 80,
//                     bottom: context.screenHeight * 0.14,
//                     child: Text(
//                       video.title,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


