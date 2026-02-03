import 'package:flutter/material.dart';
import '../core/keyboard/keyboard_visibility_listener.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keyboard Visibility Demo')),
      body: KeyboardVisibilityListener(
        builder: (context, isKeyboardVisible) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Tap to open keyboard',
                  ),
                ),
                const SizedBox(height: 40),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: isKeyboardVisible
                      ? Colors.green
                      : Colors.red,
                  child: Text(
                    isKeyboardVisible
                        ? "Keyboard is OPEN"
                        : "Keyboard is CLOSED",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
