import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/component/app_common_filed.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../component/primary_button.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';

import 'component/profile_header_card.dart';

class ProfileUiLarge extends StatefulWidget {
  const ProfileUiLarge({super.key});

  @override
  State<ProfileUiLarge> createState() => _ProfileUiStateLarge();
}

class _ProfileUiStateLarge extends State<ProfileUiLarge> {
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
              onBackTap: () {
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
                          hint: "Enter full name",
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
                          hint: "Select gender",
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
                          hint: "Select date of birth",
                          controller: dobController,
                          prefixAsset: "assets/new_design/icon/astro_one.png",
                          fieldType: AppFieldType.date,
                          onTap: () async {
                            final picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime.now(),
                              initialEntryMode:
                                  DatePickerEntryMode.calendarOnly,
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
                          hint: "Select time",
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
                          label: context.l10n.location,
                          hint: "Enter location",
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
                          title: context.l10n.save,
                          onTap: () {
                            final profileBloc = context.read<ProfileBloc>();
                            final messenger = ScaffoldMessenger.of(context);
                            FocusManager.instance.primaryFocus?.unfocus();

                            final name = nameController.text.trim();
                            final gender = genderController.text.trim();
                            final dateOfBirth = dobController.text.trim();
                            final birthTime = timeController.text.trim();
                            final location = locationController.text.trim();

                            if (name.isEmpty ||
                                gender.isEmpty ||
                                dateOfBirth.isEmpty ||
                                birthTime.isEmpty ||
                                location.isEmpty) {
                              _showProfileSnackbar(
                                messenger,
                                context.l10n.pleaseFillAllMandatoryFields,
                              );
                              return;
                            }
                            final profileState = profileBloc.state;

                            if (profileState.latitidue.isEmpty ||
                                profileState.longitude.isEmpty) {
                              _showProfileSnackbar(
                                messenger,
                                context.l10n.pleaseSelectLocationFromSuggestionList,
                              );
                              return;
                            }
                            profileBloc.add(const ProfileEvent.saveProfile());
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

  void _showProfileSnackbar(ScaffoldMessengerState messenger, String message) {
    messenger.clearSnackBars();
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.up,
      ),
    );
  }
}
