import 'package:flutter/material.dart';

class ColorLib {
  static MaterialColor primaryColor = hexToMaterialColor('#59B58D');
  static MaterialColor secondaryColor = hexToMaterialColor('#66EFB3');
  static MaterialColor darkColor = hexToMaterialColor('#009D58');

  static MaterialColor hexToMaterialColor(String hexColor) {
    final String opaqueHexColor = hexColor;
    'ff';

    final int colorInt = int.parse(opaqueHexColor, radix: 16);

    return MaterialColor(colorInt, _generateSwatch(colorInt));
  }

  static Map<int, Color> _generateSwatch(int colorInt) {
    final int r = (colorInt >> 16) & 0xFF;
    final int g = (colorInt >> 8) & 0xFF;
    final int b = colorInt & 0xFF;

    final Map<int, Color> swatch = {
      50: Color.fromRGBO(r, g, b, 0.1),
      100: Color.fromRGBO(r, g, b, 0.2),
      200: Color.fromRGBO(r, g, b, 0.3),
      300: Color.fromRGBO(r, g, b, 0.4),
      400: Color.fromRGBO(r, g, b, 0.5),
      500: Color.fromRGBO(r, g, b, 0.6),
      600: Color.fromRGBO(r, g, b, 0.7),
      700: Color.fromRGBO(r, g, b, 0.8),
      800: Color.fromRGBO(r, g, b, 0.9),
      900: Color.fromRGBO(r, g, b, 1.0),
    };

    return swatch;
  }
}
