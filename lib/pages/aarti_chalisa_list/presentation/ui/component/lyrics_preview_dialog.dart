import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/data/entity/aarti_model.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../lyrics/lyricrepositery/lyric_line.dart';
import '../../bloc/aarti_chalisa_lsit_bloc.dart';
import '../../bloc/aarti_chalisa_lsit_event.dart';
import '../../bloc/aarti_chalisa_lsit_state.dart';

class LyricsPreviewDialog extends StatelessWidget {
  final List<LyricsModel> lyrics;
  final int currentIndex;

  const LyricsPreviewDialog({
    super.key,
    required this.lyrics,
    this.currentIndex = -1,
  });

  double _dialogHeight(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    if (lyrics.length <= 10) {
      return h * 0.48;
    } else if (lyrics.length <= 20) {
      return h * 0.60;
    } else {
      return h * 0.75;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: SizedBox(
        height: _dialogHeight(context),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: BlocBuilder<AartiChalisaLsitBloc, AartiChalisaListState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.close, size: 14),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),

                  /// LEFT – LRC LYRICS
                  Expanded(
                    child: ListView.builder(
                      itemCount: lyrics.length,
                      itemBuilder: (context, i) {
                        final line = lyrics[i];
                        final isActive = i == currentIndex;

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Center(
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 200),
                              style: TextStyle(
                                fontSize: isActive
                                    ? state.lyricsFontSize + 2
                                    : state.lyricsFontSize,
                                color: isActive
                                    ? AppColor.primary1
                                    : Color(state.lyricsColorValue),
                                height: 1.6,
                                fontWeight: isActive
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                              child: Text(
                                line.text,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 8),

                  /// RIGHT – CONTROLS
                  SizedBox(
                    width: context.screenWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 44,right: 44),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.newsecondaruy.withOpacity(0.08),
                            // light bg
                            borderRadius: BorderRadius.circular(12),
                            // well rounded
                            border: Border.all(
                              color: AppColor.newsecondaruy, // border color
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              /// -A
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: AppColor.newsecondaruy,
                                  child: Text(
                                    "-A",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 20),

                              /// Slider
                              RotatedBox(
                                quarterTurns: -2,
                                child: SizedBox(
                                  width: 120, // control width
                                  child: Slider(
                                    padding: EdgeInsets.zero,
                                    value: state.lyricsFontSize,
                                    min: 12,
                                    max: 26,
                                    activeColor: AppColor.newsecondaruy,
                                    thumbColor: AppColor.newsecondaruy,
                                    inactiveColor: AppColor.newsecondaruy
                                        .withOpacity(0.4),
                                    onChanged: (v) {
                                      context.read<AartiChalisaLsitBloc>().add(
                                        AartiChalisaListEvent.updateLyricsFontSize(
                                          v,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),

                              const SizedBox(width: 20),

                              /// +A
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: AppColor.newsecondaruy,
                                  child: Text(
                                    "+A",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),
                       Container(
                         width: context.screenWidth*0.7,
                         alignment: Alignment.center,
                         margin: EdgeInsets.only(left: 24,right: 24),
                         padding: const EdgeInsets.symmetric(
                           horizontal: 12,
                           vertical: 10,
                         ),
                         decoration: BoxDecoration(
                           color: AppColor.newsecondaruy.withOpacity(0.08),
                           // light bg
                           borderRadius: BorderRadius.circular(12),
                           // well rounded
                           border: Border.all(
                             color: AppColor.newsecondaruy, // border color
                             width: 1,
                           ),
                         ),
                         child:  Wrap(
                           spacing: 6,
                           runSpacing: 6,
                           children: _colors.map((c) {
                             final isSelected =
                                 state.lyricsColorValue == c.value;
                             return GestureDetector(
                               onTap: () {
                                 context.read<AartiChalisaLsitBloc>().add(
                                   AartiChalisaListEvent.updateLyricsColor(
                                     c.value,
                                   ),
                                 );
                               },
                               child: CircleAvatar(
                                 radius: 14,
                                 backgroundColor: c,
                                 child: isSelected
                                     ? const Icon(
                                   Icons.check,
                                   size: 16,
                                   color: Colors.white,
                                 )
                                     : null,
                               ),
                             );
                           }).toList(),
                         ),
                       ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  static const _colors = [
    Colors.black,
    Colors.brown,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
  ];
}
