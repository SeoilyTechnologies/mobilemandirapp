import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mandirapp/common/component/wishlist_icon_button.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/date_time_helper.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/utils/wishlist_toggle_helper.dart';
import '../../bloc/mobile_home_event.dart';
import '../../bloc/mobile_home_state.dart';
import '../audio_player_service.dart';

class AartiListItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String duration;
  final String imagePath;
  final bool isAddedInWishlist;
  final String audioAsset; // <- new
  final VoidCallback? onAdd;

  const AartiListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isAddedInWishlist,
    required this.duration,
    required this.imagePath,
    required this.audioAsset,
    this.onAdd,
  });

  @override
  State<AartiListItem> createState() => _AartiListItemState();
}

class _AartiListItemState extends State<AartiListItem> {
  late final AudioPlayerService _audioService;
  late final String _myMediaId; // compare karne ke liye

  @override
  void initState() {
    super.initState();
    final getIt = GetIt.instance;
    _audioService = getIt<AudioPlayerService>();
    _myMediaId = widget.audioAsset;
  }

  void _onPlayPauseTap() {
    final currentlyPlaying = _audioService.currentMedia;
    final isSame = currentlyPlaying == _myMediaId;

    if (isSame) {
      // toggle play/pause depending on player state
      // get last player state from stream is cumbersome synchronously,
      // but we can check _audioService._player.playing if exposed.
      // Safer: inspect PlayerState via a short peek using playerStateStream (but here we'll rely on stream builder UI)
      // For action, just toggle based on _player.playing using a direct call:
      if (_audioService.isPlaying) {
        _audioService.pause();
      } else {
        _audioService.play();
      }
    } else {
      // play this media (this will set currentMedia in service)
      _audioService.playAsset(_myMediaId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: _audioService.currentMediaNotifier,
      builder: (context, currentMedia, _) {
        final isMyMedia = currentMedia == _myMediaId;
        return StreamBuilder<PlayerState>(
          stream: _audioService.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final playing = playerState?.playing ?? false;
            final showPause = isMyMedia && playing;

            return Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      widget.imagePath,
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          maxLines: 1,
                          style: AppTextStyle.medium(
                            context.screenWidth * 0.032,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.subtitle,
                          maxLines: 1,
                          style: AppTextStyle.regular(
                            context.screenWidth * 0.032,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.duration,
                    style: AppTextStyle.regular(
                      context.screenWidth * 0.032,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 14),

                  // Play / Pause icon which toggles properly
                  GestureDetector(
                    onTap: _onPlayPauseTap,
                    child: Icon(
                      showPause ? Icons.pause : Icons.play_arrow,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 8),

                  WishlistIconButton(onTap: widget.onAdd!, isAdded: widget.isAddedInWishlist)

                  // GestureDetector(
                  //   onTap: widget.onAdd,
                  //   child: const Icon(Icons.favorite_border, size: 26),
                  // ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    // don't dispose service here; just remove any local listeners if you added them
    super.dispose();
  }
}

// class AartiListItem extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String duration;
//   final String imagePath;
//   final VoidCallback onPlay;
//   final VoidCallback onAdd;
//
//   const AartiListItem({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.duration,
//     required this.imagePath,
//     required this.onPlay,
//     required this.onAdd,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 14),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 8,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Thumbnail
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.network(
//               imagePath,
//               height: 55,
//               width: 55,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 12),
//
//           // Title & Subtitle
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   textAlign: TextAlign.center,
//                   maxLines: 1,
//                   style: AppTextStyle.medium(context.screenWidth*0.032,color: Colors.black),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   subtitle,
//                   maxLines: 1,
//                   textAlign: TextAlign.center,
//                   style: AppTextStyle.regular(context.screenWidth*0.032,color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//
//           // Duration
//           Text(
//             duration,
//             style: AppTextStyle.regular(context.screenWidth*0.032,color: Colors.grey),
//           ),
//           const SizedBox(width: 14),
//
//           // Play Button
//           GestureDetector(
//             onTap: onPlay,
//             child: const Icon(Icons.play_arrow, size: 26),
//           ),
//           const SizedBox(width: 8),
//
//           // Add Button
//           GestureDetector(
//             onTap: onAdd,
//             child: const Icon(Icons.favorite_border, size: 26),
//           ),
//         ],
//       ),
//     );
//   }
// }

class AartiListSection extends StatelessWidget {
  const AartiListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Important Aarti",
                  style: AppTextStyle.semiBold(
                    context.screenWidth * 0.051,
                    color: AppColor.appBlack,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "View All",
                      style: AppTextStyle.lightText(
                        context.screenWidth * 0.03,
                        color: AppColor.greycolor1,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_ios, size: 10, color: Colors.grey),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            // Items
            //Text("${state.dayAccordingAartiChalisaResponse.data!.list.length}"),
            state.dayAccordingAartiChalisaResponse.data != null
                ? ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: state
                        .dayAccordingAartiChalisaResponse
                        .data
                        .length,
                    itemBuilder: (context, position) {
                      var data = state
                          .dayAccordingAartiChalisaResponse
                          .data![position];
                      // return  AartiListItem(
                      //   title: "${data.god.godName}",
                      //   subtitle: "${data.type}",
                      //   duration: "4:20",
                      //   imagePath: "${data.god.thumbnail}",
                      //   // onPlay: () {
                      //   //   final getIt = GetIt.instance;
                      //   //   final AudioPlayerService _audioService = getIt<AudioPlayerService>();
                      //   //
                      //   //   _audioService.playAsset(
                      //   //     "${data.audioAsset}",
                      //   //   );
                      //   // },
                      //   onAdd: () {
                      //
                      //   },
                      // );

                      return AartiListItem(

                        isAddedInWishlist: data.isAddedInWishlist,
                        title: "${data.god.godName}",
                        subtitle: "${data.type}",
                        duration: "4:20",
                        imagePath: "${data.god.thumbnail}",
                        audioAsset: "${data.audioAsset}",
                        // new
                        onAdd: () {
                          toggleAartiBhajanWishlist(
                            context,
                            itemId: data.id,
                            itemModel: data.type,
                          );
                        },
                      );
                    },
                  )
                : SizedBox(),
          ],
        );
      },
    );
  }
}
