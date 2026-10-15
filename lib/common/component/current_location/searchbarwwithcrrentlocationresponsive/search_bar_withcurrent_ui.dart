import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class SearchBarWithcurrentUi extends StatelessWidget {
  final double height;
  final double iconSize;
  final double fontFactor;
  final double hintFactor;

  final TextEditingController controller;
  final VoidCallback onMicTap;
  final Function(String)? onChanged;

  final String? hintText;
  final String? micIcon;
  final String? activeMicIcon;
  const SearchBarWithcurrentUi({
    super.key,
    required this.height,
    required this.iconSize,
    required this.fontFactor,
    required this.hintFactor,
    required this.controller,

    required this.onMicTap,
    this.onChanged,
    this.hintText,
    this.micIcon,
    this.activeMicIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            color: AppColor.appWhiteColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              SizedBox(width: 12,),
              Image.asset(
                "assets/new_design/icon/Search.png",
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(width: 8),

              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * hintFactor,
                    color: AppColor.appBlack,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 4),
                    hintText: hintText ?? "Search bookings...",
                    hintStyle: AppTextStyle.gilroySemiBold(
                      context.screenWidth * hintFactor,
                      color: AppColor.appBlack,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(width: 8),
              Container(width: 1.5, height: 25, color: AppColor.newWhite),
              const SizedBox(width: 8),

              GestureDetector(
                onTap: onMicTap,
                child: Image.asset(
                  micIcon ?? "assets/new_design/icon/current_loc.png",
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(width: 12,),
            ],
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(top: 4, left: 4),
        //   child: Text(
        //     status,
        //     style: TextStyle(
        //       color: isListening ? Colors.red : Colors.grey,
        //       fontSize: 12,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}