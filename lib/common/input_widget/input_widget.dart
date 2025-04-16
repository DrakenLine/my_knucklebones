import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/label_widget/label_widget.dart';
import 'package:my_knucklebones/common/label_widget/label_widget_direction_enum.dart';
import 'package:my_knucklebones/common/label_widget/label_widget_size_enum.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController _controller;
  final String _hintText;
  final Function(String value) _onChanged;

  const InputWidget(
      {super.key,
      required TextEditingController controller,
      required String hintText,
      required Function(String value) onChanged})
      : _controller = controller,
        _hintText = hintText,
        _onChanged = onChanged;

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: <Widget>[
        LabelWidget(
          size: LabelWidgetSize.small,
          direction: LabelWidgetDirection.horizontal,
          text: 'Player 1',
          isTotalScore: false,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: theme.colors.black,
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(-4, 4),
              ),
            ],
          ),
          child: TextField(
            controller: _controller,
            style: theme.textStyle.bodyMedium,
            decoration: InputDecoration(
              fillColor: theme.colors.desertSand,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(width: 3, color: theme.colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: theme.colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: theme.colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: _hintText,
              hintStyle: theme.textStyle.bodyMedium.copyWith(
                color: theme.colors.battleShipGrey,
              ),
            ),
            onChanged: _onChanged,
          ),
        )
      ],
    );
  }
}
