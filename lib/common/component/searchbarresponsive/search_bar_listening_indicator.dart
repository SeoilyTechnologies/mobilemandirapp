import 'package:flutter/material.dart';

import '../app_text_style.dart';

class SearchBarListeningIndicator extends StatefulWidget {
  final bool isListening;
  final String status;

  const SearchBarListeningIndicator({
    super.key,
    required this.isListening,
    required this.status,
  });

  @override
  State<SearchBarListeningIndicator> createState() =>
      _SearchBarListeningIndicatorState();
}

class _SearchBarListeningIndicatorState extends State<SearchBarListeningIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _dotController;

  @override
  void initState() {
    super.initState();
    _dotController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    if (widget.isListening) {
      _dotController.repeat();
    }
  }

  @override
  void didUpdateWidget(SearchBarListeningIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isListening && !oldWidget.isListening) {
      _dotController.repeat();
    } else if (!widget.isListening && oldWidget.isListening) {
      _dotController
        ..stop()
        ..reset();
    }
  }

  @override
  void dispose() {
    _dotController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isListening) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 4),
      child: Row(
        children: [
          const Icon(Icons.graphic_eq, color: Colors.red, size: 16),
          const SizedBox(width: 6),
          Text(
            widget.status,
            style: AppTextStyle.gilroySemiBold(
              12,
              color: Colors.red,
            ),
          ),
          const SizedBox(width: 4),
          AnimatedBuilder(
            animation: _dotController,
            builder: (context, child) {
              return Row(
                children: List.generate(3, (index) {
                  final delay = index * 0.2;
                  final value = (_dotController.value + delay) % 1.0;
                  final opacity = value < 0.5 ? 1.0 : 0.25;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.5),
                    child: Opacity(
                      opacity: opacity,
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
