# Keyboard Visibility Handler

A lightweight Flutter library to **detect keyboard visibility changes** and **react in UI** with a simple, clean   
listener widget

This package helps you know **when the keyboard opens or closes** without writing boilerplate   
`WidgetsBindingObserver` code in every screen.

---

## ✨ Features
- Detect keyboard open / close
- Simple KeyboardVisibilityListener widget
- No third-party dependencies
- Clean, library-ready architecture
- Works on Android & iOS
- ValueNotifier based (very lightweight)

---

## 📸 Preview
![Keyboard](https://github.com/user-attachments/assets/56280352-2e33-44fa-bc32-ad2593b15420)


---

## 📦 Installation
### Add this to your pubspec.yaml:
```yaml
dependencies:
  flutter_keyboard_visibility_handler:
    path: '.../flutter_keyboard_visibility_handler/flutter_keyboard_visibility_handler'
```

##

### From GitHub
```yaml
dependencies:
  flutter_keyboard_visibility_handler:
    git:
      url: https://github.com/yourusername/flutter_keyboard_visibility_handler.git
```

---

## 🚀 Usage
```dart
import 'package:flutter_keyboard_visibility_handler/flutter_keyboard_visibility_handler.dart';
```

Wrap your UI with `KeyboardVisibilityListener`:

```dart
KeyboardVisibilityListener(
  builder: (context, isKeyboardVisible) {
    return Container(
      color: isKeyboardVisible ? Colors.green : Colors.red,
      child: const Text("Keyboard State"),
    );
  },
);
```

---

## 🧠 How It Works
This package internally uses:
- `WidgetsBindingObserver`
- `viewInsets.bottom` to detect keyboard height
- `ValueNotifier<bool>` to notify UI changes
So you don’t have to manage lifecycle or observers manually.

---

## 📁 Package Structure
```text
lib/
 ├── flutter_keyboard_visibility_handler.dart
 └── src/
     ├── controller/
     │   └── keyboard_visibility_controller.dart
     ├── widget/
     │   └── keyboard_visibility_listener.dart
     └── utils/
         └── logger.dart
```

---

## 🎯 Use Cases
- Adjust UI when keyboard opens
- Hide / show widgets dynamically
- Chat screens
- Forms
- Bottom buttons that must avoid keyboard

---

## 📜 License
```text
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
