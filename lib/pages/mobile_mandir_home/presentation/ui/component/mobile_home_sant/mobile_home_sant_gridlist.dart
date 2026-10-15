import 'dart:async';
import '../../../../../../common/component/skeleton_loader.dart';

import 'package:flutter/material.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/sant_card.dart';

import '../../../../../../common/routes/exports.dart';

import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'mobile_home_sant_card.dart' hide SaintCardMedium;


class MobileHomeSantGridlist extends StatelessWidget {
  MobileHomeSantGridlist({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return MobileHomeSantGridlistSmall();
    } else if (context.isMediumScreen) {
      return MobileHomeSantGridlistMedium();
    } else {
      return MobileHomeSantGridlistMedium();
    }
  }
}



class MobileHomeSantGridlistSmall extends StatelessWidget {
  const MobileHomeSantGridlistSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return Container(
          child: state.isLoading
              ? const SkeletonListView(itemCount: 4)
              : ListView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.santListResponse.data.length,
            itemBuilder: (context, index) {
              final data= state.santListResponse.data[index];
              return
                GestureDetector(
                    onTap: () {
                      context.read<SantBloc>().add(
                        SantEvent.getSantDetailById(
                          data.id,
                        ),
                      );
                      Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                    },
                    child:
                    Padding(padding: EdgeInsets.only(
                        left: 16,right: 16,
                        bottom: 3,top: 3

                    ),
                      child: SaintCard(
                        onFavoriteTap: () {
                          if (context.requireLogin()) return;

                          BlocProvider.of<MobileHomeBloc>(
                            context,
                          ).add(SantWishlistHomeEvent(itemModel: "sant", itemId: data.id));
                        },
                        isFavorite: data.isAddedInWishlist,
                        imagePath: data.image,
                        name: data.name,
                        subtitle: "",
                      ),
                    ));
              //   GestureDetector(
              //   onTap: () {
              //     context.read<SantBloc>().add(
              //       SantEvent.getSantDetailById(
              //         state.santListResponse.data[index].id,
              //       ),
              //     );
              //     Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
              //   },
              //   child: MobileHomeSantCard(
              //     isFavorite: state.santListResponse.data[index].isAddedInWishlist,
              //     onFavoriteTap: () {
              //       if (context.requireLogin()) return;
              //       context.read<MobileHomeBloc>().add(
              //         MobileHomeEvent.santToggleWishlist(
              //           itemId: state.santListResponse.data[index].id,
              //           itemModel: "sant",
              //         ),
              //       );
              //     },
              //     imagePath: state.santListResponse.data[index].image,
              //     name: state.santListResponse.data[index].name,
              //     subtitle: "${state.santListResponse.data[index].about}",
              //   ),
              // );
            },
          ),
        );
      },
    );
  }
}


class MobileHomeSantGridlistMedium extends StatelessWidget {
  const MobileHomeSantGridlistMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileHomeBloc, MobileHomeState>(
      builder: (context, state) {
        return Container(
          child: state.isLoading
              ? const SkeletonListView(itemCount: 4)
              : ListView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.santListResponse.data.length,
            itemBuilder: (context, index) {
              return
                GestureDetector(
                  onTap: () {
                    context.read<SantBloc>().add(
                      SantEvent.getSantDetailById(
                        state.santListResponse.data[index].id,
                      ),
                    );
                    Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                  },

                 child:  Padding(padding: EdgeInsets.only(
                     left: 16,right: 16,
                     bottom: 3,top: 3

                 ),
                   child: SaintCardMedium(
                     isFavorite: state.santListResponse.data[index].isAddedInWishlist,
                     onFavoriteTap: () {
                       if (context.requireLogin()) return;
                       context.read<MobileHomeBloc>().add(
                         MobileHomeEvent.santToggleWishlist(
                           itemId: state.santListResponse.data[index].id,
                           itemModel: "sant",
                         ),
                       );
                     },
                     imagePath: state.santListResponse.data[index].image,
                     name: state.santListResponse.data[index].name,
                     subtitle: "${state.santListResponse.data[index].about}",
                   ),
                 ),
                );
            },
          ),
        );
      },
    );
  }
}
