import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_common_filed.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/component/primary_button.dart';

import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../../../../../common/utils/date_time_helper.dart';
import '../../../../../../common/utils/utils.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';

import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../../../sant/presentation/bloc/sant_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../../profile/presentation/bloc/profile_event.dart';
import '../../../../signin/data/entity/login_response.dart';
import '../../bloc/complete_profile_bloc.dart';
import '../../bloc/complete_profile_event.dart';
import '../../bloc/complete_profile_state.dart';


class CompleteProfileSmall extends StatefulWidget {
  const CompleteProfileSmall({super.key});

  @override
  State<CompleteProfileSmall> createState() => _CompleteProfileSmallState();
}

class _CompleteProfileSmallState extends State<CompleteProfileSmall> {

  late TextEditingController nameController;
  late TextEditingController genderController;
  late TextEditingController dobController;
  late TextEditingController timeController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    genderController = TextEditingController();
    dobController = TextEditingController();
    timeController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    genderController.dispose();
    dobController.dispose();
    timeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompleteProfileBloc, CompleteProfileState>(
      listener: (context, state) async {

        if (state.isServerError && state.apiErrorMessage.isNotEmpty) {
          context.showCustomSnackbar(state.apiErrorMessage);
        }

        if (state.isSuccess && state.updatedUser != null) {
          await getIt<SharedPrefs>()
              .setModel(AppConstant.userModel, state.updatedUser!);
          await getIt<SharedPrefs>()
              .setString(AppConstant.token, state.updatedUser!.token);

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(
            const MobileHomeEvent.getRewardOverView(),
          );
          BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetTithiList());
          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const MobileHomeEvent.getHomeForYouData(type: "aartibhajan"));

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const GetCategoriesList());

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const CurrentDetectLocation());

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const GetPopularTempleList(false));

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const GetHomeTempleDataList(false));

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const GetPopularGodList(false));



          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const MobileHomeEvent.getNewGodData(false));


          /// Check Location Permission
          BlocProvider.of<MobileHomeBloc>(context).add(HomeGetBanner());
          BlocProvider.of<AppBloc>(context).add(ForceUpdateEvent());

          /// Permission granted → Call API
          // Navigator.pushNamed(context, AppRoutes.LRC_GENERATE);
          /// Load initial data
          final prefs = getIt<SharedPrefs>();

          final token = await prefs.getString(AppConstant.token);
          final LoginResponse? userData = prefs.getModel<LoginResponse>(
            AppConstant.userModel,
                (json) => LoginResponse.fromJson(json),
          );

          final now = DateTime.now();

          BlocProvider.of<MobileHomeBloc>(context).add(
            MobileHomeEvent.getCalendarEvent(
              month: now.month,
              year: now.year,
            ),
          );



          context.read<MobileHomeBloc>().add(
            MobileHomeEvent.selectDate(
              selectedDate: now,
              focusedDate: now,
            ),
          );

          context.read<MobileHomeBloc>().add(
            MobileHomeEvent.getCalendarEvent(
              month: now.month,
              year: now.year,
            ),
          );

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(MobileHomeEvent.getSantList());
          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(MobileHomeEvent.getYoutubePlaylistVideos());

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const HomeGetNextThreeDayAarti());

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(MobileHomeEvent.getYoutubePlaylistVideos());

          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(const MobileHomeEvent.loadPanchang());
          BlocProvider.of<MobileHomeBloc>(
            context,
          ).add(GetDayAccordingAartiChalisa(type: "all"));

          BlocProvider.of<AartiChalisaLsitBloc>(
            context,
          ).add(GetFestivalList());
          BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetGodList());
          BlocProvider.of<AartiChalisaLsitBloc>(
            context,
          ).add(GetAartiChalisaByType("aarti"));
          BlocProvider.of<AartiChalisaLsitBloc>(
            context,
          ).add(RelatedGetAartiChalisaByType("aarti"));
          BlocProvider.of<AartiChalisaLsitBloc>(
            context,
          ).add(StoreType("aarti"));

          BlocProvider.of<JaapHistoryBloc>(context).add(const LoadHistory());

          BlocProvider.of<SantBloc>(context).add(SantEvent.started());

          BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));

          // BlocProvider.of<JaapBloc>(context).add(JaapEvent.getMantra(""));

          BlocProvider.of<JaapBloc>(context).add(JaapEvent.getGodData());

          BlocProvider.of<AppBloc>(context).add(UserDataUpdate());

          BlocProvider.of<WishlistBloc>(
            context,
          ).add(GetWishlist(userId: "${userData!.user.id}"));
          BlocProvider.of<JaapBloc>(
            context,
          ).add(GetWishlistMantra(userId: "${userData!.user.id}"));

          BlocProvider.of<ProfileBloc>(
            context,
          ).add(const ProfileEvent.loadProfile());
          BlocProvider.of<MobileHomeBloc>(context).add(HomeMantra("mantra"));




          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.APPLICATION,
                (route) => false,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/new_design/background/login_background.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: context.screenHeight * 0.26,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: context.screenWidth * 0.04),
                      child: Container(
                        padding: EdgeInsets.only(
                          top: context.screenWidth * 0.085,
                          left: 14,
                          right: 14,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/new_design/background/background_login_shiv.jpg",
                            ),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            /// Full Name
                            AppCommonField(
                              label: context.l10n.fullName,
                              hint: context.l10n.enterFullName,
                              controller: nameController,
                              prefixAsset: "assets/new_design/icon/mi_user.png",
                              fieldType: AppFieldType.text,
                              onChanged: (val) {
                                context.read<CompleteProfileBloc>().add(
                                  CompleteProfileEvent.nameChanged(val),
                                );
                              },
                            ),

                            const SizedBox(height: 16),

                            /// Gender
                            AppCommonField(
                              label: context.l10n.gender,
                              hint: context.l10n.selectGender,
                              controller: genderController,
                              prefixAsset: "assets/new_design/icon/mi_user.png",
                              fieldType: AppFieldType.dropdown,
                              dropdownItems: const ["Male", "Female", "Other"],
                              onChanged: (val) {
                                context.read<CompleteProfileBloc>().add(
                                  CompleteProfileEvent.genderChanged(val),
                                );
                              },
                            ),

                            const SizedBox(height: 16),

                            /// DOB
                            AppCommonField(
                              label: context.l10n.dob,
                              hint: context.l10n.selectDob,
                              controller: dobController,
                              prefixAsset: "assets/new_design/icon/astro_one.png",
                              fieldType: AppFieldType.date,
                              onTap: () async {
                                DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime.now(),
                                );

                                if (picked != null) {
                                  final value =
                                      "${picked.day.toString().padLeft(2, '0')}-"
                                      "${picked.month.toString().padLeft(2, '0')}-"
                                      "${picked.year}";
                                  dobController.text = value;

                                  context.read<CompleteProfileBloc>().add(
                                    CompleteProfileEvent.dobChanged(value),
                                  );
                                }
                              },
                            ),

                            // const SizedBox(height: 16),
                            //
                            // /// Birth Time
                            // AppCommonField(
                            //   label: context.l10n.birthTime,
                            //   hint: context.l10n.selectTime,
                            //   controller: timeController,
                            //   prefixAsset: "assets/new_design/icon/time.png",
                            //   fieldType: AppFieldType.time,
                            //   onTap: () async {
                            //     TimeOfDay? picked = await showTimePicker(
                            //       context: context,
                            //       initialTime: TimeOfDay.now(),
                            //     );
                            //
                            //     if (picked != null) {
                            //       final value = picked.format(context);
                            //       timeController.text = value;
                            //
                            //       context.read<CompleteProfileBloc>().add(
                            //         CompleteProfileEvent.timeChanged(value),
                            //       );
                            //     }
                            //   },
                            // ),

                            const SizedBox(height: 24),

                            PrimaryButton(
                              title: context.l10n.getStarted,
                              onTap: () {
                                FocusScope.of(context).unfocus();


                                if (nameController.text.trim().isEmpty ||
                                    genderController.text.trim().isEmpty) {
                                  context.showCustomSnackbar(context.l10n.pleaseFillAllFields);
                                  return;
                                }
                                /// Name validation
                                final RegExp nameRegex = RegExp(r'^[a-zA-Z\s]+$');
//"Name should contain only alphabets.",
                                if (!nameRegex.hasMatch(nameController.text.trim())) {
                                  context.showCustomSnackbar("Name should contain only alphabets.");
                                  return;
                                }
                                context.read<CompleteProfileBloc>().add(
                                  const CompleteProfileEvent.submitProfile(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  if (state.isLoading)
                    const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}