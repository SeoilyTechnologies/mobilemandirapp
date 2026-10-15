import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerGallery extends StatefulWidget {
  final List<String> images;
  const BannerGallery({required this.images, super.key});

  @override
  State<BannerGallery> createState() => _BannerGalleryState();
}

class _BannerGalleryState extends State<BannerGallery> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (context, index, realIndex) {
            final img = widget.images[index];
            final content = _getBannerContent(index);
            final alignment = _getAlignment(index);

            return Stack(
              children: [
                // 🖼 Background image
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.amberAccent.withOpacity(0.9), width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.4),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // 🌫 Gradient overlay
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),

                // 💎 Blurry text box (auto height, safe layout)
                Align(
                  alignment: alignment,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 280,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.3), width: 1),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.topLeft,
                            child: content,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.99,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() => _current = index);
            },
          ),
        ),

        const SizedBox(height: 8),

        // // 🔘 Dots Indicator
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: widget.images.asMap().entries.map((entry) {
        //     return GestureDetector(
        //       onTap: () => setState(() => _current = entry.key),
        //       child: AnimatedContainer(
        //         duration: const Duration(milliseconds: 300),
        //         width: _current == entry.key ? 16 : 8,
        //         height: 8,
        //         margin: const EdgeInsets.symmetric(horizontal: 3),
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(8),
        //           color: _current == entry.key
        //               ? Colors.amberAccent
        //               : Colors.white.withOpacity(0.5),
        //         ),
        //       ),
        //     );
        //   }).toList(),
        // ),
      ],
    );
  }

  // 🪔 Banner text content
  Widget _getBannerContent(int index) {
    switch (index) {
      case 0:
      // 🕉 Aaj ka Panchang Banner
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "🪔 Aaj Ka Panchang",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            _InfoRow(label: "🌅 Sunrise", value: "06:32 AM"),
            _InfoRow(label: "🌇 Sunset", value: "05:54 PM"),
            _InfoRow(label: "📿 Tithi", value: "Purnima"),
            _InfoRow(label: "🌟 Nakshatra", value: "Rohini"),
            _InfoRow(label: "🎉 Festival", value: "Kartika Purnima"),
          ],
        );

      case 1:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "🕉 Auspicious Time",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Shubh Muhurat: 9:00 AM - 10:45 AM\nAbhijit Muhurat: 12:00 PM - 12:45 PM",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        );

      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "🎉 Today’s Festival",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Dev Diwali – The festival of lights\nCelebrate with prayers and diyas",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        );

      case 3:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "🙏 Special Pooja",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Participate in the temple’s live evening aarti\nFrom 6:00 PM onwards",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        );

      default:
        return const SizedBox.shrink();
    }
  }

  Alignment _getAlignment(int index) {
    switch (index) {
      case 0:
        return Alignment.bottomLeft;
      case 1:
        return Alignment.topRight;
      case 2:
        return Alignment.centerLeft;
      case 3:
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70, fontSize: 14)),
          Text(value,
              style: const TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
