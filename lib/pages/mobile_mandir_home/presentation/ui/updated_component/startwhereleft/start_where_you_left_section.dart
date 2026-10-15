import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/updated_component/startwhereleft/resume_item.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';

class StartWhereYouLeftSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final String actionText;
  final VoidCallback onActionTap;
  final List<ResumeItem> items;

  const StartWhereYouLeftSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.actionText,
    required this.onActionTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 6),
      color: const Color(0xFFFFF4E6), // background
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:AppTextStyle.gilroyBold(
                        context.screenWidth * 0.0373,
                        color: AppColor.fullBlack,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.0266,
                        color: AppColor.fullBlack,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.newsecondaruy,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    actionText ?? '',
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.0266,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// Items
          SizedBox(
            height: 95,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              padding: EdgeInsets.zero,
              separatorBuilder: (_, __) => const SizedBox(width: 14),
              itemBuilder: (context, index) {
                final item = items[index];
                return _ResumeCard(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
class _ResumeCard extends StatelessWidget {
  final ResumeItem item;

  const _ResumeCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFFFDEB3),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Image.asset(
                item.iconAsset,
                width: 28,
                height: 28,
                color: const Color(0xFF7B4A12),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
