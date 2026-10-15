import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/routes/exports.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';



class SewaTimelineItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final bool isCompleted;
  final bool isLast;

  const SewaTimelineItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    this.isCompleted = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCompleted
                      ? AppColor.goldDark
                      : AppColor.newGreyy.withOpacity(0.3),
                ),
                child: Icon(Icons.check, size: 18, color: AppColor.white),
              ),

              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: isCompleted
                        ? AppColor.goldDark
                        : AppColor.newGreyy.withOpacity(0.3),
                  ),
                ),
            ],
          ),

          SizedBox(width: 14),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.gilroySemiBold(
                      context.screenWidth * 0.037,
                      color: AppColor.fullBlack,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.032,
                      color: AppColor.newGreyy,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    time,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.03,
                      color: isCompleted
                          ? AppColor.appNewgreen
                          : AppColor.newGreyy,
                    ),
                  ),

                  SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
