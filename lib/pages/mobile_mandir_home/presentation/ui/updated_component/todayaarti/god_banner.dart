import '../../../../../../common/routes/exports.dart';

class GodBanner extends StatelessWidget {
  final String backgroundImage;
  final String godImage;
  final double height;

  const GodBanner({
    super.key,
    required this.backgroundImage,
    required this.godImage,
    this.height = 220,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
       // color: const Color(0xFF7FB0A9),
      ),
      padding: const EdgeInsets.all(12),
      child: Image.asset(
        godImage,
        height: height - 40,
        fit: BoxFit.contain,
      )
    );
  }
}
