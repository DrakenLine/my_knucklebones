import 'package:flutter/material.dart';

class AppThemeData {
  final ThemeColorData colors;
  final ThemeLabelData textStyle;

  const AppThemeData({
    this.colors = const ThemeColorData(),
    this.textStyle = const ThemeLabelData(),
  });
}

class ThemeColorData {
  final Color battleShipGrey;
  final Color bistre;
  final Color black;
  final Color blackOlive;
  final Color butterScotch;
  final Color desertSand;
  final Color dun;
  final Color earthYellow;
  final Color faluRed;
  final Color licorice;
  final Color sage;

  const ThemeColorData({
    this.battleShipGrey = const Color(0xff877F76),
    this.bistre = const Color(0xff442919),
    this.black = const Color(0xff000000),
    this.blackOlive = const Color(0xff494540),
    this.butterScotch = const Color(0xffC98C36),
    this.desertSand = const Color(0xffF3CCA9),
    this.dun = const Color(0xffCDC4B7),
    this.earthYellow = const Color(0xffF7BF72),
    this.faluRed = const Color(0xff83161C),
    this.licorice = const Color(0xff24140D),
    this.sage = const Color(0xffB1B39A),
  });
}

class ThemeLabelData {
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle displaySmall;

  const ThemeLabelData({
    this.displayLarge = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 42,
      decoration: TextDecoration.none,
    ),
    this.displayMedium = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 32,
      decoration: TextDecoration.none,
    ),
    this.displaySmall = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 28,
      decoration: TextDecoration.none,
    ),
    this.titleLarge = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 22,
      decoration: TextDecoration.none,
    ),
    this.titleMedium = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 18,
      decoration: TextDecoration.none,
    ),
    this.titleSmall = const TextStyle(
      fontFamily: 'Harmoni',
      fontSize: 16,
      decoration: TextDecoration.none,
    ),
    this.bodyLarge = const TextStyle(
      fontFamily: 'Arima Madurai',
      fontSize: 22,
      decoration: TextDecoration.none,
    ),
    this.bodyMedium = const TextStyle(
      fontFamily: 'Arima Madurai',
      fontSize: 19,
      decoration: TextDecoration.none,
    ),
  });

  ThemeLabelData copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? displaySmall,
  }) {
    return ThemeLabelData(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      displaySmall: displaySmall ?? this.displaySmall,
    );
  }
}
