import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';
import 'package:my_knucklebones/theme/extensions/label_extension.dart';

class Label extends StatelessWidget {
  final String _text;
  final LabelName _label;
  final Color? _color;
  final TextAlign? _textAlign;

  const Label.displayLarge(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.displayLarge,
        _textAlign = textAlign;

  const Label.displayMedium(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.displayMedium,
        _textAlign = textAlign;

  const Label.displaySmall(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.displaySmall,
        _textAlign = textAlign;

  const Label.titleLarge(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.titleLarge,
        _textAlign = textAlign;

  const Label.titleMedium(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.titleMedium,
        _textAlign = textAlign;

  const Label.titleSmall(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.titleSmall,
        _textAlign = textAlign;

  const Label.bodyLarge(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.bodyLarge,
        _textAlign = textAlign;

  const Label.bodyMedium(this._text,
      {super.key, Color? color, TextAlign? textAlign})
      : _color = color,
        _label = LabelName.bodyMedium,
        _textAlign = textAlign;

  @override
  Widget build(BuildContext context) {
    final AppThemeData theme = AppTheme.of(context);
    return Text(
      _text,
      style: _label
          .getTextStyle(context)
          .copyWith(color: _color ?? theme.colors.black),
      textAlign: _textAlign,
    );
  }
}
