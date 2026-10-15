import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:video_player/video_player.dart';

import '../../../../../common/component/mm_vendor_appbar.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../thankyou_seva/presentation/bloc/thankyou_sewa_page_bloc.dart';
import '../../../thankyou_seva/presentation/bloc/thankyou_sewa_page_event.dart';
import '../bloc/video_proof_bloc.dart';
import '../bloc/video_proof_event.dart';
import '../bloc/video_proof_state.dart';
import 'component/add_member_dialog/add_member_dialog.dart';
import 'component/custom_video_proof_player.dart';
import 'component/video_proof_status_card.dart';

class SewaVideoProofPage extends StatelessWidget {
  SewaVideoProofPage({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return SewaVideoProofPageSmall();
    } else if (context.isMediumScreen) {
      return SewaVideoProofPageMedium();
    } else {
      return SewaVideoProofPageMedium();
    }
  }
}


class SewaVideoProofPageSmall extends StatefulWidget {
  const SewaVideoProofPageSmall({super.key});

  @override
  State<SewaVideoProofPageSmall> createState() =>
      _SewaVideoProofPageSmallState();
}

class _SewaVideoProofPageSmallState extends State<SewaVideoProofPageSmall> {


  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.newbackgroundColorHome,
      appBar: MandirAppBar(
        title: context.l10n.videoProof,
        onBackTap: () {
          Navigator.pop(context);
        },
      ),
      body: BlocConsumer<VideoProofBloc, VideoProofState>(
        listener: (context, state) {
          if (state.raiseConcernMessage.isNotEmpty) {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
            context.showCustomSnackbar(state.raiseConcernMessage);
          }

          if (state.approveVideoMessage.isNotEmpty) {
            context.showCustomSnackbar(state.approveVideoMessage);
          }

          if (state.approveVideoMessage.isNotEmpty &&
              state.isApproveVideoDone) {
            BlocProvider.of<ThankyouSewaPageBloc>(context)
                .add(GetThankyou(id: state.videoProofApiResponse.data.sevaId));

            Navigator.pushReplacementNamed(
              context,
              AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading || state.videoProofApiResponse.data.sevaId.isEmpty) {
            return SizedBox(
              height: context.screenHeight * 0.7,
              width: context.screenWidth,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }


          return SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// BODY
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(0),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 18),

                          Container(
                            width: context.screenWidth,
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 12,
                              top: 18,
                              bottom: 18,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/background_image/proof_ready_background.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.l10n.sevaProofReady,
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.0426,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 24),

                          Column(
                            children: List.generate(
                              state.videoProofApiResponse.data.infoCards.length,
                                  (index) {
                                final item = state
                                    .videoProofApiResponse.data.infoCards[index];

                                String iconPath;

                                switch (item.key) {
                                  case "gps":
                                    iconPath =
                                    "assets/background_image/video_proof_map_pin.png";
                                    break;
                                  case "recorded":
                                    iconPath =
                                    "assets/background_image/record_liv.png";
                                    break;
                                  case "payment":
                                    iconPath =
                                    "assets/background_image/video_prrof_card.png";
                                    break;
                                  default:
                                    iconPath =
                                    "assets/background_image/video_prrof_card.png";
                                }

                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: index ==
                                        state.videoProofApiResponse.data
                                            .infoCards.length -
                                            1
                                        ? 0
                                        : 12,
                                  ),
                                  child: VideoProofStatusCard(
                                    height: item.key == "gps"
                                        ? null
                                        : context.screenHeight * 0.075,
                                    icon: Image.asset(
                                      iconPath,
                                      width: item.key == "gps" ? 20 : 22,
                                    ),
                                    title: item.title,
                                    subtitle: item.key == "gps"
                                        ? context.l10n.videoRecordedAtVerifiedGpsLocation
                                        : item.subtitle,
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 20),

                          state.isLoading
                              ? const SizedBox()
                              : Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: CustomVideoProofPlayer(
                              key: ValueKey(
                                state.videoProofApiResponse.data.media.url,
                              ),
                              videoUrl: AppConstant.fileBaseUrl +
                                  "${state.videoProofApiResponse.data.media.url}",
                              thumbnailUrl: AppConstant.fileBaseUrl +
                                  "${state.videoProofApiResponse.data.media.thumbnail}",
                            ),
                          ),

                          const SizedBox(height: 18),

                          Text(
                            context.l10n.raiseConcernWithin,
                            style: AppTextStyle.gilroyMedium(
                              context.screenWidth * 0.037,
                            ),
                          ),

                          const SizedBox(height: 18),

                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/background_image/multiple_selection_background.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.l10n.yourOriginalMessage,
                                  style: AppTextStyle.gilroySemiBold(
                                    context.screenWidth * 0.0426,
                                    color: AppColor.goldDark,
                                  ),
                                ),
                                Text(
                                  "${state.videoProofApiResponse.data.whatWasSaid}",
                                  style: AppTextStyle.gilroyMedium(
                                    context.screenWidth * 0.0332,
                                    color: AppColor.newGreyy,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),

                          state.videoProofApiResponse.data.canRaiseIssue == false
                              ? const SizedBox.shrink()
                              : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18),
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {

                                      showAddMemberDialog(context);
                                    },
                                    child: Text(context.l10n.raiseConcern),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<VideoProofBloc>()
                                          .add(ApproveVideoProof());
                                    },
                                    child: Text(context.l10n.approve),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          state.videoProofApiResponse.data.status == "completed"
                              ? const SizedBox(height: 10)
                              : const SizedBox.shrink(),

                          state.videoProofApiResponse.data.status == "completed"
                              ? OutlinedButton(
                            onPressed: () {
                              context
                                  .read<ThankyouSewaPageBloc>()
                                  .add(
                                GetThankyou(
                                  id: state.videoProofApiResponse.data
                                      .sevaId,
                                ),
                              );

                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
                              );
                            },
                            child: Text(context.l10n.seeDetail),
                          )
                              : const SizedBox(height: 18),

                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showAddMemberDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (dialogContext) {
        return AnimatedPadding(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(dialogContext).viewInsets.bottom,
          ),
          child: const Center(
            child: AddMemberDialog(),
          ),
        );
      },
    );
  }
}


