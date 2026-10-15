import 'package:flutter/material.dart';

class SearchBarMicButton extends StatefulWidget {
  final bool isListening;
  final VoidCallback onTap;
  final String inactiveIcon;
  final String? activeIcon;
  final double size;

  const SearchBarMicButton({
    super.key,
    required this.isListening,
    required this.onTap,
    required this.inactiveIcon,
    this.activeIcon,
    this.size = 20,
  });

  @override
  State<SearchBarMicButton> createState() => _SearchBarMicButtonState();
}

class _SearchBarMicButtonState extends State<SearchBarMicButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    _pulseAnimation = Tween<double>(begin: 0.35, end: 1).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeOut),
    );

    if (widget.isListening) {
      _pulseController.repeat();
    }
  }

  @override
  void didUpdateWidget(SearchBarMicButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isListening && !oldWidget.isListening) {
      _pulseController.repeat();
    } else if (!widget.isListening && oldWidget.isListening) {
      _pulseController
        ..stop()
        ..reset();
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (widget.isListening)
              AnimatedBuilder(
                animation: _pulseAnimation,
                builder: (context, child) {
                  return Container(
                    width: 34 * _pulseAnimation.value,
                    height: 34 * _pulseAnimation.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(
                        0.22 * (1 - _pulseAnimation.value),
                      ),
                      border: Border.all(
                        color: Colors.red.withOpacity(
                          0.45 * (1 - _pulseAnimation.value),
                        ),
                        width: 1.5,
                      ),
                    ),
                  );
                },
              ),
            if (widget.isListening)
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(0.12),
                ),
              ),
            widget.isListening
                ? const Icon(
                    Icons.mic,
                    color: Colors.red,
                    size: 22,
                  )
                : Image.asset(
                    widget.inactiveIcon,
                    width: widget.size,
                    height: widget.size,
                  ),
          ],
        ),
      ),
    );
  }
}
