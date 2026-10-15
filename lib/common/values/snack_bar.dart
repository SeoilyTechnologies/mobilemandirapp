// import 'package:flutter/material.dart';
// import 'package:mandirapp/common/component/app_text_style.dart';
// import 'app_color.dart';
//
// extension SnackbarExtension on BuildContext {
//   void showCustomSnackbar(
//     String message, {
//     Color backgroundColor = AppColor.newsecondaruy,
//     SnackBarBehavior behavior = SnackBarBehavior.floating,
//     DismissDirection direction = DismissDirection.up,
//   }) {
//     final messenger = ScaffoldMessenger.of(this);
//
//     // 🔥 Clear ALL previous snackbars (queue + current)
//     messenger.clearSnackBars();
//     messenger.hideCurrentSnackBar();
//
//     messenger.showSnackBar(
//       SnackBar(
//         content: Text(message,style: AppTextStyle.gilroyMedium(16,color: AppColor.appWhiteColor),),
//         backgroundColor: backgroundColor,
//         behavior: behavior,
//         dismissDirection: direction,
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'app_color.dart';

OverlayEntry? _currentSnackbar;

extension SnackbarExtension on BuildContext {
  void showCustomSnackbar(
      String message, {
        Color backgroundColor = AppColor.newsecondaruy,
        SnackBarBehavior behavior = SnackBarBehavior.floating,
        DismissDirection direction = DismissDirection.up,
      }) {
    // Compatibility ke liye rakhe hain
    behavior;
    direction;

    _currentSnackbar?.remove();

    final overlay = Overlay.of(this);

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (_) => _TopSnackBar(
        message: message,
        backgroundColor: backgroundColor,
        onDismiss: () {
          if (_currentSnackbar == entry) {
            _currentSnackbar = null;
          }
          entry.remove();
        },
      ),
    );

    _currentSnackbar = entry;
    overlay.insert(entry);
  }
}

class _TopSnackBar extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final VoidCallback onDismiss;

  const _TopSnackBar({
    required this.message,
    required this.backgroundColor,
    required this.onDismiss,
  });

  @override
  State<_TopSnackBar> createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<_TopSnackBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack, // Jump effect
      ),
    );

    _controller.forward();

    Timer(const Duration(seconds: 3), () async {
      if (!mounted) return;
      await _controller.reverse();
      widget.onDismiss();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String formatSnackbarMessage(String message) {
    return message
        .replaceAll('_', ' ')
        .toLowerCase()
        .split(' ')
        .map((word) =>
    word.isEmpty ? '' : '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.topCenter,
          child: SlideTransition(
            position: _animation,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 12,
                    color: Colors.black26,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                formatSnackbarMessage(widget.message),
                style: AppTextStyle.gilroyMedium(
                  16,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}