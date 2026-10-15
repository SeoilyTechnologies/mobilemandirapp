import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 📝 Text Field + Mic Inside
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF8A001F).withOpacity(0.9),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white24, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type Here",
                hintStyle: const TextStyle(color: Colors.white),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                border: InputBorder.none,
                suffixIcon: Container(
              //    margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                   // color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.black.withOpacity(0.3),
                      //   blurRadius: 4,
                      //   offset: const Offset(0, 2),
                      // ),
                    ],
                  ),
                  child: const Icon(Icons.mic, color: Colors.white, size: 24),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(width: 10),

        // 🔍 Search Button
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Color(0xFF8A001F),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(Icons.search, color: Colors.white, size: 26),
        ),
      ],
    );
  }
}
