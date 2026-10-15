import 'package:flutter/material.dart';

class WishlistIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isAdded;

  const WishlistIconButton({
    super.key,
    required this.onTap,
    required this.isAdded,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
        //  color: Color(0xFFFEECEB),
          shape: BoxShape.circle,
        ),
        child: Icon(
          isAdded ? Icons.favorite : Icons.favorite_border,
          color: isAdded ? Colors.white : Colors.white,
        ),
      ),
    );
  }
}
