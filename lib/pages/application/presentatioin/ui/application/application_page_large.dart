import 'dart:ui';

import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/values_exports.dart';
import '../../bloc/app_bloc.dart';
import '../../bloc/app_state.dart';
import '../application_widget.dart';

class ApplicationPageLarge extends StatelessWidget {
  final ValueNotifier<bool> showDialogNotifier;

  ApplicationPageLarge({super.key, required this.showDialogNotifier});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final width = context.screenWidth;
    final height = context.screenHeight;

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          body: Stack(
            children: [
              buildPage(state.index),
              ValueListenableBuilder<bool>(
                valueListenable: showDialogNotifier,
                builder: (_, showDialog, __) =>
                    showDialog ? _buildDialogOverlay() : const SizedBox(),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.06,
                vertical: height * 0.02,
              ),
              child: Container(
                decoration: const BoxDecoration(
                 color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  currentIndex: state.index,
                  selectedItemColor: AppColor.activeTabColor,
                  unselectedItemColor: AppColor.appWhiteColor.withOpacity(0.6),
                  elevation: 0,
                  selectedLabelStyle: TextStyle(fontSize: width * 0.038),
                  unselectedLabelStyle: TextStyle(fontSize: width * 0.038),
                  type: BottomNavigationBarType.fixed,
                  onTap: (value) {
                    context.read<AppBloc>().add(TriggerAppEvent(value));
                  },
                  items: <BottomNavigationBarItem>[].bottomTabs(context, width, height),
                ),
              ),
            ),
          ),
        );
      },
    );
  }





  Widget _buildDialogOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(color: Colors.transparent),
      ),
    );
  }
}
