import 'package:mandirapp/l10n/l10n_extension.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/values_exports.dart';
import '../../../../../sewa_module/select_category/ui/bloc/select_category_bloc.dart';
import '../../../../../sewa_module/select_category/ui/bloc/select_category_event.dart';
import '../../../../../sewa_module/select_category/ui/bloc/select_category_state.dart';
import '../../../../../sewa_module/select_category/ui/component/category_grid.dart';
import '../../../../../sewa_module/select_category/ui/component/multi_seva_hint.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/title_with_see_allbutton.dart';

class MobileHomeSewaPage extends StatelessWidget {
  const MobileHomeSewaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.newbackgroundColorHome,
      padding: EdgeInsets.only(left: 0, right: 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 18, bottom: 0),
            child: TitleWithSeeAllButton(
              title: context.l10n.selectCategory,
              showActionButton: false,
              actionText: context.l10n.seeAll,
              onActionTap: () {},
            ),
          ),

          BlocConsumer<MobileHomeBloc, MobileHomeState>(
            listener: (context, state) {
              if (state.errorMessage.isNotEmpty) {
                context.showCustomSnackbar(
                  state.errorMessage,
                  backgroundColor: AppColor.newsecondaruy,
                );
                return;
              }

              if (state.isProceedSuccess) {}
            },

            builder: (context, state) {
              return ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: Container(
                  color: AppColor.newbackgroundColorHome,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      /// 🔥 SAME COMPONENT (NO CHANGE)
                      SingleChildScrollView(
                        padding: EdgeInsets.all(1),
                        child: Column(
                          children: [
                            CategoryGrid(
                              selectedId: state.selectedCategory?.id,
                              onCategoryTap: (cat) {
                                if (context.requireLogin()) return;
                                context.read<MobileHomeBloc>().add(
                                  MobileHomeEvent.categorySelected(cat),
                                );
                                context.read<SevaPageBloc>().add(
                                  SevaPageEvent.getSewaPriceList(
                                    categoryId: cat.id,
                                    categoryName: cat.name,
                                    categoryDescription: cat.description??""
                                  ),
                                );

                                Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
                              },
                            ),

                            SizedBox(height: context.screenHeight * 0.1),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
