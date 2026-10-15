import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/pages/god_detail/data/entity/god_detail_api_response.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_event.dart';
import '../../bloc/god_details_state.dart';

class AvatarFormsSectionSmall extends StatelessWidget {
  const AvatarFormsSectionSmall({super.key});

  Widget formCard(BuildContext context, GodReference avatarsAndForms) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<GodDetailsBloc>(
          context,
        ).add(GodDetailsEvent.getGodDetailById(id: avatarsAndForms.id));
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: AppColor.newsecondaruyyybackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            SizedBox(height: 4),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              child: Image.network(
                AppConstant.fileBaseUrl + avatarsAndForms.image,
                height: context.screenHeight * 0.07,
                width: context.screenWidth * 0.14,
                fit: BoxFit.fill,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              "${avatarsAndForms.name}",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.038,
                color: AppColor.fullBlack,
              ),
            ),

            // const SizedBox(height: 4),

            // Text(
            //   "Fierce storm\nform",
            //   textAlign: TextAlign.center,
            //   maxLines: 2,
            //   style: AppTextStyle.gilroyBold(
            //    Platform.isIOS?context.screenWidth * 0.034: context.screenWidth * 0.020,
            //     color: AppColor.fullBlack,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE5D8CB)),
          ),
          child: SizedBox(
            height: context.screenHeight * 0.167,
            width: context.screenWidth,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.godDetailApiResponse.data.avatarsAndForms.length,
              itemBuilder: (context, index) {
                return formCard(
                  context,
                  state.godDetailApiResponse.data.avatarsAndForms[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class AvatarFormsSectionMedium extends StatelessWidget {
  const AvatarFormsSectionMedium({super.key});

  Widget formCard(BuildContext context, GodReference avatarsAndForms) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<GodDetailsBloc>(
          context,
        ).add(GodDetailsEvent.getGodDetailById(id: avatarsAndForms.id));
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: AppColor.newsecondaruyyybackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            SizedBox(height: 4),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              child: Image.network(
                AppConstant.fileBaseUrl + avatarsAndForms.image,
                height: 52,
                width: 52,
                fit: BoxFit.fill,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              "${avatarsAndForms.name}",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.02,
                color: AppColor.fullBlack,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              "Fierce storm\nform",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppTextStyle.gilroyMedium(
                Platform.isIOS
                    ? context.screenWidth * 0.022
                    : context.screenWidth * 0.020,
                color: AppColor.fullBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE5D8CB)),
          ),
          child: SizedBox(
            height: context.screenHeight * 0.13,
            width: context.screenWidth,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.godDetailApiResponse.data.avatarsAndForms.length,
              itemBuilder: (context, index) {
                return formCard(
                  context,
                  state.godDetailApiResponse.data.avatarsAndForms[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class AvatarFormsSection extends StatelessWidget {
  AvatarFormsSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return AvatarFormsSectionSmall();
    } else if (context.isMediumScreen) {
      return AvatarFormsSectionMedium();
    } else {
      return AvatarFormsSectionMedium();
    }
  }
}
