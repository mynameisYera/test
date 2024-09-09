import 'package:flutter/material.dart';

class CustomGradient {
  static LinearGradient linear({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
  }) {
    return LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
      stops: stops,
      tileMode: tileMode,
    );
  }

  static RadialGradient radial({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    AlignmentGeometry focal = Alignment.center,
    double focalRadius = 0.0,
  }) {
    return RadialGradient(
      colors: colors,
      center: center,
      radius: radius,
      stops: stops,
      tileMode: tileMode,
      focal: focal,
      focalRadius: focalRadius,
    );
  }

  static SweepGradient sweep({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 3.14 * 2,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
  }) {
    return SweepGradient(
      colors: colors,
      center: center,
      startAngle: startAngle,
      endAngle: endAngle,
      stops: stops,
      tileMode: tileMode,
    );
  }
}
