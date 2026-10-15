import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../temple_detail/bloc/temple_detail_bloc.dart';
import '../../../../temple_detail/bloc/temple_detail_event.dart';
import '../../../../templelist/persentation/bloc/temple_bloc.dart';
import '../../../../templelist/persentation/bloc/temple_state.dart';
import '../../bloc/mobile_home_state.dart';

class TempleCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String distance;
  final bool isLive;

  const TempleCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.distance,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Temple Image
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.network(
                  image,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),


              const SizedBox(height: 6),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.semiBold(
                    context.screenWidth * 0.034,
                    color: AppColor.appBlack,
                  ),
                ),
              ),

              // Subtitle
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 3),
                child: Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.03,
                    color: AppColor.appBlack,
                  ),
                ),
              ),

              // Distance Row
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Icon(Icons.location_on, size: 16,
                        color: Colors.grey.shade700),
                    const SizedBox(width: 4),
                    Text(
                      distance,
                      style: AppTextStyle.regular(
                        context.screenWidth * 0.03,
                        color: AppColor.greycolor1,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // Live Now badge
          if (isLive)
            Positioned(child:
            Container(
              margin: const EdgeInsets.only(top: 8, left: 0),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.circle, color: Colors.white, size: 10),
                  SizedBox(width: 4),
                  Text(
                    "Live Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
              bottom: 30,
              left: 0,
            )

        ],
      ),
    );
  }
}


class TempleListSection extends StatelessWidget {
  const TempleListSection({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
  builder: (context, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            "Temples Near You",
            style: AppTextStyle.semiBold(
              context.screenWidth * 0.051,
              color: AppColor.appBlack,
            ),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 240,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 8,right: 8),
              itemCount:state.templeList.length,
              itemBuilder: (context,position){
                final temple = state.templeList[position];

                return  InkWell(
                  onTap: (){
                    BlocProvider.of<TempleDetailBloc>(context)
                        .add(LoadTempleDetail(temple));

                    Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL);
                  },
                  child: Padding(padding: EdgeInsets.only(left: 4,right: 4),child: TempleCard(
                    image:
                    "${temple.templeImage.isNotEmpty?temple.templeImage:"${temple.templeImage}"}",
                    title: "${temple.templeName}",
                    subtitle:  "${temple.state}",
                    distance: "N/A",
                    isLive: false,
                  ),),
                );
              }),
        ),
      ],
    );
  },
);
  }
}

