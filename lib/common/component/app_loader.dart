import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'loading_indicator.dart';

class AppLoader {
  static Widget show(bool isLoading) {
    return isLoading
        ? LoadingIndicator()
        : const SizedBox.shrink();
  }
}
