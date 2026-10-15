import '../../../../common/component/app_text_style.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';

class TempleCardSearch extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final VoidCallback? onTap;

  const TempleCardSearch({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: image == "" || image == null
                      ? Image.asset("assets/icons/no-image.png")
                      : Image.network(
                          AppConstant.fileBaseUrl + image,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              const SizedBox(height: 6),

              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.034,
                  color: AppColor.appBlack,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/new_design/icon/akar-icons_location.png",
                    width: 12,
                    height: 12,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.029,
                        color: AppColor.newGreyy,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
