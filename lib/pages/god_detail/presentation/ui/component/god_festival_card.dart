import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_state.dart';

class GodFestivalCard extends StatelessWidget {
  const GodFestivalCard({super.key});

  Widget row(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              maxLines: 2,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.034,
                color: AppColor.newsecondaruy,
              ),
            ),
          ),

       Expanded(
         flex: 1,
         child:    Text(

         value,
         textAlign: TextAlign.start,
         maxLines: 2,
         style: AppTextStyle.gilroyBold(
           context.screenWidth * 0.034,
           color: AppColor.fullBlack,
         ),
       ),)
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return BlocBuilder<GodDetailsBloc, GodDetailsState>(
        builder: (context, state) {
          final festivals = state.godDetailApiResponse.data.festivals;

          if (festivals.isEmpty) {
            return const SizedBox.shrink();
          }

          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color(0xFFE4D7C8),
              ),
            ),
            child: Column(
              children: List.generate(
                festivals.length,
                    (index) {
                  final festival = festivals[index];

                  return Column(
                    children: [
                      row(
                        festival.name,
                        festival.when,
                        context,
                      ),

                      if (index != festivals.length - 1)
                        const Divider(height: 1),
                    ],
                  );
                },
              ),
            ),
          );
        },
      );

  }
}
