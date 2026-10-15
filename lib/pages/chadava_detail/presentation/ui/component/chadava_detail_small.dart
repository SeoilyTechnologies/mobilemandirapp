import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/chadava_detail_bloc.dart';
import '../../bloc/chadava_detail_event.dart';
import '../../bloc/chadava_detail_state.dart';
import 'chadava_detail_continue_button.dart';
import 'chadava_detail_header.dart';
import 'chadava_kyun_karein_card.dart';
import 'chadava_offering_header.dart';
import 'chadava_offering_item_card.dart';

class ChadavaDetailSmall extends StatelessWidget {
  const ChadavaDetailSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6EE),
      body: BlocBuilder<ChadavaDetailBloc, ChadavaDetailState>(
        builder: (context, state) {
          if (state.isLoading || state.detailModel == null) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF793C01)),
            );
          }

          final detail = state.detailModel!;

          return Column(
            children: [
              // 1. Header
              ChadavaDetailHeader(title: detail.itemTitle),

              // 2. Scrollable Body
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: context.w(15)),
                  child: Column(
                    children: [
                      SizedBox(height: context.h(16)),

                      // "Kyun Karein" Card
                      ChadavaKyunKareinCard(
                        title: detail.kyunKareinTitle,
                        description: detail.kyunKareinDescription,
                        imageAsset: detail.imageAsset,
                      ),

                      SizedBox(height: context.h(20)),

                      // Section Title: "Select Chadava"
                      const ChadavaOfferingHeader(),

                      SizedBox(height: context.h(16)),

                      // Vertical List of Offering Cards
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: detail.offerings.length,
                        separatorBuilder: (context, index) => SizedBox(height: context.h(14)),
                        itemBuilder: (context, index) {
                          final offering = detail.offerings[index];
                          return ChadavaOfferingItemCard(
                            offering: offering,
                            onTap: () {
                              context.read<ChadavaDetailBloc>().add(
                                    SelectChadavaOffering(offering.id),
                                  );
                            },
                          );
                        },
                      ),

                      SizedBox(height: context.h(24)),

                      // Continue Button
                      ChadavaDetailContinueButton(
                        onPressed: () {
                          final selectedOffering = state.selectedOffering;
                          Navigator.pushNamed(
                            context,
                            AppRoutes.CHADAVA_SANKALP_PAGE,
                            arguments: {
                              'price': selectedOffering?.price ?? 101,
                              'title': selectedOffering?.title ?? 'Sarson ka tel',
                            },
                          );
                        },
                      ),

                      SizedBox(height: context.h(90)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