class SewaVideoProofPageMedium extends StatefulWidget {
  const SewaVideoProofPageMedium({super.key});

  @override
  State<SewaVideoProofPageMedium> createState() =>
      _SewaVideoProofPageMediumState();
}


class _SewaVideoProofPageMediumState
    extends State<SewaVideoProofPageMedium> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.newbackgroundColorHome,

      appBar: MandirAppBar(
        title: context.l10n.videoProof,
        onBackTap: () {
          Navigator.pop(context);
        },
      ),
      body: BlocConsumer<VideoProofBloc, VideoProofState>(
        listener: (context, state) {
          if (state.raiseConcernMessage.isNotEmpty) {
            // Dialog open hai to close kar do
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
            context.showCustomSnackbar(state.raiseConcernMessage);
          }

          if (state.approveVideoMessage.isNotEmpty) {
            context.showCustomSnackbar(state.approveVideoMessage);
          }
          if (state.approveVideoMessage.isNotEmpty &&
              state.isApproveVideoDone) {
            BlocProvider.of<ThankyouSewaPageBloc>(
              context,
            ).add(GetThankyou(id: state.videoProofApiResponse.data.sevaId));
            Navigator.pushReplacementNamed(
              context,
              AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading || state.videoProofApiResponse.data.sevaId.isEmpty) {
            return SizedBox(
              height: context.screenHeight * 0.7,
              width: context.screenWidth,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          return SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  /// BODY
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(0),
                    ),
                    child: Container(
                      //  color: AppColor.red,
                      child: Column(
                        children: [
                          const SizedBox(height: 18),

                          Container(
                            width: context.screenWidth,
                            padding: EdgeInsets.only(
                              left: 24,
                              right: 12,
                              top: 18,
                              bottom: 18,
                            ),
                            margin: EdgeInsets.only(left: 14, right: 14),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/background_image/proof_ready_background.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  context.l10n.gauSevaProofReady,
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.0426,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                                SizedBox(height: 4),
                                // Text(
                                //   "${state.videoProofApiResponse.data
                                //       .donorName} — ${state
                                //       .videoProofApiResponse.data.vendor
                                //       .vendorName}, ${state
                                //       .videoProofApiResponse.data.vendor
                                //       .location}",
                                //   style: AppTextStyle.gilroyMedium(
                                //     context.screenWidth * 0.032,
                                //     color: AppColor.appWhiteColor,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),

                          Column(
                            children: List.generate(
                              state.videoProofApiResponse.data.infoCards.length,
                                  (index) {
                                final item = state
                                    .videoProofApiResponse
                                    .data
                                    .infoCards[index];

                                String iconPath;

                                switch (item.key) {
                                  case "gps":
                                    iconPath =
                                    "assets/background_image/video_proof_map_pin.png";
                                    break;

                                  case "recorded":
                                    iconPath =
                                    "assets/background_image/record_liv.png";
                                    break;

                                  case "payment":
                                    iconPath =
                                    "assets/background_image/video_prrof_card.png";
                                    break;

                                  default:
                                    iconPath =
                                    "assets/background_image/video_prrof_card.png";
                                }

                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                    index ==
                                        state
                                            .videoProofApiResponse
                                            .data
                                            .infoCards
                                            .length -
                                            1
                                        ? 0
                                        : 12,
                                  ),
                                  child: VideoProofStatusCard(
                                    height: item.key == "gps"
                                        ? null
                                        : context.screenHeight * 0.09,
                                    icon: Image.asset(
                                      iconPath,
                                      width: item.key == "gps" ? 20 : 22,
                                    ),
                                    title: item.title,
                                    subtitle: item.key == "gps" ?context.l10n.videoRecordedAtVerifiedGpsLocation:item.subtitle,
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(height: 20),
                          state.isLoading?SizedBox():  Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                           child: CustomVideoProofPlayer(
                          key: ValueKey(state.videoProofApiResponse.data.media.url),
                      videoUrl:
                      AppConstant.fileBaseUrl +
                          "${state.videoProofApiResponse.data.media.url
                              .toString()}",
                      thumbnailUrl:
                      AppConstant.fileBaseUrl +
                          "${state.videoProofApiResponse.data.media
                              .thumbnail.toString()}",
                    ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            context.l10n.raiseConcernWithin,
                            style: AppTextStyle.gilroyMedium(
                              context.screenWidth * 0.037,
                            ),
                          ),
                          SizedBox(height: 18),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 14, right: 14),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/background_image/multiple_selection_background.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  context.l10n.yourOriginalMessage,
                                  style: AppTextStyle.gilroySemiBold(
                                    context.screenWidth * 0.0426,
                                    color: AppColor.goldDark,
                                  ),
                                ),

                                Text(
                                  "${state.videoProofApiResponse.data
                                      .whatWasSaid}",
                                  style: AppTextStyle.gilroyMedium(
                                    context.screenWidth * 0.0332,
                                    color: AppColor.newGreyy,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),

                          state.videoProofApiResponse.data.canRaiseIssue ==
                                  false
                              ? SizedBox.shrink()
                              :
                          Padding(
                            padding: EdgeInsets.only(left: 18, right: 18),
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      showAddMemberDialog(context);
                                    },
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      side: BorderSide(
                                        color: AppColor.goldDark,
                                        width: 1.4,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: Text(
                                      context.l10n.raiseConcern,
                                      style: AppTextStyle.gilroySemiBold(
                                        context.screenWidth * 0.0426,
                                        color: AppColor.goldDark,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      BlocProvider
                                          .of<VideoProofBloc>(context)
                                          .add(ApproveVideoProof());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.appNewGreen,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: Text(
                                      context.l10n.approve,
                                      style: AppTextStyle.gilroySemiBold(
                                        context.screenWidth * 0.0426,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          state.videoProofApiResponse.data.status=="completed"?  SizedBox(height: 10):SizedBox.shrink(),
                          state.videoProofApiResponse.data.status=="completed"?
                          OutlinedButton(
                            onPressed: () {

                              BlocProvider.of<ThankyouSewaPageBloc>(
                                context,
                              ).add(GetThankyou(id: state.videoProofApiResponse.data.sevaId));
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                  horizontal: 8
                              ),
                              side: BorderSide(
                                color: AppColor.goldDark,
                                width: 1.4,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              context.l10n.seeDetail,
                              style: AppTextStyle.gilroySemiBold(
                                context.screenWidth * 0.042,
                                color: AppColor.goldDark,
                              ),
                            ),
                          ):SizedBox(height: 18),

                          SizedBox(height: context.screenHeight*0.1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showAddMemberDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (dialogContext) {
        return AnimatedPadding(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          padding: EdgeInsets.only(
            bottom: MediaQuery
                .of(dialogContext)
                .viewInsets
                .bottom,
          ),
          child: const Center(
            child: AddMemberDialog(),
          ),
        );
      },
    );
  }
}