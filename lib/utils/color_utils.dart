import 'package:flutter/material.dart';

class ColorUtils {
  static Color redcolor = Color(0xFFAF1F25);
  static Color textfield = Color(0xFFE0E0E0);
  static Color textfieldhint = Color(0xFFB9B9B9);
  static Color greyColor = Color(0xFFDADADA);
  static Color blackColor = Color(0xFF121212);
  static Color whiteColor = Color(0xFFFCFCFC);
  static Color backgroundColor = Color(0xFFF1F1F1);
  static Color greenColor = Color(0xFF049DA7);
  static Color greyColor1 = Color(0xFFCACACA);
  static Color lightgreenColor = Color(0xFF00C58A);
  static Color orangeColor = Color(0xFFFF8025);
  static Color darkgrey = Color(0xFFABABAB);
  static Color dividerColor = Color(0xffCACACA);
  BoxShadow softShadow = BoxShadow(
    color: ColorUtils.blackColor.withOpacity(0.1),
    blurRadius: 5,
    offset: Offset(1, 0),
  );
}
