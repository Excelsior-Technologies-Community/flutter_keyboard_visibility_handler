import 'package:flutter/widgets.dart';
import '../utils/logger.dart';

class KeyboardVisibilityController with WidgetsBindingObserver {
  final ValueNotifier<bool> keyboardVisible = ValueNotifier(false);

  void initialize() {
    WidgetsBinding.instance.addObserver(this);
    Logger.log("KeyboardVisibilityController Initialized");
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    keyboardVisible.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    final isVisible = bottomInset > 0;

    if (keyboardVisible.value != isVisible) {
      keyboardVisible.value = isVisible;
      Logger.log("Keyboard visibility changed: $isVisible");
    }
  }
}
