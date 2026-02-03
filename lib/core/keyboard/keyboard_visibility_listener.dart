import 'package:flutter/material.dart';
import 'keyboard_visibility_controller.dart';

class KeyboardVisibilityListener extends StatefulWidget {
  final Widget Function(BuildContext context, bool isKeyboardVisible) builder;

  const KeyboardVisibilityListener({
    super.key,
    required this.builder,
  });

  @override
  State<KeyboardVisibilityListener> createState() =>
      _KeyboardVisibilityListenerState();
}

class _KeyboardVisibilityListenerState
    extends State<KeyboardVisibilityListener> {
  late KeyboardVisibilityController controller;

  @override
  void initState() {
    super.initState();
    controller = KeyboardVisibilityController();
    controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.keyboardVisible,
      builder: (context, isVisible, _) {
        return widget.builder(context, isVisible);
      },
    );
  }
}
