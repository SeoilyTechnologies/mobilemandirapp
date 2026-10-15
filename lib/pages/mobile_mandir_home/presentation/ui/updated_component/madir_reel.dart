import '../../../../../common/routes/exports.dart';

class MadirReel extends StatelessWidget {
  final String imagePath; // can be asset or network
  final VoidCallback? onTap;
  final double borderRadius;
  final bool isNetwork;

  const MadirReel({
    super.key,
    required this.imagePath,
    this.onTap,
    this.borderRadius = 8,
    this.isNetwork = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          children: [
            /// 🔹 Background Image
            Positioned.fill(
              child: isNetwork
                  ? Image.network(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _fallbackImage(),
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(strokeWidth: 1.5),
                  );
                },
              )
                  : Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),

            /// 🔹 Bottom Gradient Overlay
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black54,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),

            /// ▶️ Play Button (Top Right)
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.45),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _fallbackImage() {
    return Image.asset(
      "assets/new_design/icon/reel_image.png",
      fit: BoxFit.cover,
    );
  }
}
