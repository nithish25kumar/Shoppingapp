import 'dart:ui';

import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30);
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(
        color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 20);
  }

  static TextStyle semiboldTextField() {
    return TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);
  }
}
