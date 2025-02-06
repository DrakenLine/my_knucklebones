import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class AppTheme extends InheritedWidget {
  final AppThemeData _data;

  const AppTheme({
    super.key,
    required AppThemeData data,
    required super.child,
  }) : _data = data;

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) =>
      oldWidget._data != _data;

  static AppThemeData of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppTheme>()!._data;
}
