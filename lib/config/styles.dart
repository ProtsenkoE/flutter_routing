import 'package:flutter/material.dart';

class Styles {
  static TextStyle titleStyle = const TextStyle(
    color: Colors.blueGrey,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static TextStyle btnStyleText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static BoxDecoration btnStyle() {
    return BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
