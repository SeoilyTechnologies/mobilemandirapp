import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/pages/temple_detail/presentation/ui/component/section_title.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/share_helper.dart';
import '../../../../../common/utils/utils.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../god_detail/data/entity/temple_detail/temple_detail_api_response.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_event.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';

class RelatedTempleSection extends StatelessWidget {
  const RelatedTempleSection({super.key});

  Widget templeCard(
      BuildContext context,
      RelatedTemple temple,
      )
  {
    return Container(
      width: context.screenWidth * 0.568,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(14),
                ),
                child: Image.network(
                  AppConstant.fileBaseUrl+temple.image,
                  height: context.screenWidth * 0.568,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                right: 10,
                top: 10,
                child: GestureDetector(
                  onTap: () {
                    context.read<TempleDetailNewBloc>().add(
                      TempleDetailNewEvent.relatedTempleToggleWishlist(
                        itemId: temple.id,
                        itemModel: 'temple',
                      ),
                    );
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF9B5A13),
                    ),
                    child: Icon(
                      temple.isWishlist
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  temple.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.0400,
                    color: AppColor.newsecondaruy,
                  ),
                ),

                const SizedBox(height: 6),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/new_design/icon/akar-icons_location.png",
                      width: 10,
                      height: 10,
                    ),

                    Expanded(
                      child: Text(
                        " ${temple.location}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.030,
                          color: AppColor.newGreyy,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 3),


                Wrap(
                  spacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: _buildTags(context,["Bhakti","Naam Jaap","Prem"]),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [

                    GestureDetector(
                      onTap: (){
                        Utils.openMapLocation(
                        latitude: temple?.lat??0.0,
                          longitude: temple?.lng??0.0,
                          placeName: temple.location,
                        );
                      },
                      child: button("Directions", context,),
                    ),
                    const SizedBox(width: 6),
                    // button("Call", context),
                    // const SizedBox(width: 6),
                   GestureDetector(
                     onTap: (){
                       ShareHelper.shareTemple(slug: temple.slug, name: temple.title);
                     },
                     child:  button("Share", context),
                   )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTags(BuildContext context,tags) {
    List<Widget> widgets = [];

    for (int i = 0; i < tags.length; i++) {
      widgets.add(
        Text(
          tags[i],
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.029,
            color: AppColor.newGreyy,
          ),
        ),
      );

      if (i != tags.length - 1) {
        widgets.add(
          Text(
            "•",
            style: TextStyle(fontSize: 20, color: Color(0xFF666666)),
          ),
        );
      }
    }

    return widgets;
  }
  Widget button(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      decoration: BoxDecoration(
        color: AppColor.newsecondaruy.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.023,
          color: AppColor.newsecondaruy,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {},
      builder: (context, state) {
        final relatedTemples =
            state.templeDetailApiResponse.data.relatedTemples;

        if (relatedTemples.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: context.l10n.relatedTemple,),


            const SizedBox(height: 14),

            SizedBox(
              height: context.screenHeight * 0.42,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: relatedTemples.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == relatedTemples.length - 1 ? 0 : 12,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        BlocProvider.of<TempleDetailNewBloc>(
                          context,
                        ).add(GetTempleDetailById(id: relatedTemples[index].id));
                        Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL_PAGE);
                      },
                      child: templeCard(
                        context,
                        relatedTemples[index],
                      ),
                    )
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
