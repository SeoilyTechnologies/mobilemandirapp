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
import '../../../../../../common/utils/utils.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../bloc/complete_profile_bloc.dart';
import '../../bloc/complete_profile_event.dart';
import '../../bloc/complete_profile_state.dart';


class CompleteProfileMedium extends StatefulWidget {
  const CompleteProfileMedium({super.key});

  @override
  State<CompleteProfileMedium> createState() =>
      _CompleteProfileMediumState();
}

class _CompleteProfileMediumState
    extends State<CompleteProfileMedium> {

  final nameController = TextEditingController();
  final genderController = TextEditingController();
  final dobController = TextEditingController();
  final timeController = TextEditingController();

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
        // 🔴 Error
        if (state.isServerError && state.apiErrorMessage.isNotEmpty) {
          context.showCustomSnackbar(state.apiErrorMessage);
        }

        // ✅ Success
        if (state.isSuccess && state.updatedUser != null) {

          await getIt<SharedPrefs>().setModel(AppConstant.userModel, state.updatedUser!);
          await getIt<SharedPrefs>().setString(AppConstant.token, state.updatedUser!.token);

          BlocProvider.of<AppBloc>(context).add(UserDataUpdate());
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
                    "assets/new_design/background/ipad_login_background.png",

                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    top: context.screenHeight * 0.33,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: context.screenWidth * 0.04),
                      child: Container(
                        width: context.screenWidth,
                        height: context.screenHeight,
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
                          children: <Widget>[
                            /// Full Name
                            AppCommonFieldMedium(
                              label: context.l10n.fullName,
                              hint: context.l10n.enterFullName,
                              controller: nameController,
                              prefixAsset:
                              "assets/new_design/icon/mi_user.png",
                              fieldType: AppFieldType.text,
                              onChanged: (val) {
                                context.read<CompleteProfileBloc>().add(
                                  CompleteProfileEvent.nameChanged(val),
                                );
                              },
                            ),

                            const SizedBox(height: 10),

                            /// Gender
                            AppCommonFieldMedium(
                              label: context.l10n.gender,
                              hint: context.l10n.selectGender,
                              prefixAsset:
                              "assets/new_design/icon/mi_user.png",
                              controller: genderController,
                              fieldType: AppFieldType.dropdown,
                              dropdownItems: const [
                                "Male",
                                "Female",
                                "Other"
                              ],
                              onChanged: (val) {
                                context.read<CompleteProfileBloc>().add(
                                  CompleteProfileEvent.genderChanged(val),
                                );
                              },
                            ),

                            const SizedBox(height: 12),

                            /// DOB
                            AppCommonFieldMedium(
                              label: context.l10n.dob,
                              hint: context.l10n.selectDob,
                              controller: dobController,
                              prefixAsset:
                              "assets/new_design/icon/astro_one.png",
                              fieldType: AppFieldType.date,
                              onTap: () async {
                                DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime.now(),
                                  initialEntryMode: DatePickerEntryMode.calendarOnly,
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

                            // const SizedBox(height: 12),
                            //
                            // /// Birth Time
                            // AppCommonFieldMedium(
                            //   label: context.l10n.birthTime,
                            //   hint: context.l10n.selectTime,
                            //   prefixAsset:
                            //   "assets/new_design/icon/time.png",
                            //   controller: timeController,
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

                            /// Submit Button
                            PrimaryButtonMedium(
                              title: context.l10n.getStarted,
                              onTap: () {

                                FocusScope.of(context).unfocus();

                                final name = nameController.text.trim();
                                final gender = genderController.text.trim();


                                if (name.isEmpty ||
                                    gender.isEmpty ) {
                                  context.showCustomSnackbar(
                                    context.l10n.pleaseFillAllFields,
                                  );
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

                  /// Loader
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
