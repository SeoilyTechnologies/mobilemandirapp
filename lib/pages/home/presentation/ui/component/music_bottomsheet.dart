import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_bloc.dart';
import '../../bloc/home_event.dart';
import '../../bloc/home_state.dart';



class FullPageBottomSheetContent extends StatelessWidget {
  const FullPageBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    // Example playlist (URLs)
    final List<String> songs = [
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3",
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3",
    ];

    return DraggableScrollableSheet(
      expand: true,
      initialChildSize: 1.0,
      minChildSize: 0.5,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        final topPadding = MediaQuery.of(context).padding.top;

        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Container(
              color: Colors.black,
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  /// SliverAppBar with current song info

                  SliverAppBar(
                    expandedHeight: 250,
                    pinned: true,
                    backgroundColor: Colors.black,
                    automaticallyImplyLeading: false,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      titlePadding: EdgeInsets.only(left: 16, bottom: 10, top: topPadding),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  state.currentTrackTitle ?? context.l10n.selectATrack,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  bloc.add(TogglePlayPauseMusic());
                                },
                                icon: Icon(
                                  state.isPlayingMusic
                                      ? Icons.pause_circle_filled
                                      : Icons.play_arrow,
                                  color: Colors.green,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          // Linear progress bar
                          ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: LinearProgressIndicator(
                              value: state.currentDuration.inMilliseconds == 0
                                  ? 0
                                  : state.currentPosition.inMilliseconds /
                                  state.currentDuration.inMilliseconds,
                              backgroundColor: Colors.white12,
                              color: Colors.green,
                              minHeight: 4,
                            ),
                          ),
                        ],
                      ),
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/bajrangbaliji.png',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    leading: SafeArea(
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),

                  /// Artist info row
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/beatles_logo.png'),
                            radius: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'The Beatles',
                            style: TextStyle(color: Colors.white70, fontSize: 16),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.download, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Song List
                  // SliverList(
                  //   delegate: SliverChildBuilderDelegate(
                  //         (context, index) {
                  //       final url = songs[index];
                  //       return ListTile(
                  //         title: Text(
                  //           "Track ${index + 1}",
                  //           style: TextStyle(
                  //             color: state.currentTrackIndex == index
                  //                 ? Colors.green
                  //                 : Colors.white,
                  //           ),
                  //         ),
                  //         subtitle: Text(
                  //           url,
                  //           style: const TextStyle(color: Colors.white54),
                  //         ),
                  //         trailing: const Icon(Icons.more_vert, color: Colors.white),
                  //         onTap: () {
                  //           // Load playlist first if not already loaded
                  //           bloc.add(LoadMusicPlaylist(songs));
                  //           // Play the clicked track immediately
                  //           bloc.add(PlayMusicAtIndex(index));
                  //         },
                  //       );
                  //     },
                  //     childCount: songs.length,
                  //   ),
                  // ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
