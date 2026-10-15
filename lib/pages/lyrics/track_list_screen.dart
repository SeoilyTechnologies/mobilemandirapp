// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:mandirapp/common/values/screenUtils.dart';
// import 'package:mandirapp/pages/application/presentatioin/bloc/app_bloc.dart';
//
// import '../../common/routes/routes.dart';
// import '../application/presentatioin/ui/drawer_menu.dart';
// import '../home/presentation/bloc/home_bloc.dart';
// import '../home/presentation/ui/component/custom_appbar.dart';
// import 'aarti_player_screen.dart';
// import 'bloc/aartiplayer_bloc.dart';
// import 'bloc/aartiplayer_event.dart';
// import 'lyricrepositery/lyrics_repositery.dart';
// import 'track_model.dart';
//
// // List of tracks
// final List<Track> tracks = [
//   // Track(
//   //   title: "New Shiv Aarti",
//   //   audioAsset: "assets/audio/shiv_aarti_new.mp3",
//   //   lyrics: LyricsRepository.newShivAartiLyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Mahamirtunjay mantra",
//   //   audioAsset: "assets/audio/new/Shivji-Mahamrityunjaya-Mantra.mp3",
//   //   lyrics: LyricsRepository.mahamrityunjayaMantraLyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "New Shiv Chalisha",
//   //   audioAsset: "assets/audio/Shiv - Chalisa.mp3",
//   //   lyrics: LyricsRepository.newshivChalisaLyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Bhojan Mantra",
//   //   audioAsset: "assets/audio/bhojan_mantra copy.mp3",
//   //   lyrics: LyricsRepository.bhojanMantraLyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Durga Chalisha",
//   //   audioAsset: "assets/audio/durga_chalisha.mp3",
//   //   lyrics: LyricsRepository.durgaChalisa,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Shiv Chalisha",
//   //   audioAsset: "assets/audio/Shiv_Chalisa_3.mp3",
//   //   lyrics: LyricsRepository.shivChalisa,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Sankat Mochan",
//   //   audioAsset: "assets/hanumang/Sankatmochan_Hanuman_Ashtak.mp3",
//   //   lyrics: LyricsRepository.sankatMochanLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   //
//   // Track(
//   //   title: "Shanti Mantra",
//   //   audioAsset: "assets/audio/shantimantra.mp3",
//   //   lyrics: LyricsRepository.shantiMantraLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Bajrang Baan",
//   //   audioAsset: "assets/hanumang/Bajrang_Baan.mp3",
//   //   lyrics: LyricsRepository.bajrangBaanLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Gayatri Mantra",
//   //   audioAsset: "assets/audio/Gayatri Mantra.mp3",
//   //   lyrics: LyricsRepository.gayatriMantraLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   //
//   // Track(
//   //   title: "Ganesh Aarti",
//   //   audioAsset: "assets/audio/Jai_Ganesh_Deva_1.mp3",
//   //   lyrics: LyricsRepository.ganeshAarti,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Laxmi Ji Aarti",
//   //   audioAsset: "assets/audio/Om Jai Lakshmi Mata Aarti Aarti Vol 3 128 Kbps.mp3",
//   //   lyrics: LyricsRepository.laxmiJilyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Shiv Ji Aarti",
//   //   audioAsset: "assets/audio/Om Jai Shiv Omkara Aarti Vol 3 128 Kbps.mp3",
//   //   lyrics: LyricsRepository.shivAartiLyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Om Jay Jagdeesh Hare",
//   //   audioAsset: "assets/audio/Om Jai Jagdish Hare Aarti Vol 3 128 Kbps (1).mp3",
//   //   lyrics: LyricsRepository.OmJayJadeeshlyrics,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Saraswati Ji Aarti",
//   //   audioAsset: "assets/audio/Om Jai Saraswati Mata Aarti Vol 3 128 Kbps.mp3",
//   //   lyrics: LyricsRepository.SharashwatiJiAartilyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Ramayan Ji Aarti",
//   //   audioAsset: "assets/audio/Aarti Shri Ramayan Ji Ki Aarti Vol 3 128 Kbps (1).mp3",
//   //   lyrics: LyricsRepository.ramayanAartiLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Durga Ji Aarti",
//   //   audioAsset: "assets/audio/durajiaarti.mp3",
//   //   lyrics: LyricsRepository.ambeGauriAartiLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   //
//   // Track(
//   //   title: "Sany Dev  Ji Aarti",
//   //   audioAsset: "assets/audio/shaniaarti.mp4",
//   //   lyrics: LyricsRepository.sunnyDevAartilyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Kunj Bihari  Ji Aarti",
//   //   audioAsset: "assets/audio/Aarti Kunj Bihari Ki Aarti Vol 3 128 Kbps (1).mp3",
//   //   lyrics: LyricsRepository.kunjBihariAartiLyrics,
//   //   thumbnail: "",
//   // ),
//   //
//   // Track(
//   //   title: "Hanuman Chalisa",
//   //   audioAsset: "assets/shri-hanuman-chalisa.mp3",
//   //   lyrics: LyricsRepository.hanumanChalisa,
//   //   thumbnail: "",
//   // ),
//   // Track(
//   //   title: "Hanuman Aarti",
//   //   audioAsset: "assets/hanumang/Aarti_Kije_Hanuman_Lala_Ki.mp3",
//   //   lyrics: LyricsRepository.hanumanAartiLyrics,
//   //   thumbnail: "",
//   // ),
// ];
//
// // Home page
// class TracksListScreen extends StatelessWidget {
//   const TracksListScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//    //  drawer: const SideDrawerMenu(),
//       appBar: BlocProvider.of<AppBloc>(context).state.drawerIndex == 0
//           ? PreferredSize(
//               preferredSize: Size(context.screenWidth, 60),
//               child: CustomAppBar(
//                 bhagwanList: BlocProvider.of<HomeBloc>(
//                   context,
//                 ).state.bhagwanList,
//               ),
//             )
//           : PreferredSize(
//               preferredSize: Size(context.screenWidth, 60),
//               child: NormalAppBar(),
//             ),
//
//       body: ListView.builder(
//         itemCount: tracks.length,
//         itemBuilder: (context, i) {
//           final track = tracks[i];
//           return ListTile(
//             title: Text(track.title),
//             trailing: const Icon(Icons.arrow_forward),
//             onTap: () {
//               // final track = yourTrackObject; // whatever track you selected
//
//               // Dispatch LoadTrack before navigation
//               context.read<AartiPlayerBloc>().add(LoadTrack(track));
//
//               // Then navigate using named route
//               Navigator.pushNamed(context, AppRoutes.AARTIPLAYERSCREEN);
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (_) => AartiPlayerScreen(track: track),
//               //   ),
//               // );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
