import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_bloc.dart';
import 'package:mandirapp/pages/auth/otp/presentation/bloc/otp_event.dart';
import 'package:mandirapp/pages/auth/signin/presentation/bloc/login_event.dart';
import 'package:mandirapp/pages/auth/signup/presentation/bloc/signup_state.dart';
import '../../../../../common/component/app_loader.dart';
import '../../../../../common/component/loading_indicator.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/values/app_color.dart';
import '../../../component/primary_button.dart';
import '../../../component/text_field.dart';
import '../bloc/signup_bloc.dart';
import '../bloc/signup_event.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final locationCtrl = TextEditingController();
  final dobCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confirmPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state.response.success == true) {
          BlocProvider.of<OtpBloc>(context).add(OtpEmailChanged(state.email));
          context.read<SignupBloc>().add(ApiResponseReset());
          Map<String, dynamic> statusMap = {
            "isFromCreateAccount": true,
            "email": state.email,
          };
          Navigator.pushNamed(context, AppRoutes.CONFIRMOTP, arguments: statusMap,);
          //context.read<SignupBloc>().add(SignUpMakeInitial());
          context.read<SignupBloc>().add(ApiResponseReset());
        }

        if (state.errorMessage.isNotEmpty) {
          context.showCustomSnackbar(
            state.errorMessage,
            backgroundColor: AppColor.appcolor,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  // child: SizedBox(
                  //   width: double.infinity,
                  //   height: 500,
                  //   child: Image.asset(
                  //     "assets/new_godimages/vb.gif",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      // child: SizedBox(
                      //   width: double.infinity,
                      //   height: 230,
                      //   child: Image.asset(
                      //     "assets/new_godimages/vb.gif",
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                    ),

                    // 👇 BACK BUTTON OVER IMAGE
                    Positioned(
                      top: 80,
                      left: 16,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SingleChildScrollView(padding: EdgeInsets.only(bottom: context.screenHeight*0.01),
                    child: Container(
                      width: context.screenWidth,
                      //height: context.screenHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(context.l10n.createAccount,
                                  style: AppTextStyle.regular(
                                    context.screenWidth * 0.043,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 18),

                            /// Name
                            CustomTextField(
                              controller: nameCtrl,
                              hint: context.l10n.fullName,
                              icon: Icons.person_outline,
                              onChanged: (value) {
                                context.read<SignupBloc>().add(
                                  SignupEvent.nameChanged(value),
                                );
                              },
                            ),
                            SizedBox(height: 15),

                            /// Email
                            CustomTextField(
                              controller: emailCtrl,
                              hint: "jon@gmail.com",
                              icon: Icons.email_outlined,
                              onChanged: (value) {
                                context.read<SignupBloc>().add(
                                  SignupEvent.emailChanged(value),
                                );
                              },
                            ),
                            // SizedBox(height: 15),
                            //
                            // /// Mobile
                            // CustomTextField(
                            //   controller: phoneCtrl,
                            //   hint: "+91 9876543210",
                            //   icon: Icons.phone_outlined,
                            //   onChanged: (value) {
                            //     context.read<SignupBloc>().add(
                            //       SignupEvent.phoneChanged(value),
                            //     );
                            //   },
                            // ),
                            SizedBox(height: 15),
                            CustomTextField(
                              controller: locationCtrl,
                              hint: context.l10n.locationLabel,
                              icon: Icons.location_on,
                              onChanged: (value) {
                                context.read<SignupBloc>().add(
                                  SignupEvent.locationChanged(value),
                                );
                              },
                              onTap: () {
                                context.read<SignupBloc>().add(
                                  const SignupEvent.showHideLocationList(true),
                                );
                              },
                            ),

                            if (state.showHideLocationList &&
                                state.placeSuggestions.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.only(top: 4),
                                padding: const EdgeInsets.symmetric(vertical: 1),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6)),
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
                                        context.read<SignupBloc>().add(
                                          SignupEvent.selectLocation(
                                            description: item['description'],
                                            placeId: item['place_id'],
                                          ),
                                        );

                                        // Hide list
                                        context.read<SignupBloc>().add(
                                          const SignupEvent.showHideLocationList(false),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),

                            SizedBox(height: 15),
                            /// Mobile
                            CustomTextField(
                              controller: dobCtrl,
                              hint: state.dateOfBirth.isEmpty
                                  ? "Select Date & Time of Birth"
                                  : state.dateOfBirth + " " + state.dateOfTime,
                              icon: Icons.calendar_today,
                              enableKeyboard: false,
                              onTap: () async {
                                // Step 1: Pick Date
                                final DateTime? pickedDate =
                                    await showDatePicker(
                                      context: context,
                                      initialDate: DateTime(2000),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime.now(),
                                    );

                                if (pickedDate != null) {
                                  // Step 2: Pick Time
                                  context.read<SignupBloc>().add(
                                    SignupEvent.dateOfBirthChanged(
                                      "${pickedDate.day}-${pickedDate.month}-${pickedDate.year} ",
                                    ),
                                  );
                                  final TimeOfDay? pickedTime =
                                      await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      );

                                  if (pickedTime != null) {
                                    final DateTime finalDateTime = DateTime(
                                      pickedTime.hour,
                                      pickedTime.minute,
                                    );

                                    context.read<SignupBloc>().add(
                                      SignupEvent.dateOfTimeChanged(
                                        "${pickedTime.hour}:${pickedTime.minute}",
                                      ),
                                    );
                                  }
                                }
                              },
                            ),
                            SizedBox(height: 15),
                            /// Gender Selection
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 6),child: Text(
                                  context.l10n.pleaseSelectGender,
                                  style: AppTextStyle.medium(
                                    context.screenWidth * 0.036,
                                    color: AppColor.appBlack,
                                  ),
                                ),),
                                SizedBox(height: 1),

                                Row(
                                  children: [
                                    /// Male Radio Button
                                    Radio<String>(
                                      value: context.l10n.male,
                                      groupValue: state.gender,
                                      activeColor: AppColor.primary,
                                      onChanged: (value) {
                                        context
                                            .read<SignupBloc>()
                                            .add(SignupEvent.genderChanged(value!));
                                      },
                                    ),
                                    Text(context.l10n.male, style: AppTextStyle.regular(15)),

                                    SizedBox(width: 20),

                                    /// Female Radio Button
                                    Radio<String>(
                                      value: context.l10n.female,
                                      groupValue: state.gender,
                                      activeColor: AppColor.primary,
                                      onChanged: (value) {
                                        context
                                            .read<SignupBloc>()
                                            .add(SignupEvent.genderChanged(value!));
                                      },
                                    ),
                                    Text(context.l10n.female, style: AppTextStyle.regular(15)),
                                  ],
                                ),
                              ],
                            ),

                            /// Password
                            CustomTextField(
                              controller: passwordCtrl,
                              hint: "••••••",
                              icon: Icons.lock_outline,
                              obscure: true,
                              onChanged: (value) {
                                context.read<SignupBloc>().add(
                                  SignupEvent.passwordChanged(value),
                                );
                              },
                            ),
                            SizedBox(height: 15),

                            /// Confirm Password
                            CustomTextField(
                              controller: confirmPasswordCtrl,
                              hint: context.l10n.confirmPassword,
                              icon: Icons.lock_outline,
                              obscure: true,
                              onChanged: (value) {
                                context.read<SignupBloc>().add(
                                  SignupEvent.confirmPasswordChanged(value),
                                );
                              },
                            ),


                            SizedBox(height: 25),

                            PrimaryButton(
                              title: context.l10n.createAccount,
                              onTap: () {
                                context.read<SignupBloc>().add(
                                  SignupEvent.signUpSubmitted(),
                                );
                              },
                            ),
                            SizedBox(height: 16),

                            Row(
                              children: [
                                Expanded(
                                  child: Divider(color: AppColor.border),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(context.l10n.or),
                                ),
                                Expanded(
                                  child: Divider(color: AppColor.border),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            //
                            // _socialButton(Icons.apple, "Sign up with Apple"),
                            // SizedBox(height: 12),
                            // _socialButton(
                            //   Icons.g_mobiledata,
                            //   "Sign up with Google",
                            // ),

                            SizedBox(height: 20),
                            Text(context.l10n.alreadyHaveAccount,
                              style: AppTextStyle.regular(
                                context.screenWidth * 0.032,
                                color: AppColor.hint,
                              ),
                            ),
                            SizedBox(height: 8),
                           GestureDetector(
                             onTap: (){
                               Navigator.pop(context);
                             },
                             child:  Text(context.l10n.signIn,
                               style: AppTextStyle.bold(
                                 context.screenWidth * 0.042,
                                 color: AppColor.primary,
                               ),
                             ),
                           )

                          //  SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                if (state.isLoading)
                  AppLoader.show(state.isLoading)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _socialButton(IconData icon, String label) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: AppColor.border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 26),
          SizedBox(width: 8),
          Text(label, style: AppTextStyle.medium(16, color: AppColor.appBlack)),
        ],
      ),
    );
  }
}
