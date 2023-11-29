import 'package:flutter/material.dart';

class JarHelper {
  /// gives the Snackbar
  static buildErrorSnackbar(
    BuildContext context,
    String? message, {
    int durationMultiplier = 1,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(
          seconds: 1 * durationMultiplier,
        ),
        content: Text(message!),
      ),
    );
  }

  static MaterialColor createMaterialColor(Color color) {
    final List<double> strengths = <double>[.05];
    final Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final double strength in strengths) {
      final num nStrength = strength;
      final double ds = 0.5 - nStrength;
      swatch[(nStrength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
