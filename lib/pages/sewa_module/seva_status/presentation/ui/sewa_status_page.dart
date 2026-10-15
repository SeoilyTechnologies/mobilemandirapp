import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/date_time_helper.dart';
import '../../bloc/seva_status_bloc.dart';
import '../../bloc/seva_status_event.dart';
import '../../bloc/seva_status_state.dart';
import 'component/seva_time_list.dart';
import 'component/sewa_confirmed_card.dart';

class SewaStatusPage extends StatefulWidget {
  const SewaStatusPage({super.key});

  @override
  State<SewaStatusPage> createState() => _SewaStatusPageState();
}

class _SewaStatusPageState extends State<SewaStatusPage> {
  bool _hasCheckedArgs = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasCheckedArgs) {
      _hasCheckedArgs = true;
      final args = ModalRoute.of(context)?.settings.arguments;
      String? id;
      if (args is String && args.isNotEmpty) {
        id = args;
      } else if (args is Map) {
        if (args['orderId'] != null) {
          id = args['orderId'].toString();
        } else if (args['id'] != null) {
          id = args['id'].toString();
        }
      }

      if (id != null && id.isNotEmpty) {
        final currentId =
            context.read<SevaStatusBloc>().state.sevaStatusApiResponse.data.id;
        final isLoading = context.read<SevaStatusBloc>().state.isLoading;
        if (!isLoading && currentId != id) {
          context.read<SevaStatusBloc>().add(GetStatus(id: id));
        }
      }
    }
  }

  @override
  void dispose() {
    try {
      context.read<SevaStatusBloc>().reset();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SevaStatusBloc, SevaStatusState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isLoading || state.sevaStatusApiResponse.data.id.isEmpty) {
          return Scaffold(
            backgroundColor: AppColor.newbackgroundColorHome,
            appBar: MandirAppBar(
              title: context.l10n.mySeva,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final showProofExpected =
            state.sevaStatusApiResponse.data.status != "completed" &&
                state.sevaStatusApiResponse.data.status != "rejected" &&
                state.sevaStatusApiResponse.data.status != "time_out" &&
                !(state.sevaStatusApiResponse.data.proof.available ?? false);

        final status = state.sevaStatusApiResponse.data.status;

        final bool isRefundStatus =
            status == "time_out" || status == "rejected";

        final String paymentTitle = isRefundStatus
            ? "${state.sevaStatusApiResponse.data.formattedVendorAmount} ${context.l10n.refundProcessed}"
            : "${state.sevaStatusApiResponse.data.formattedVendorAmount} ${context.l10n.paymentSuccessful}";

        final String paymentSubtitle = isRefundStatus
            ? context.l10n.refundSubtitle
            : context.l10n.releasesOnlyVideoProof;
        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          appBar: MandirAppBar(
            title: context.l10n.mySeva,
            onBackTap: () {
              Navigator.pop(context);
            },
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: context.screenHeight*0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SuccessCard(),
                  SizedBox(height: 20),
                  showProofExpected
                      ? Container(
                  width: context.screenWidth,
                  height: context.screenHeight * 0.1,
                  decoration: BoxDecoration(
                    color: AppColor.newsecondaruyyybackground,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: AppColor.goldDark,
                      width: 1.4,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.l10n.videoProofExpected,
                              style: AppTextStyle.gilroyMedium(
                                context.screenWidth * 0.032,
                                color: AppColor.fullBlack,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "${DateTimeHelper.formatToProofDate(state.sevaStatusApiResponse.data.proofExpectedBy)}  ${DateTimeHelper.getRemainingTime(state.sevaStatusApiResponse.data.proofExpectedBy, context)}",
                              style: AppTextStyle.gilroyMedium(
                                context.screenWidth * 0.0373,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: Text(
                            DateTimeHelper.formatToProofTime(
                              state.sevaStatusApiResponse.data.proofExpectedBy,
                              context,
                            ),
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.037,
                              color: AppColor.goldDark,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                    : const SizedBox.shrink(),

                  state.sevaStatusApiResponse.data.status=="completed"?SizedBox.shrink(): SizedBox(height: 20),

                  Container(
                    width: context.screenWidth,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.lightgreenbackground,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: AppColor.appNewgreen,
                        width: 1.4,
                      ),
                    ),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/background_image/green_lock_button.png",
                          width: 16,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min, // Important
                            children: [
                              Text(
                                paymentTitle,
                                style: AppTextStyle.gilroyMedium(
                                  context.screenWidth * 0.0426,
                                  color: AppColor.appNewgreen,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                paymentSubtitle,
                                style: AppTextStyle.gilroyMedium(
                                  context.screenWidth * 0.037,
                                  color: AppColor.newGreyy,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    context.l10n.liveStatus,
                    style: AppTextStyle.gilroySemiBold(
                      context.screenWidth * 0.048,
                      color: AppColor.fullBlack,
                    ),
                  ),
                  SizedBox(height: 12),

                  SevaTimeList(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
