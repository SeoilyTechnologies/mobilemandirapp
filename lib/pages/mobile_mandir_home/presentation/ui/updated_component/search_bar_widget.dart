// lib/widgets/search_bar_widget.dart
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hint;

  const SearchBarWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Image.asset("assets/new_design/icon/Search.png"),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              hint,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const Icon(Icons.mic, color: Colors.grey),
        ],
      ),
    );
  }
}
