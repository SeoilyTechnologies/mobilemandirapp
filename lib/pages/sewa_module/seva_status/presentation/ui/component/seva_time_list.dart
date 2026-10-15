import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/utils/date_time_helper.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/presentation/ui/component/sewa_timeline_item.dart';

import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../auth/component/primary_button.dart';
import '../../../../sewa_video_proof/presentation/bloc/video_proof_bloc.dart';
import '../../../../sewa_video_proof/presentation/bloc/video_proof_event.dart';
import '../../../bloc/seva_status_bloc.dart';
import '../../../bloc/seva_status_state.dart';


class SevaTimeList extends StatelessWidget {
  SevaTimeList({super.key});

  final ValueNotifier<bool> _showDialogNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return SevaTimeListSmall();
    } else if (context.isMediumScreen) {
      return SevaTimeListMedium();
    } else {
      return SevaTimeListMedium();
    }
  }
}


class SevaTimeListSmall extends StatelessWidget {
  const SevaTimeListSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SevaStatusBloc, SevaStatusState>(
      builder: (context, state) {
        final liveStatus = state.sevaStatusApiResponse.data.liveStatus;

        return Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: liveStatus.length,
              itemBuilder: (context, index) {
                final item = liveStatus[index];

                return SewaTimelineItem(
                  title: item.title,
                  subtitle: item.subtitle,
                  time: item.subtitle=="Waiting"?"":item.at.isNotEmpty
                      ? DateTimeHelper.formatTimelineDate(item.at, context)
                      : "",
                  isCompleted: item.state == "done",
                  isLast: index == liveStatus.length - 1,
                );
              },
            ),

            const SizedBox(height: 8),

            if (state.sevaStatusApiResponse.data.proof.available)
              PrimaryButtonWithImage(
                imagePath: "assets/new_design/icon/right_button_icon.png",
                title: context.l10n.seeVideoProof,
                onTap: () {
                  BlocProvider.of<VideoProofBloc>(context).add(ResetState());
                  BlocProvider.of<VideoProofBloc>(
                    context,
                  ).add(GetVideoProof(id: state.sevaStatusApiResponse.data.id));
                  Navigator.pushNamed(context, AppRoutes.SEWA_VIDEO_PROOF_PAGE);
                },
              ),

            const SizedBox(height: 50),
          ],
        );
      },
    );
  }
}

class SevaTimeListMedium extends StatelessWidget {
  const SevaTimeListMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SevaStatusBloc, SevaStatusState>(
      builder: (context, state) {
        final liveStatus = state.sevaStatusApiResponse.data.liveStatus;

        return Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: liveStatus.length,
              itemBuilder: (context, index) {
                final item = liveStatus[index];

                return SewaTimelineItem(
                  title: item.title,
                  subtitle: item.subtitle,
                  time: item.subtitle=="Waiting"?"":item.at.isNotEmpty
                      ? DateTimeHelper.formatTimelineDate(item.at, context)
                      : "",
                  isCompleted: item.state == "done",
                  isLast: index == liveStatus.length - 1,
                );
              },
            ),

            const SizedBox(height: 8),

            if (state.sevaStatusApiResponse.data.proof.available)
              PrimaryButtonWithImage(
                imagePath: "assets/new_design/icon/right_button_icon.png",
                title: context.l10n.seeVideoProof,
                onTap: () {
                  BlocProvider.of<VideoProofBloc>(context).add(ResetState());
                  BlocProvider.of<VideoProofBloc>(
                    context,
                  ).add(GetVideoProof(id: state.sevaStatusApiResponse.data.id));
                  Navigator.pushNamed(context, AppRoutes.SEWA_VIDEO_PROOF_PAGE);
                },
              ),

            const SizedBox(height: 50),
          ],
        );
      },
    );
  }
}
