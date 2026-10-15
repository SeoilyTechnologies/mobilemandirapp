import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/component/app_common_filed.dart';
import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../component/primary_button.dart';
import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';
import '../../bloc/profile_state.dart';

import '../component/profile_header_card.dart';

class ProfielUiMedium extends StatefulWidget {
  const ProfielUiMedium({super.key});

  @override
  State<ProfielUiMedium> createState() => _ProfileUiStateMedium();
}

class _ProfileUiStateMedium extends State<ProfielUiMedium> {
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final genderController = TextEditingController();
  final dobController = TextEditingController();
  final timeController = TextEditingController();

  final FocusNode locationFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    /// 👇 Hide suggestion list when focus is lost
    locationFocusNode.addListener(() {
      if (!locationFocusNode.hasFocus) {
        context.read<ProfileBloc>().add(
          const ProfileEvent.showHideLocationList(false),
        );
      }
    });
  }

  @override
  void dispose() {
    locationFocusNode.dispose();
    nameController.dispose();
    locationController.dispose();
    genderController.dispose();
    dobController.dispose();
    timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.apiErrorMessage.isNotEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.apiErrorMessage)));
        }

        if (state.apiSuccessMessage.isNotEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(context.l10n.profileUpdatedSuccessfully)));
          context.read<AppBloc>().loadUserData();
          context.read<ProfileBloc>().add(ProfileEvent.updateName(state.name));
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        _fillControllers(state);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            backgroundColor: const Color(0xFFF6F7FB),
            appBar: MandirAppBar(
              title: context.l10n.editProfile,
              onBackTap: (){
                context.read<AppBloc>().loadUserData();
                Navigator.pop(context);
              },
            ),
            body: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom + 54,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// HEADER
                  ProfileHeaderCard(
                    profile: state.profile,
                    isEditing: false,
                  ),
                  const SizedBox(height: 18),

                  /// FULL NAME
                  AppCommonField(
                    label: context.l10n.fullName,
                    hint: context.l10n.enterFullName,
                    controller: nameController,
                    prefixAsset: "assets/new_design/icon/mi_user.png",
                    fieldType: AppFieldType.text,
                    onChanged: (val) {
                      context.read<ProfileBloc>().add(
                        ProfileEvent.updateName(val),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  /// GENDER
                  AppCommonField(
                    label: context.l10n.gender,
                    hint: context.l10n.selectGender,
                    controller: genderController,
                    prefixAsset: "assets/new_design/icon/mi_user.png",
                    fieldType: AppFieldType.dropdown,
                    dropdownItems: const ["Male", "Female", "Other"],
                    onChanged: (val) {
                      context.read<ProfileBloc>().add(
                        ProfileEvent.updateGender(val),
                      );
                    },
                  ),
                  const SizedBox(height: 12),

                  /// DOB
                  AppCommonField(
                    label: context.l10n.dob,
                    hint: context.l10n.selectDob,
                    controller: dobController,
                    prefixAsset: "assets/new_design/icon/astro_one.png",
                    fieldType: AppFieldType.date,
                    onTap: () async {
                      final picked = await showDatePicker(

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

                        context.read<ProfileBloc>().add(
                          ProfileEvent.dateOfBirthChanged(value),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 12),

                  /// BIRTH TIME
                  AppCommonField(
                    label: context.l10n.birthTime,
                    hint: context.l10n.selectTime,
                    controller: timeController,
                    prefixAsset: "assets/new_design/icon/time.png",
                    fieldType: AppFieldType.time,
                    onTap: () async {
                      final picked = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      if (picked != null) {
                        final value = picked.format(context);
                        timeController.text = value;

                        context.read<ProfileBloc>().add(
                          ProfileEvent.dateOfTimeChanged(value),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 24),

                  /// LOCATION
                  AppCommonField(
                    label: context.l10n.locationLabel,
                    hint: context.l10n.enterLocation,
                    controller: locationController,
                    focusNode: locationFocusNode,
                    prefixAsset: "assets/new_design/icon/new_location_icon.png",
                    fieldType: AppFieldType.text,
                    onChanged: (val) {
                      context.read<ProfileBloc>().add(
                        ProfileEvent.locationChanged(val),
                      );
                    },
                    onTap: () {
                      if (locationFocusNode.hasFocus) {
                        context.read<ProfileBloc>().add(
                          const ProfileEvent.showHideLocationList(true),
                        );
                      }
                    },
                  ),

                  /// LOCATION SUGGESTIONS
                  if (locationFocusNode.hasFocus &&
                      state.showHideLocationList &&
                      state.placeSuggestions.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.placeSuggestions.length > 5
                            ? 5
                            : state.placeSuggestions.length,
                        separatorBuilder: (_, __) =>
                        const Divider(height: 1),
                        itemBuilder: (context, index) {
                          final item = state.placeSuggestions[index];
                          return ListTile(
                            dense: true,
                            leading: const Icon(
                              Icons.location_on_outlined,
                              color: AppColor.primary,
                            ),
                            title: Text(
                              item['description'],
                              style: AppTextStyle.regular(14),
                            ),
                            onTap: () {
                              locationController.text =
                              item['description'];

                              context.read<ProfileBloc>().add(
                                ProfileEvent.selectLocation(
                                  description: item['description'],
                                  placeId: item['place_id'],
                                ),
                              );

                              locationFocusNode.unfocus();
                            },
                          );
                        },
                      ),
                    ),

                  const SizedBox(height: 24),

                  /// SAVE BUTTON
                  PrimaryButton(
                    title: context.l10n.saveChanges,
                    onTap: () {
                      FocusScope.of(context).unfocus();

                      final name = nameController.text.trim();
                      final gender = genderController.text.trim();
                      final dob = dobController.text.trim();
                      final time = timeController.text.trim();
                      final location = locationController.text.trim();

                      if (name.isEmpty ||
                          gender.isEmpty ||
                          dob.isEmpty ||
                          time.isEmpty ||
                          location.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(context.l10n.pleaseFillAllFields),
                          ),
                        );
                        return;
                      }
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.saveProfile(),
                      );
                    },
                  ),

                  if (state.isSaving) ...[
                    const SizedBox(height: 20),
                    const CircularProgressIndicator(),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _fillControllers(ProfileState state) {
    if (nameController.text.isEmpty) {
      nameController.text = state.name;
    }
    if (dobController.text.isEmpty) {
      dobController.text = state.dateOfBirth;
    }
    if (timeController.text.isEmpty) {
      timeController.text = state.birthTime;
    }
    if (genderController.text.isEmpty) {
      genderController.text = state.gender;
    }
    if (locationController.text.isEmpty) {
      locationController.text = state.location;
    }
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';
//
// import '../../../../../common/component/app_common_filed.dart';
// import '../../../../../common/component/app_text_style.dart';
// import '../../../../../common/local/SharedPrefs.dart';
// import '../../../../../common/network/app_constant.dart';
// import '../../../../../common/service_locator/setivelocator.dart';
// import '../../../../../common/values/app_color.dart';
// import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
// import '../../../../application/presentatioin/bloc/app_bloc.dart';
// import '../../../component/primary_button.dart';
// import '../../../user_profile_complete/presentation/bloc/complete_profile_bloc.dart';
// import '../../../user_profile_complete/presentation/bloc/complete_profile_event.dart';
// import '../bloc/profile_bloc.dart';
// import '../bloc/profile_event.dart';
// import '../bloc/profile_state.dart';
//
// import 'component/profile_header_card.dart';
// import 'component/profile_personal_info_card.dart';
//
// class ProfileUi extends StatelessWidget {
//   ProfileUi({super.key});
//
//   final nameController = TextEditingController();
//   final locationController = TextEditingController();
//   final genderController = TextEditingController();
//   final dobController = TextEditingController();
//   final timeController = TextEditingController();
//   final phoneController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ProfileBloc, ProfileState>(
//       listener: (context, state) {
//         if (state.apiErrorMessage.isNotEmpty) {
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(SnackBar(content: Text(state.apiErrorMessage)));
//         }
//         if (state.apiSuccessMessage.isNotEmpty) {
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(SnackBar(content: Text(state.apiSuccessMessage)));
//           BlocProvider.of<AppBloc>(context).loadUserData();
//         }
//       },
//       builder: (context, state) {
//         //   final bool isEditing = state.isEditing;
//
//         _fillControllers(state);
//
//         return Scaffold(
//           backgroundColor: const Color(0xFFF6F7FB),
//           appBar: MandirAppBar(
//             title: context.l10n.editProfile,
//             onBackTap: () => Navigator.pop(context),
//           ),
//           body: state.isLoading
//               ? const Center(child: CircularProgressIndicator())
//               : SingleChildScrollView(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     children: [
//                       ProfileHeaderCard(
//                         profile: state.profile,
//                         isEditing: false,
//                       ),
//                       const SizedBox(height: 18),
//
//                       /// ================= PERSONAL INFO =================
//                     SingleChildScrollView(
//                       child:   Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           /// Full Name
//                           AppCommonField(
//                             label: context.l10n.fullName,
//                             hint: context.l10n.enterFullName,
//                             controller: nameController,
//                             prefixAsset: "assets/new_design/icon/mi_user.png",
//                             fieldType: AppFieldType.text,
//                             onChanged: (val) {
//                               context.read<ProfileBloc>().add(
//                                 ProfileEvent.updateName(val),
//                               );
//                             },
//                           ),
//
//                           const SizedBox(height: 12),
//
//                           /// Gender
//                           AppCommonField(
//                             label: context.l10n.gender,
//                             hint: context.l10n.selectGender,
//                             prefixAsset: "assets/new_design/icon/mi_user.png",
//                             controller: genderController,
//                             fieldType: AppFieldType.dropdown,
//                             dropdownItems: const ["Male", "Female", "Other"],
//                             onChanged: (val) {
//                               context.read<ProfileBloc>().add(
//                                 ProfileEvent.updateGender(val),
//                               );
//                             },
//                           ),
//
//                           const SizedBox(height: 12),
//
//                           /// DOB
//                           AppCommonField(
//                             label: context.l10n.dob,
//                             hint: context.l10n.selectDob,
//                             controller: dobController,
//                             prefixAsset: "assets/new_design/icon/astro_one.png",
//                             fieldType: AppFieldType.date,
//                             onTap: () async {
//                               DateTime? picked = await showDatePicker(
//                                 context: context,
//                                 initialDate: DateTime.now(),
//                                 firstDate: DateTime(1950),
//                                 lastDate: DateTime.now(),
//                               );
//
//                               if (picked != null) {
//                                 final value =
//                                     "${picked.day.toString().padLeft(2, '0')}-"
//                                     "${picked.month.toString().padLeft(2, '0')}-"
//                                     "${picked.year}";
//
//                                 dobController.text = value;
//
//                                 context.read<ProfileBloc>().add(
//                                   ProfileEvent.dateOfBirthChanged(value),
//                                 );
//                               }
//                             },
//                           ),
//
//                           const SizedBox(height: 12),
//
//                           /// Birth Time
//                           AppCommonField(
//                             label: context.l10n.birthTime,
//                             hint: context.l10n.selectTime,
//                             prefixAsset: "assets/new_design/icon/time.png",
//                             controller: timeController,
//                             fieldType: AppFieldType.time,
//                             onTap: () async {
//                               TimeOfDay? picked = await showTimePicker(
//                                 context: context,
//                                 initialTime: TimeOfDay.now(),
//                               );
//
//                               if (picked != null) {
//                                 final value = picked.format(context);
//                                 timeController.text = value;
//
//                                 context.read<ProfileBloc>().add(
//                                   ProfileEvent.dateOfTimeChanged(value),
//                                 );
//                               }
//                             },
//                           ),
//
//                           const SizedBox(height: 24),
//                           /// Full Name
//                           AppCommonField(
//                             label: context.l10n.locationLabel,
//                             hint: context.l10n.enterLocation,
//                             controller: locationController,
//                             prefixAsset: "assets/new_design/icon/mi_user.png",
//                             fieldType: AppFieldType.text,
//                             onChanged: (val) {
//                               context.read<ProfileBloc>().add(
//                                 const ProfileEvent.showHideLocationList(true),
//                               );
//                             },
//
//                             onTap: () {
//                               context.read<ProfileBloc>().add(
//                                 const ProfileEvent.showHideLocationList(true),
//                               );
//                             },
//                           ),
//
//                           if (state.showHideLocationList && state.placeSuggestions.isNotEmpty)
//                             Container(
//                               margin: const EdgeInsets.only(top: 4),
//                               padding: const EdgeInsets.symmetric(vertical: 1),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(6),
//                                   bottomRight: Radius.circular(6),
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.1),
//                                     blurRadius: 6,
//                                   ),
//                                 ],
//                               ),
//                               child: ListView.separated(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 padding: EdgeInsets.zero,
//                                 itemCount: state.placeSuggestions.length > 5
//                                     ? 5
//                                     : state.placeSuggestions.length,
//
//                                 separatorBuilder: (_, __) => const Divider(height: 1),
//                                 itemBuilder: (context, index) {
//                                   final item = state.placeSuggestions[index];
//                                   return ListTile(
//                                     dense: true,
//                                     leading: const Icon(
//                                       Icons.location_on_outlined,
//                                       size: 20,
//                                       color: AppColor.primary,
//                                     ),
//                                     title: Text(
//                                       item['description'],
//                                       style: AppTextStyle.regular(14),
//                                     ),
//                                     onTap: () {
//                                       // Update text field
//                                       locationController.text = item['description'];
//
//                                       // Dispatch selection event
//                                       context.read<ProfileBloc>().add(
//                                         ProfileEvent.selectLocation(
//                                           description: item['description'],
//                                           placeId: item['place_id'],
//                                         ),
//                                       );
//
//                                       // Hide list
//                                       context.read<ProfileBloc>().add(
//                                         const ProfileEvent.showHideLocationList(false),
//                                       );
//                                     },
//                                   );
//                                 },
//                               ),
//                             ),
//                           /// Save Button
//                           PrimaryButton(
//                             title: context.l10n.saveChanges,
//                             onTap: () {
//                               FocusScope.of(context).unfocus();
//                               context.read<ProfileBloc>().add(
//                                 const ProfileEvent.saveProfile(),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//
//                       if (state.isSaving) ...[
//                         const SizedBox(height: 20),
//                         const CircularProgressIndicator(),
//                       ],
//                     ],
//                   ),
//                 ),
//         );
//       },
//     );
//   }
//
//   /// ================= FILL CONTROLLERS =================
//   void _fillControllers(ProfileState state) {
//     if (nameController.text.isEmpty) {
//       nameController.text = state.name;
//     }
//
//     if (dobController.text.isEmpty) {
//       dobController.text = state.dateOfBirth;
//     }
//
//     if (timeController.text.isEmpty) {
//       timeController.text = state.birthTime;
//     }
//
//     if (genderController.text.isEmpty) {
//       genderController.text = state.gender;
//     }
//   }
// }
