import 'package:flutter/material.dart';

class MyColors {
  static Color primary = const Color(0xfff79ba3);
  static Color primaryLight = const Color(0xfffdb5c0);
  static Color light = const Color.fromARGB(255, 242, 242, 249);
  static Color grey = const Color(0xffbdc3ce);
  static Color greyText = const Color.fromARGB(255, 189, 212, 233);
  static Color textMain = const Color(0xff364b6e);
  static LinearGradient primaryGradient = LinearGradient(
    colors: [primaryLight, primary],
  );
}
