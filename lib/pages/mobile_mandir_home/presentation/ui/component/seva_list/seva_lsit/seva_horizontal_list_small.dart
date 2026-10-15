
import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/utils/utils.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../../../../bloc/mobile_home_state.dart';
import '../seva_card/seva_card.dart';


class SevaHorizontalListSmall extends StatelessWidget {
  final Function(dynamic category)? onTap;

  const SevaHorizontalListSmall({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final categories = state.categoriesListApiResponse.data ?? [];
        return SizedBox(
          height: context.screenHeight * 0.18,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final category = categories[index];

              return SevaCard(
                title: category.name ?? '',
                startColor: Utils.hexToColor(category.backgroundColor.isNotEmpty?category.backgroundColor:"FBE8D5"),
                endColor: Utils.hexToColor(category.backgroundColorEnd.isNotEmpty?category.backgroundColorEnd:"EDBF91"),
                onTap: () => onTap?.call(category),
                imagePath: AppConstant.fileBaseUrl + category.icon,
              );
            },
          ),
        );
      },
    );
  }
}
