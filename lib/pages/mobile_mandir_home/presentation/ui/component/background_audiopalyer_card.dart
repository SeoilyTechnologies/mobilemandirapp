// import 'package:get_it/get_it.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
//
// import '../../../../../common/component/app_text_style.dart';
// import '../../../../../common/routes/exports.dart';
// import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
// import '../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_state.dart';
// import '../../bloc/mobile_home_bloc.dart';
// import '../../bloc/mobile_home_state.dart';
// import '../audio_player_service.dart';
// import 'backgorund_audio_service.dart';
//
// class BackGroundMantraCard extends StatelessWidget {
//   const BackGroundMantraCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<MobileHomeBloc, MobileHomeState>(
//       listenWhen: (prev, curr) =>
//       prev.mantraHomePageResponse != curr.mantraHomePageResponse,
//       listener: (context, state) async {
//         final items = state.mantraHomePageResponse.data;
//
//         if (items.length > 2) {
//           final mantra = items[2];
//           final String assetPath = mantra.audioAsset;
//
//           // 🔥 yahi se auto-play + loop start
//          // await BackgroundAudioService.instance.playAsset(assetPath);
//         }
//       },
//       child: BlocBuilder<MobileHomeBloc, MobileHomeState>(
//         builder: (context, state) {
//           final items = state.mantraHomePageResponse.data;
//
//           if (items.length <= 2) return const SizedBox.shrink();
//
//           final mantra = items[2];
//
//           return SizedBox(
//             height: 150,
//             width: double.infinity,
//             child: AudioPlayerCard(
//               title: mantra.title,
//               subtitle: "",
//               onNext: () {},
//               onPrev: () {},
//               onPlay: () async {
//                 //final service = BackgroundAudioService.instance;
//
//                 if (service.isPlaying) {
//                   await service.pause();
//                 } else {
//                   await service.resume(); // 👈 sirf resume, dobara source set nahi
//                 }
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class AudioPlayerCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final VoidCallback onPlay;
//   final VoidCallback onPrev;
//   final VoidCallback onNext;
//
//   const AudioPlayerCard({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.onPlay,
//     required this.onPrev,
//     required this.onNext,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Colors.orange.shade100, Colors.white],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 8,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Play circle
//           Container(
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.orange,
//             ),
//             child: StreamBuilder<bool>(
//               stream: BackgroundAudioService.instance.playingStream,
//               builder: (context, snapshot) {
//                 final isPlaying = snapshot.data ?? false;
//
//                 return IconButton(
//                   icon: Icon(
//                     isPlaying ? Icons.pause : Icons.play_arrow,
//                     color: Colors.white,
//                   ),
//                   onPressed: onPlay,
//                 );
//               },
//             ),
//
//           ),
//           const SizedBox(width: 16),
//
//           // Title + Subtitle
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: AppTextStyle.bold(
//                     context.screenWidth * 0.042,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: AppTextStyle.regular(
//                     context.screenWidth * 0.042,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           // Controls
//           IconButton(icon: const Icon(Icons.skip_previous), onPressed: onPrev),
//           IconButton(icon: const Icon(Icons.skip_next), onPressed: onNext),
//         ],
//       ),
//     );
//   }
// }
