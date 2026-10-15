import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/component/section_title.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/utils.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: context.l10n.address),
            const SizedBox(height: 14),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage("assets/background_image/feedback_box.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.fullAddress,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.037,
                      color: AppColor.appWhiteColor.withOpacity(0.7),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "${state.templeDetailApiResponse.data.address}",
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.0426,
                      color: AppColor.appWhiteColor,
                    ),
                  ),

                  SizedBox(height: 8),

                  Divider(color: Colors.white38),

                  SizedBox(height: 8),

                  Text(
                    "GPS: ${state.templeDetailApiResponse.data.lat}, ${state.templeDetailApiResponse.data.lng}",
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.0426,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Row(
              children: [
                // Expanded(
                //   child: GestureDetector(
                //     onTap: () {
                //       Utils.openMapLocation(
                //         latitude: state.templeDetailApiResponse.data.lat,
                //         longitude: state.templeDetailApiResponse.data.lng,
                //         placeName: state.templeDetailApiResponse.data.title,
                //       );
                //     },
                //     child: Container(
                //       height: 42,
                //       decoration: BoxDecoration(
                //         color: AppColor.newsecondaruy,
                //         borderRadius: BorderRadius.circular(4),
                //       ),
                //       child: Center(
                //         child: Text(
                //           context.l10n.getDirections,
                //           style: AppTextStyle.gilroySemiBold(
                //             context.screenWidth * 0.0426,
                //             color: AppColor.appWhiteColor,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // const SizedBox(width: 12),
                //
                Expanded(
                child: GestureDetector(
                  onTap: () {
                    Utils.openMapLocation(
                      latitude: state.templeDetailApiResponse.data.lat,
                      longitude: state.templeDetailApiResponse.data.lng,
                      placeName: state.templeDetailApiResponse.data.title,
                    );
                  },
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColor.newsecondaruy, width: 1.5),
                    ),
                    child: Center(
                      child: Text(
                        context.l10n.getDirections,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.0426,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ),
                  ),
                ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
