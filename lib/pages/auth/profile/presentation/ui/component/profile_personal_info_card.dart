import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../component/text_field.dart';
import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';
import '../../bloc/profile_state.dart';
import 'gender_radio.dart';

class ProfilePersonalInfoCard extends StatelessWidget {
  final LoginResponse profile;
  final bool isEditing;
  final ProfileState state; // 👈 new

  final TextEditingController nameCtrl;
  final TextEditingController emailCtrl;
  final TextEditingController phoneCtrl;
  final TextEditingController dobCtrl;
  final TextEditingController locationCtrl;

  const ProfilePersonalInfoCard({
    super.key,
    required this.profile,
    required this.isEditing,
    required this.state,
    required this.nameCtrl,
    required this.emailCtrl,
    required this.phoneCtrl,
    required this.dobCtrl,
    required this.locationCtrl,
  });

  @override
  Widget build(BuildContext context) {
    final user = profile.user;

    // 🔹 current selectedGender ko BLoC state se lo
    final String selectedGender = context.select<ProfileBloc, String>(
      (bloc) => bloc.state.gender,
    );

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.personalInformation,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const SizedBox(height: 16),

          // Full Name
          _ProfileField(
            icon: Icons.person_outline,
            label: context.l10n.fullName,
            isEditing: isEditing,
            controller: nameCtrl,
            initialValue: user.username,
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter name' : null,
            onChanged: (value) {
              context.read<ProfileBloc>().add(ProfileEvent.updateName(value));
            },
          ),
          const SizedBox(height: 12),

          // Email
          _ProfileField(
            icon: Icons.email_outlined,
            label: context.l10n.emailAddress,
            isEditing: isEditing,
            controller: emailCtrl,
            initialValue: user.email,
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter email' : null,
            onChanged: (value) {
              context.read<ProfileBloc>().add(ProfileEvent.updateEmail(value));
            },
          ),
          const SizedBox(height: 12),

          // Phone
          _ProfileField(
            icon: Icons.phone_iphone,
            label: 'Phone Number',
            isEditing: isEditing,
            controller: phoneCtrl,
            initialValue: '433454353454',
            // TODO: backend se bind karo
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter phone' : null,
            onChanged: (value) {
              context.read<ProfileBloc>().add(ProfileEvent.updatePhone(value));
            },
          ),
          const SizedBox(height: 12),

          _ProfileField(
            icon: Icons.calendar_today,
            label: 'Date of Birth',
            isEditing: isEditing,
            controller: dobCtrl,
            initialValue: '05-12-2014',
            // TODO: user.date_of_birth
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter date' : null,
            onTap: () async {
              // Step 1: Pick Date
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime(2000),
                firstDate: DateTime(1950),
                lastDate: DateTime.now(),
              );

              if (pickedDate != null) {
                // Step 2: Pick Time
                context.read<ProfileBloc>().add(
                  ProfileEvent.dateOfBirthChanged(
                    "${pickedDate.day}-${pickedDate.month}-${pickedDate.year} ",
                  ),
                );
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null) {
                  final DateTime finalDateTime = DateTime(
                    pickedTime.hour,
                    pickedTime.minute,
                  );

                  context.read<ProfileBloc>().add(
                    ProfileEvent.dateOfTimeChanged(
                      "${pickedTime.hour}:${pickedTime.minute}",
                    ),
                  );
                }
              }
            },
            onChanged: (value) {
              context.read<ProfileBloc>().add(ProfileEvent.updateDOB(value));
            },
          ),
          const SizedBox(height: 12),

          // Location
          _ProfileField(
            icon: Icons.location_on_outlined,
            label: 'Location',
            isEditing: isEditing,
            controller: locationCtrl,
            initialValue: 'sdflkjsadfkl LL sdkjdskjndfdsfdsfd',
            // TODO: backend
            validator: (v) => (v == null || v.trim().isEmpty)
                ? 'Please enter location'
                : null,

            onChanged: (value) {
              context.read<ProfileBloc>().add(
                ProfileEvent.locationChanged(value),
              );
            },
            onTap: () {
              context.read<ProfileBloc>().add(
                const ProfileEvent.showHideLocationList(true),
              );
            },
          ),

          if (state.showHideLocationList && state.placeSuggestions.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.symmetric(vertical: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
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
                padding: EdgeInsets.zero,
                itemCount: state.placeSuggestions.length > 5
                    ? 5
                    : state.placeSuggestions.length,

                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final item = state.placeSuggestions[index];
                  return ListTile(
                    dense: true,
                    leading: const Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: AppColor.primary,
                    ),
                    title: Text(
                      item['description'],
                      style: AppTextStyle.regular(14),
                    ),
                    onTap: () {
                      // Update text field
                      locationCtrl.text = item['description'];

                      // Dispatch selection event
                      context.read<ProfileBloc>().add(
                        ProfileEvent.selectLocation(
                          description: item['description'],
                          placeId: item['place_id'],
                        ),
                      );

                      // Hide list
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.showHideLocationList(false),
                      );
                    },
                  );
                },
              ),
            ),
          const SizedBox(height: 16),

          /// 🔹 GENDER SECTION
          Text(
            'Gender',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),

          GenderRow(isEditing: isEditing, selectedGender: state.gender),
        ],
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isEditing;
  final TextEditingController controller;
  final String initialValue;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap; // 👈 NEW (optional)

  const _ProfileField({
    required this.icon,
    required this.label,
    required this.isEditing,
    required this.controller,
    required this.initialValue,
    this.validator,
    this.onChanged,
    this.onTap, // 👈 optional
  });

  @override
  Widget build(BuildContext context) {
    // Controller empty ho to initial value set karo
    if (controller.text.isEmpty) {
      controller.text = initialValue;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 18, color: Colors.orange),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          enabled: isEditing,
          readOnly: !isEditing,
          validator: isEditing ? validator : null,
          onChanged: isEditing ? onChanged : null,
          onTap: isEditing ? onTap : null,
          // 👈 yahan pass kiya
          style: const TextStyle(fontSize: 14, color: Colors.black87),
          decoration: InputDecoration(
            filled: true,
            fillColor: !isEditing ? const Color(0xFFF5F6FA) : Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}
