import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';
import 'package:my_knucklebones/theme/label.dart';

class ButtonWidget extends StatelessWidget {
  final String _title;
  final bool _isDisabled;

  const ButtonWidget({
    super.key,
    required String title,
    bool isDisabled = false,
  })  : _title = title,
        _isDisabled = isDisabled;

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: _isDisabled ? theme.colors.blackOlive : theme.colors.black,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: _isDisabled ? theme.colors.blackOlive : theme.colors.black,
            spreadRadius: 2,
            blurRadius: 0,
            offset: Offset(-4, 4),
          ),
        ],
        color: _isDisabled ? theme.colors.battleShipGrey : null,
        gradient: _isDisabled
            ? null
            : LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xFFD8973B),
                  Color(0xFF7F571F),
                ],
              ),
      ),
      child: Container(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
        padding: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isDisabled ? theme.colors.blackOlive : theme.colors.black,
            width: 2,
          ),
        ),
        child: Label.titleLarge(
          _title,
          textAlign: TextAlign.center,
          color: _isDisabled ? theme.colors.blackOlive : null,
        ),
      ),
    );
  }
}
