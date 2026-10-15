import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';

import '../bloc/seva_page_bloc.dart';
import '../bloc/seva_page_state.dart';
import 'component/header/header_small.dart';
import 'component/sewa_donation/sewa_docation_card.dart';

class SevaPageUi extends StatelessWidget {
  const SevaPageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const SevaPageUiSmall();
  }
}

class SevaPageUiSmall extends StatelessWidget {
  const SevaPageUiSmall({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();

    return BlocBuilder<SevaPageBloc, SevaPageState>(
      builder: (context, state) {
        final isHindi = Localizations.localeOf(context).languageCode == 'hi';
        final sevaData = state.sewaPageApiResponse.data;
        final displayName = isHindi && sevaData.nameHi.isNotEmpty
            ? sevaData.nameHi
            : (sevaData.name.isNotEmpty
                ? sevaData.name
                : (sevaData.nameEn.isNotEmpty
                    ? sevaData.nameEn
                    : (state.categoryName.isNotEmpty ? state.categoryName : 'Gau Seva')));

        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    HeaderSeva(
                      title: displayName,
                      video: state.sewaPageApiResponse.data.video,
                      image: state.sewaPageApiResponse.data.icon,
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: state.isLoading
                          ? const SizedBox.shrink()
                          : const GauSevaDonationCard(),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              if (state.isLoading)
                const Center(child: CircularProgressIndicator()),
            ],
          ),
        );
      },
    );
  }
}

class SevaPageUiMedium extends StatelessWidget {
  const SevaPageUiMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return const SevaPageUiSmall();
  }
}