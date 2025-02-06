import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

enum LabelName {
  displayLarge,
  displayMedium,
  displaySmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
}

extension LabelNameExtension on LabelName {
  TextStyle getTextStyle(BuildContext context) {
    final AppThemeData theme = AppTheme.of(context);
    switch (this) {
      case LabelName.displayLarge:
        return theme.textStyle.displayLarge;
      case LabelName.displayMedium:
        return theme.textStyle.displayMedium;
      case LabelName.displaySmall:
        return theme.textStyle.displaySmall;
      case LabelName.titleLarge:
        return theme.textStyle.titleLarge;
      case LabelName.titleMedium:
        return theme.textStyle.titleMedium;
      case LabelName.titleSmall:
        return theme.textStyle.titleSmall;
      case LabelName.bodyLarge:
        return theme.textStyle.bodyLarge;
      case LabelName.bodyMedium:
        return theme.textStyle.bodyMedium;
    }
  }
}
