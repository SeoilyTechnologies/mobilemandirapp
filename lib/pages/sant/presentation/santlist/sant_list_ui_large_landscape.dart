import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_list_card.dart';
import 'package:mandirapp/pages/sant/presentation/santlist/sant_wishlist_actions.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../mobile_mandir_home/presentation/ui/component/search_bar_widget.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/home_header.dart';
import '../../../mobile_mandir_home/presentation/ui/updated_component/sant_card.dart';
import '../bloc/sant_bloc.dart';
import 'alphabet_picker.dart';

class SantListUiLargeLandscape extends StatelessWidget {
  const SantListUiLargeLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {
        if (state.errorMessage.isNotEmpty) {
          context.showCustomSnackbar("${state.errorMessage}");
        }
      },
      builder: (context, state) {
        final santList = state.santListResponse.data;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              /// 🔥 HEADER (Gradient)
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColor.gold, AppColor.goldDark],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SafeArea(
                        bottom: false,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (Navigator.canPop(context)) {
                                  Navigator.pop(context);
                                } else {
                                  context.read<AppBloc>().add(
                                    TriggerAppEvent(0),
                                  );
                                }
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 12,
                                  color: AppColor.newsecondaruy,
                                ),
                              ),
                            ),
                            Text(context.l10n.sant,
                              style: AppTextStyle.gilroyBold(
                                context.screenWidth * 0.042,
                                color: AppColor.appWhiteColor,
                              ),
                            ),
                            const SizedBox(width: 26),
                          ],
                        ),
                      ),

                      SizedBox(height: context.screenHeight * 0.01),
                      SantSearchBarWidgettLargeLandScape(),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),

              /// 🔤 Alphabet Picker
              SliverToBoxAdapter(
                child: AlphabetPickerLargeLandScape(
                  title: context.l10n.nameDirectory,
                  selectedValue: state.selectedLetter,
                  onSelected: (value) {
                    context.read<SantBloc>().add(
                      SantEvent.filterByAlphabet(value),
                    );
                  },
                  onClear: () {
                    context.read<SantBloc>().add(
                      const SantEvent.getAllSantList(),
                    );
                  },
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 8)),

              /// ⏳ Loader
              if (state.isLoading)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),

              /// 📜 Sant List (MAIN SCROLL)
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final data = state.santListResponse.data[index];
                  return GestureDetector(
                    onTap: () {
                      context.read<SantBloc>().add(
                        SantEvent.getSantDetailById(data.id),
                      );
                      Navigator.pushNamed(context, AppRoutes.SANTDETAIL);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SantListCardLargeLandScape(
                        location: data.city + ", " + data.state ?? "",
                        imageUrl: data.image ?? "",
                        name: data.name ?? "",
                        tags: data.designation ?? "",
                        isFavorite: data.isAddedInWishlist,
                        onFavTap: () =>
                            toggleSantListWishlist(context, data),
                      ),
                    ),
                  );
                }, childCount: state.santListResponse.data.length),
              ),

              /// Bottom space
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
        );
      },
    );
  }
}
