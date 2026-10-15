import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/chadava_detail_bloc.dart';
import '../../bloc/chadava_detail_event.dart';
import '../../bloc/chadava_detail_state.dart';
import 'chadava_detail_continue_button.dart';
import 'chadava_detail_header.dart';
import 'chadava_kyun_karein_card.dart';
import 'chadava_offering_header.dart';
import 'chadava_offering_item_card.dart';

class ChadavaDetailMediumLandscape extends StatelessWidget {
  const ChadavaDetailMediumLandscape({super.key});

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
              ChadavaDetailHeader(title: detail.itemTitle),
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 820),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: context.w(24)),
                      child: Column(
                        children: [
                          SizedBox(height: context.h(18)),
                          ChadavaKyunKareinCard(
                            title: detail.kyunKareinTitle,
                            description: detail.kyunKareinDescription,
                            imageAsset: detail.imageAsset,
                          ),
                          SizedBox(height: context.h(20)),
                          const ChadavaOfferingHeader(),
                          SizedBox(height: context.h(16)),
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
                          SizedBox(height: context.h(22)),
                          ChadavaDetailContinueButton(
                            onPressed: () {},
                          ),
                          SizedBox(height: context.h(80)),
                        ],
                      ),
                    ),
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
