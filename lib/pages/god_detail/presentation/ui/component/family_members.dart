import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/god_detail/data/entity/god_detail_api_response.dart';

import '../../../../../common/routes/exports.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_event.dart';
import '../../bloc/god_details_state.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  Widget row(
      BuildContext context,
      FamilyMember familyMember,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            child: Text(
              Utils.capitalizeFirstLetter(familyMember.relation),
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.034,
                color: AppColor.newsecondaruy,
              ),
            ),
          ),
          Text(
            familyMember.name,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.034,
              color: AppColor.fullBlack,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE4D7C8)),
          ),
          child:
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.godDetailApiResponse.data.familyMembers.length,
            itemBuilder: (context, index) {
              final familyMember =
              state.godDetailApiResponse.data.familyMembers[index];

              return GestureDetector(
                onTap: (){
                  if(familyMember.isClick){
                    BlocProvider.of<GodDetailsBloc>(
                      context,
                    ).add(
                      GodDetailsEvent.getGodDetailById(
                          id: state.godDetailApiResponse.data.familyMembers[index].id
                      ),
                    );
                  }

                },
                child: Column(
                  children: [
                    row(context, familyMember),

                    if (index !=
                        state.godDetailApiResponse.data.familyMembers.length - 1) ...[
                      const SizedBox(height: 8),
                      const Divider(height: 1),
                    ],
                  ],
                ),
              );
            },
          )
        );
      },
    );
  }
}
