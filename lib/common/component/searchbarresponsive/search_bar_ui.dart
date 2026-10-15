import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import 'animated_search_hint.dart';
import 'search_bar_listening_indicator.dart';
import 'search_bar_mic_button.dart';

class SearchBarUI extends StatelessWidget {
  final double height;
  final double iconSize;
  final double fontFactor;
  final double hintFactor;

  final TextEditingController controller;
  final bool isListening;
  final String status;
  final VoidCallback onMicTap;
  final VoidCallback? onBarTap;
  final Function(String)? onChanged;

  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  final List<String>? animatedHints;
  const SearchBarUI({
    super.key,
    required this.height,
    required this.iconSize,
    required this.fontFactor,
    required this.hintFactor,
    required this.controller,
    required this.isListening,
    required this.status,
    required this.onMicTap,
    this.onBarTap,
    this.onChanged,
    this.hintText,
    this.micIcon,
    this.activeMicIcon,
    this.animatedHints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
          alignment: Alignment.center,
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            color: isListening
                ? const Color(0xFFFFF5F5)
                : AppColor.appWhiteColor,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: isListening ? Colors.red : Colors.transparent,
              width: isListening ? 1.5 : 0,
            ),
            boxShadow: isListening
                ? [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.12),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
          ),
          child: Row(
            children: [
              // Expanded(
              //   child: GestureDetector(
              //     onTap: onBarTap,
              //     behavior: HitTestBehavior.opaque,
              //     child: Row(
              //       children: [
              //         const SizedBox(width: 12),
              //         Image.asset(
              //           "assets/new_design/icon/Search.png",
              //           width: iconSize,
              //           height: iconSize,
              //         ),
              //         const SizedBox(width: 8),
              //         // Expanded(
              //         //   child: TextField(
              //         //     controller: controller,
              //         //     readOnly: onBarTap != null,
              //         //     onTap: onBarTap,
              //         //     onChanged: onChanged,
              //         //     style: AppTextStyle.regular(
              //         //       context.screenWidth * fontFactor,
              //         //       color: Colors.black,
              //         //     ),
              //         //     decoration: InputDecoration(
              //         //       contentPadding: const EdgeInsets.only(bottom: 4),
              //         //       hintText: isListening
              //         //           ? 'Speak now...'
              //         //           : (hintText ?? "Search bookings..."),
              //         //       hintStyle: AppTextStyle.gilroySemiBold(
              //         //         context.screenWidth * hintFactor,
              //         //         color: isListening
              //         //             ? Colors.red.withOpacity(0.75)
              //         //             : AppColor.appBlack.withOpacity(0.6),
              //         //       ),
              //         //       border: InputBorder.none,
              //         //     ),
              //         //   ),
              //         // ),
              //         Expanded(
              //           child: onBarTap != null
              //               ? GestureDetector(
              //             onTap: onBarTap,
              //             child: IgnorePointer(
              //               child: controller.text.isNotEmpty
              //                   ? TextField(
              //                 controller: controller,
              //                 decoration: const InputDecoration(
              //                   border: InputBorder.none,
              //                 ),
              //               )
              //                   : AnimatedSearchHint(
              //                 animatedHints: animatedHints,
              //                 hintText: hintText,
              //                 fontSize: context.screenWidth * hintFactor,
              //                 isListening: isListening,
              //               ),
              //             ),
              //           )
              //               : TextField(
              //             controller: controller,
              //             onChanged: onChanged,
              //             decoration: InputDecoration(
              //               border: InputBorder.none,
              //               hintText: hintText,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(width: 4),
              //       ],
              //     ),
              //   ),
              // ),
              Expanded(
                child: GestureDetector(
                  onTap: onBarTap,
                  behavior: HitTestBehavior.opaque,
                  child: Row(
                    children: [
                      const SizedBox(width: 12),

                      Image.asset(
                        "assets/new_design/icon/Search.png",
                        width: iconSize,
                        height: iconSize,
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: Padding(padding: EdgeInsets.only(top: 4),
                      //  child: IgnorePointer(
                          child: (animatedHints != null && animatedHints!.isNotEmpty)
                              ? AnimatedSearchHint(
                            animatedHints: animatedHints!,
                            hintText: hintText,
                            fontSize: context.screenWidth * hintFactor,
                            isListening: isListening,
                          )
                              : TextField(
                            controller: controller,
                            onChanged: onChanged,

                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * hintFactor,
                              color: AppColor.appBlack,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              hintText: hintText,
                              hintStyle: AppTextStyle.gilroySemiBold(
                                context.screenWidth * hintFactor,
                                color: AppColor.appBlack,
                              ),
                            ),
                          ),

                          // child: controller.text.isNotEmpty
                          //     ? TextField(
                          //   controller: controller,
                          //   decoration: const InputDecoration(
                          //     border: InputBorder.none,
                          //     isDense: true,
                          //     contentPadding: EdgeInsets.zero,
                          //   ),
                          // )
                          //     : AnimatedSearchHint(
                          //   animatedHints: animatedHints ?? const [],
                          //   hintText: hintText,
                          //   fontSize: context.screenWidth * hintFactor,
                          //   isListening: isListening,
                          // ),
                          //
                      //  ),
                        )
                      ),

                      const SizedBox(width: 4),
                    ],
                  ),
                ),
              ),
              Container(width: 1.5, height: 25, color: AppColor.newWhite),
              SearchBarMicButton(
                isListening: isListening,
                onTap: onMicTap,
                inactiveIcon:
                    micIcon ?? "assets/new_design/icon/icon-park-solid_voice.png",
                activeIcon: activeMicIcon,
                size: 20,
              ),
              const SizedBox(width: 6),
            ],
          ),
        ),
        SearchBarListeningIndicator(
          isListening: isListening,
          status: status,
        ),
      ],
    );
  }
}


