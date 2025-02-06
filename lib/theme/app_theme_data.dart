import 'package:flutter/material.dart';

class AppThemeData {
  final ThemeColorData colors;

  const AppThemeData({this.colors = const ThemeColorData()});
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
