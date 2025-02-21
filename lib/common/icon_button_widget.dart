import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;

  const IconButtonWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: theme.colors.black,
          width: 2,
        ),
        color: theme.colors.butterScotch,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: theme.colors.black,
            spreadRadius: 2,
            blurRadius: 0,
            offset: Offset(-4, 4),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 35,
      ),
    );
  }
}
