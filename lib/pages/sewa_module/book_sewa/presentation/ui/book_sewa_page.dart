import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:mandirapp/pages/sewa_module/thankyou_seva/presentation/bloc/thankyou_sewa_page_event.dart';

import '../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../common/analytics/facebook_events.dart';
import '../../../../../common/component/mm_vendor_appbar.dart';
import '../../../../../common/component/sewa_text_field.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../../auth/component/primary_button.dart';
import '../../../thankyou_seva/presentation/bloc/thankyou_sewa_page_bloc.dart';
import '../../bloc/book_sewa_page_bloc.dart';
import '../../bloc/book_sewa_page_event.dart';
import '../../bloc/book_sewa_page_state.dart';
import 'componenrt/payment_summary_card.dart';

class BookSewaPage extends StatelessWidget {
  BookSewaPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return BookSewaPageSmall();
    } else if (context.isMediumScreen) {
      return BookSewaPageMedium();
    } else {
      return BookSewaPageMedium();
    }
  }
}

class BookSewaPageSmall extends StatefulWidget {
  const BookSewaPageSmall({super.key});

  @override
  State<BookSewaPageSmall> createState() => _BookSewaPageSmallState();
}

class _BookSewaPageSmallState extends State<BookSewaPageSmall> {
  late final TextEditingController _ownerName;
  late final TextEditingController _donatingOnBehalf;
  late final TextEditingController _personalMessage;

  bool _isNameInitialized = false;

