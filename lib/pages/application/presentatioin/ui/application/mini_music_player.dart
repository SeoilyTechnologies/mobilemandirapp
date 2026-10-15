import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../lyrics/bloc/aartiplayer_state.dart';
import '../../bloc/app_bloc.dart';

class MiniMusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AartiPlayerBloc, AartiPlayerState>(
      builder: (context, state) {
        if (state.track == null) return const SizedBox();

        return SizedBox(
          width: double.infinity,
          height: 64,
          child: GestureDetector(onTap: (){
            Navigator.pushNamed(context, AppRoutes.AARTI_PLAYER_PAGE);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColor.newsecondaruy,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 6),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// 🎵 THUMBNAIL IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    AppConstant.fileBaseUrl + state.track!.thumbnail,
                    width: 100,
                    height: 54,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) {
                      return Container(
                        width: 40,
                        height: 40,
                        color: Colors.black12,
                        child: const Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 20,
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 8),

                /// 📝 TITLE
                Expanded(
                  child: Text(
                    state.track!.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.042,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                ),

                /// ▶ PLAY / PAUSE
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    state.isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 24,
                    color: AppColor.appWhiteColor,
                  ),
                  onPressed: () {
                    if (!state.isPlaying &&
                        state.position >= state.duration &&
                        state.duration != Duration.zero) {
                      context.read<AartiPlayerBloc>().add(
                        SeekAudio(Duration.zero),
                      );
                    }

                    context.read<AartiPlayerBloc>().add(
                      TogglePlayPause(),
                    );
                   // context.read<AartiPlayerBloc>().add(TogglePlayPause());
                  },
                ),

                const SizedBox(width: 4),

                /// ❌ CLOSE
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(
                    Icons.close,
                    size: 22,
                    color: AppColor.appWhiteColor,
                  ),
                  onPressed: () {
                    context.read<AartiPlayerBloc>().add(PauseAudio());

                    context.read<AppBloc>().add(
                      HideShowMusciActionButtons(false),
                    );
                  },
                ),
              ],
            ),
          ),)
        );
      },
    );
  }
}
