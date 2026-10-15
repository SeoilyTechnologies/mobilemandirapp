import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../aarti_chalisa_list/data/entity/aarti_model.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_state.dart';
import '../../../lyrics_timex.dart';
import 'component/aarti_music_card.dart';

class AartiChalishaLyricsPage extends StatelessWidget {
  AartiChalishaLyricsPage({super.key});

  static const double _itemHeight = 54.0;
  int _lastIndex = -1;

  final ScrollController _scrollController = ScrollController();

  int _currentIndex(List<LyricsModel> lyrics, Duration position) {
    for (int i = 0; i < lyrics.length; i++) {
      if (position >= lyrics[i].startDuration &&
          position < lyrics[i].endDuration) {
        return i;
      }
    }
    return 0;
  }

  void _scrollToIndex(int index, BuildContext context) {
    if (!_scrollController.hasClients) return;

    final screenHeight = MediaQuery.of(context).size.height;
    final targetOffset =
        index * _itemHeight - (screenHeight / 2) + (_itemHeight / 2);

    _scrollController.animateTo(
      targetOffset.clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AartiPlayerBloc, AartiPlayerState>(
      listener: (context, state) {
        final track = state.track;
        if (track == null) return;

        final idx = _currentIndex(track.lyrics, state.position);

        if (idx == _lastIndex) return; // 🔥 prevents jitter

        _lastIndex = idx;
        _scrollToIndex(idx, context);
      },
      builder: (context, state) {
        final track = state.track;

        if (track == null || track.lyrics.isEmpty) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final idx = _currentIndex(track.lyrics, state.position);

        return Scaffold(
          appBar: MandirAppBar(
            title: context.l10n.lyrics,
            onBackTap: () {
              Navigator.pop(context);
            },
          ),

          body: Column(
            children: <Widget>[
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //   Text(""),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${state.track!.title!}",
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.048,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: track.lyrics.length,
                    itemExtent: _itemHeight,
                    itemBuilder: (context, index) {
                      final isActive = index == idx;

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 250),
                          style: isActive
                              ? AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.042,
                                  color: AppColor.newsecondaruy,
                                )
                              : AppTextStyle.gilroyMedium(
                                  context.screenWidth * 0.036,
                                  color: AppColor.fullBlack,
                                ),
                          child: Text(
                            track.lyrics[index].text,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Center(child: AartiMusicCard()),
              SizedBox(height: 54),
            ],
          ),
        );
      },
    );
  }
}
