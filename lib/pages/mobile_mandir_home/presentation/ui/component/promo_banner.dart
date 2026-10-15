import '../../../../../common/routes/exports.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset('assets/promo.jpg', height: 180, fit: BoxFit.cover),
    );
  }
}