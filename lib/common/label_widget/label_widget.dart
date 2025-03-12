import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/label_widget/label_widget_direction_enum.dart';
import 'package:my_knucklebones/common/label_widget/label_widget_size_enum.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';
import 'package:my_knucklebones/theme/label.dart';

class LabelWidget extends StatelessWidget {
  final LabelWidgetSize _size;
  final LabelWidgetDirection _direction;
  final String _text;
  final bool _isTotalScore;

  const LabelWidget({
    super.key,
    required LabelWidgetSize size,
    required LabelWidgetDirection direction,
    required String text,
    required bool isTotalScore,
  })  : _size = size,
        _direction = direction,
        _text = text,
        _isTotalScore = isTotalScore;

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Transform.rotate(
      angle: _direction == LabelWidgetDirection.horizontal
          ? 0
          : (90 * math.pi) / 180,
      child: Container(
        decoration: BoxDecoration(
          color: _isTotalScore
              ? theme.colors.butterScotch
              : theme.colors.earthYellow,
          border: Border.all(
            color: theme.colors.black,
            width: 2,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: theme.colors.black,
              spreadRadius: 2,
              blurRadius: 0,
              offset: Offset(-4, 4),
            ),
          ],
        ),
        padding: padding(_size),
        child: _size == LabelWidgetSize.small
            ? Label.titleSmall(_text)
            : Label.titleLarge(_text),
      ),
    );
  }

  EdgeInsets padding(LabelWidgetSize size) {
    switch (size) {
      case LabelWidgetSize.small:
        return EdgeInsets.symmetric(horizontal: 15, vertical: 6);
      case LabelWidgetSize.large:
        return EdgeInsets.symmetric(horizontal: 30, vertical: 9);
    }
  }
}
