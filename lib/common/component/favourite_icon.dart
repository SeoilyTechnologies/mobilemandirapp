import '../routes/exports.dart';
import '../values/screenUtils.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;

  const FavoriteIcon({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isFavorite
          ? "assets/new_design/icon/rounded_circle_heart.png"
          : "assets/new_design/icon/rounded_line_favourite.png",
      width: context.screenWidth * 0.12,
    );
  }
}