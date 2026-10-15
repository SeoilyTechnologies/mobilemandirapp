import 'package:flutter/material.dart';
import '../../../../temple_detail/presentation/ui/component/icon_circle_button.dart';

class DetailHeader extends StatelessWidget {
  final String image;
  final String title;
  final String location;

  const DetailHeader({
    super.key,
    required this.image,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.network(
                image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(.65),
                ],
              ),
            ),
          ),

          Positioned(
            top: 14,
            left: 14,
            child: const IconCircleButton(
              icon: Icons.arrow_back_ios_new,
              size: 18,
            ),
          ),

          Positioned(
            top: 14,
            right: 14,
            child: Row(
              children:  [
                IconCircleButton(
                  icon: Icons.favorite_border,
                  size: 18,
                ),
                SizedBox(width: 8),
                IconCircleButton(
                  icon: Icons.share,
                  size: 18,
                ),
              ],
            ),
          ),

          Positioned(
            left: 26,
            bottom: 54,
            right: 26,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 16,
                    ),

                    const SizedBox(width: 4),

                    Expanded(
                      child: Text(
                        location,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}