import 'package:flutter/material.dart';

class DeityCard extends StatelessWidget {
  final String image;
  const DeityCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.orangeAccent.withOpacity(0.8), // golden-orange border
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.withOpacity(0.4), // subtle purple glow
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13), // slightly smaller for visible border
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}




class ChalisaThumbNail extends StatelessWidget {
  final String image;
  const ChalisaThumbNail({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.orangeAccent.withOpacity(0.8), // golden-orange border
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.withOpacity(0.4), // subtle purple glow
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13), // slightly smaller for visible border
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
