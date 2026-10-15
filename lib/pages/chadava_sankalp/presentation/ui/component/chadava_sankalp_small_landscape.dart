import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/sankalp_option_model.dart';
import '../../bloc/chadava_sankalp_bloc.dart';
import '../../bloc/chadava_sankalp_event.dart';
import '../../bloc/chadava_sankalp_state.dart';
import 'chadava_sankalp_bottom_button.dart';
import 'chadava_sankalp_header.dart';
import 'chadava_sankalp_option_card.dart';
import 'chadava_sankalp_weeks_selector.dart';

class ChadavaSankalpSmallLandscape extends StatelessWidget {
  const ChadavaSankalpSmallLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6EE),
      body: BlocBuilder<ChadavaSankalpBloc, ChadavaSankalpState>(
        builder: (context, state) {
          final isSankalp = state.selectedOption == SankalpOptionType.sankalp;
          final buttonText = 'Start Sankalp (${state.formattedTotalPrice})';

          return Column(
            children: [
              const ChadavaSankalpHeader(),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.w(24),
                    vertical: context.h(16),
                  ),
                  child: Column(
                    children: [
                      ChadavaSankalpOptionCard(
                        type: SankalpOptionType.ekBaar,
                        optionLabel: 'Option 1',
                        title: 'Ek baar',
                        subtitleText: '₹${state.baseOfferingPrice} · agle shanivaar',
                        basePrice: state.baseOfferingPrice,
                        isSelected:
                            state.selectedOption == SankalpOptionType.ekBaar,
                        onTap: () {
                          context.read<ChadavaSankalpBloc>().add(
                                const SelectSankalpOption(
                                    SankalpOptionType.ekBaar),
                              );
                        },
                      ),
                      SizedBox(height: context.h(16)),
                      ChadavaSankalpOptionCard(
                        type: SankalpOptionType.sankalp,
                        optionLabel: 'Option 2',
                        title: 'Sankalp',
                        subtitleText:
                            'Har shanivaar, chuni hui sankhya tak apne aap',
                        basePrice: state.baseOfferingPrice,
                        isSelected:
                            state.selectedOption == SankalpOptionType.sankalp,
                        isRecommended: true,
                        onTap: () {
                          context.read<ChadavaSankalpBloc>().add(
                                const SelectSankalpOption(
                                    SankalpOptionType.sankalp),
                              );
                        },
                      ),
                      if (isSankalp) ...[
                        SizedBox(height: context.h(20)),
                        ChadavaSankalpWeeksSelector(
                          weeksOptions: state.availableWeeks,
                          selectedWeeks: state.selectedWeeks,
                          onWeeksSelected: (weeks) {
                            context.read<ChadavaSankalpBloc>().add(
                                  SelectSankalpWeeks(weeks),
                                );
                          },
                        ),
                      ],
                      SizedBox(height: context.h(24)),
                    ],
                  ),
                ),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.w(24),
                    vertical: context.h(12),
                  ),
                  child: ChadavaSankalpBottomButton(
                    buttonText: buttonText,
                    onPressed: () {},
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
