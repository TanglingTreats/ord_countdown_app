import 'package:flutter/material.dart';
import 'app-palette.dart';

class Background {
  static var gradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.0, 1.0],
    colors: [
      Palette.bgGradientStart,
      Palette.bgGradientEnd
      ]
    );
}