  @override
  void dispose() {
    _ownerName.dispose();
    _donatingOnBehalf.dispose();
    _personalMessage.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _ownerName = TextEditingController();
    _donatingOnBehalf = TextEditingController();
    _personalMessage = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final defaultName =
          context.read<AppBloc>().state?.userdata?.user?.username ?? "";

      _ownerName.text = defaultName;

      context.read<BookSewaPageBloc>().add(
        BookSewaPageEvent.changeName(userName: defaultName),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookSewaPageBloc, BookSewaPageState>(
      listenWhen: (previous, current) =>
          previous.isOrderSuccess != current.isOrderSuccess ||
          (previous.errorMessage != current.errorMessage &&
              current.errorMessage.isNotEmpty),
      listener: (context, state) {
        if (state.isOrderSuccess) {
          final orderData = state.orderSaveApiResponse.data;

          final amount = orderData.pricing.formattedGrossAmount.isNotEmpty
              ? orderData.pricing.formattedGrossAmount
              : state.priceTaxApiResponse.data.formattedGrossAmount;

          context.read<ThankyouSewaPageBloc>().add(
            GetThankyou(id: orderData!.sevaId),
          );

          Navigator.pushReplacementNamed(
            context,
            AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
          );
          FacebookAnalytics.logEvent(
            FacebookEvents.sewaCompleted,
            parameters: {
              "value": amount,
              "currency": "INR",
              "sewa_type": "${state.catName}",
              "seva_id": "${orderData!.sevaId}",
            },
          );
          return;
        }

        if (state.errorMessage.isNotEmpty) {
          context.showCustomSnackbar(state.errorMessage);
        }
      },
      builder: (context, state) {
        // if (!_isNameInitialized) {
        //   _isNameInitialized = true;
        //
        //   final defaultName =
        //       context.read<AppBloc>().state?.userdata?.user?.username ?? "";
        //
        //   _ownerName.text = defaultName;
        //
        //   context.read<BookSewaPageBloc>().add(
        //     BookSewaPageEvent.changeName(userName: defaultName),
        //   );
        // }

        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          body: Stack(
            children: [
              SizedBox(
                height: context.screenHeight,
                width: context.screenWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// HEADER
                      Container(
                        width: double.infinity,
                        height: context.screenHeight * 0.15,
                        padding: const EdgeInsets.only(top: 10, bottom: 14),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/background_image/gradient_background.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: MmVendorAppbar(
                          title: context.l10n.personalMessage,
                          onBackTap: () {
                            FocusScope.of(context).unfocus();
                            context.read<AppBloc>().loadUserData();
                            Navigator.pop(context);
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            SizedBox(height: context.screenHeight * 0.025),

                            SevaTextField(
                              label: context.l10n.yourNameInVideo,
                              hint: '',
                              controller: _ownerName,
                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changeName(userName: v),
                                );
                              },
                            ),

                            SizedBox(height: context.screenHeight * 0.025),

                            SevaTextField(
                              label: context.l10n.donatingOnBehalfOf,
                              hint: context.l10n.donatingOnBehalfHint,
                              controller: _donatingOnBehalf,
                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changeDonationOnBehalf(
                                    donationOnBehalfof: v,
                                  ),
                                );
                              },
                            ),

                            SizedBox(height: context.screenHeight * 0.025),

                            SevaTextField(
                              label: context.l10n.personalMessage,
                              hint:
                              context.l10n.personalMessageHint,
                              controller: _personalMessage,
                              maxLines: 3,
                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changePersonalMessage(
                                    personalMessage: v,
                                  ),
                                );
                              },
                            ),

                            SizedBox(height: context.screenHeight * 0.025),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/background_image/multiple_selection_background.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                              context.l10n.howYourVideoWillSound,
                                    style: AppTextStyle.gilroySemiBold(
                                      context.screenWidth * 0.0426,
                                      color: AppColor.goldDark,
                                    ),
                                  ),
                                  Text(
                                    "${context.l10n.namaskarVideoScript} "
                                        "${state.userName.isEmpty
                                        ? (context.read<AppBloc>().state?.userdata?.user?.username ?? "")
                                        : state.userName.trim()}, "
                                        "${context.l10n.aajHum} "
                                        "${state.priceTaxApiResponse.data.formattedVendorAmount} "
                                        "ka ${state.catName} "
                                        "${context.l10n.kaDaan}",
                                    style: AppTextStyle.gilroyMedium(
                                      context.screenWidth * 0.0332,
                                      color: AppColor.newGreyy,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: context.screenHeight * 0.025),

                            PaymentSummaryCard(),

                            SizedBox(height: context.screenHeight * 0.05),

                            PrimaryButton(
                              title: context.l10n.continueText,
                              onTap: () {
                                FocusScope.of(context).unfocus();

                                if (_ownerName.text.trim().isEmpty) {
                                  context.showCustomSnackbar(
                                    context.l10n.pleaseEnterYourName,
                                  );
                                  return;
                                }

                                if (RegExp(
                                  r'[0-9]',
                                ).hasMatch(_ownerName.text.trim())) {
                                  context.showCustomSnackbar(
                                      context.l10n.nameNotContainNumbers
                                  );
                                  return;
                                }

                                if (_donatingOnBehalf.text.trim().isNotEmpty &&
                                    RegExp(
                                      r'[0-9]',
                                    ).hasMatch(_donatingOnBehalf.text.trim())) {
                                  context.showCustomSnackbar(
                                      context.l10n.donatingOnBehalfNotContainNumbers
                                  );
                                  return;
                                }

                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.placeOrder(),
                                );
                              },
                            ),

                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
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

class BookSewaPageMedium extends StatefulWidget {
  const BookSewaPageMedium({super.key});

  @override
  State<BookSewaPageMedium> createState() => _BookSewaPageMediumState();
}

class _BookSewaPageMediumState extends State<BookSewaPageMedium> {
  late final TextEditingController _ownerName;
  late final TextEditingController _donatingOnBehalf;
  late final TextEditingController _personalMessage;

  bool _isNameInitialized = false;

  @override
  void dispose() {
    _ownerName.dispose();
    _donatingOnBehalf.dispose();
    _personalMessage.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _ownerName = TextEditingController();
    _donatingOnBehalf = TextEditingController();
    _personalMessage = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final defaultName =
          context.read<AppBloc>().state?.userdata?.user?.username ?? "";

      _ownerName.text = defaultName;

      context.read<BookSewaPageBloc>().add(
        BookSewaPageEvent.changeName(userName: defaultName),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookSewaPageBloc, BookSewaPageState>(
      listenWhen: (previous, current) =>
          previous.isOrderSuccess != current.isOrderSuccess ||
          (previous.errorMessage != current.errorMessage &&
              current.errorMessage.isNotEmpty),
      listener: (context, state) {
        if (state.isOrderSuccess) {
          final orderData = state.orderSaveApiResponse.data;

          final amount = orderData.pricing.formattedGrossAmount.isNotEmpty
              ? orderData.pricing.formattedGrossAmount
              : state.priceTaxApiResponse.data.formattedGrossAmount;

          context.read<ThankyouSewaPageBloc>().add(
            GetThankyou(id: orderData!.sevaId),
          );

          Navigator.pushReplacementNamed(
            context,
            AppRoutes.SEWA_BOOKING_SUCCESS_PAGE,
          );
          FacebookAnalytics.logEvent(
            FacebookEvents.sewaCompleted,
            parameters: {
              "value": amount,
              "currency": "INR",
              "sewa_type": "${state.catName}",
              "seva_id": "${orderData!.sevaId}",
            },
          );
          return;
        }

        if (state.errorMessage.isNotEmpty) {
          context.showCustomSnackbar(state.errorMessage);
        }
      },

      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.newbackgroundColorHome,
          body: Stack(
            children: <Widget>[
              SizedBox(
                height: context.screenHeight,
                width: context.screenWidth,

                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Column(
                    children: <Widget>[
                      /// HEADER
                      Container(
                        width: double.infinity,
                        height: context.screenHeight * 0.15,
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 0,
                          right: 0,
                          bottom: 14,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/background_image/gradient_background.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),

                        child: MmVendorAppbar(
                          title: context.l10n.personalMessage,
                          onBackTap: () {
                            FocusScope.of(context).unfocus();

                            context.read<AppBloc>().loadUserData();
                            Navigator.pop(context);
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: context.screenHeight * 0.025),
                            SevaTextField(
                              label: context.l10n.yourNameInVideo,
                              hint: '',
                              controller: _ownerName,

                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changeName(userName: v),
                                );
                              },
                            ),
                            SizedBox(height: context.screenHeight * 0.025),
                            SevaTextField(
                              label: context.l10n.donatingOnBehalfOf,
                              hint: context.l10n.donatingOnBehalfHint,
                              controller: _donatingOnBehalf,
                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changeDonationOnBehalf(
                                    donationOnBehalfof: v,
                                  ),
                                );
                              },
                            ),

                            SizedBox(height: context.screenHeight * 0.025),
                            SevaTextField(
                              label: context.l10n.personalMessage,
                              hint:
                              context.l10n.personalMessageHint,
                              controller: _personalMessage,
                              maxLines: 3,
                              onChanged: (v) {
                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.changePersonalMessage(
                                    personalMessage: v,
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: context.screenHeight * 0.025),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/background_image/multiple_selection_background.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                              context.l10n.howYourVideoWillSound,
                                    style: AppTextStyle.gilroySemiBold(
                                      context.screenWidth * 0.0426,
                                      color: AppColor.goldDark,
                                    ),
                                  ),

                                  Text(
                                    "${context.l10n.namaskarVideoScript} "
                                        "${state.userName.isEmpty
                                        ? (context.read<AppBloc>().state?.userdata?.user?.username ?? "")
                                        : state.userName.trim()}, "
                                        "${context.l10n.aajHum} "
                                        "${state.priceTaxApiResponse.data.formattedVendorAmount} "
                                        "ka ${state.catName} "
                                        "${context.l10n.kaDaan}",
                                    style: AppTextStyle.gilroyMedium(
                                      context.screenWidth * 0.0332,
                                      color: AppColor.newGreyy,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: context.screenHeight * 0.025),
                            PaymentSummaryCard(),
                            SizedBox(height: context.screenHeight * 0.05),
                            PrimaryButtonMedium(
                              title: context.l10n.continueText,
                              onTap: () {
                                FocusScope.of(context).unfocus();

                                if (_ownerName.text.trim().isEmpty) {
                                  context.showCustomSnackbar(
                                    context.l10n.pleaseEnterYourName,
                                  );

                                  return;
                                }

                                if (RegExp(
                                  r'[0-9]',
                                ).hasMatch(_ownerName.text.trim())) {
                                  context.showCustomSnackbar(
                                      context.l10n.nameNotContainNumbers
                                  );
                                  return;
                                }

                                if (_donatingOnBehalf.text.trim().isNotEmpty &&
                                    RegExp(
                                      r'[0-9]',
                                    ).hasMatch(_donatingOnBehalf.text.trim())) {
                                  context.showCustomSnackbar(
                                      context.l10n.donatingOnBehalfNotContainNumbers
                                  );
                                  return;
                                }

                                context.read<BookSewaPageBloc>().add(
                                  BookSewaPageEvent.placeOrder(),
                                );
                              },
                            ),

                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
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
