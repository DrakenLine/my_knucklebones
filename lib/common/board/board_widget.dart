import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Container(
      decoration: BoxDecoration(
        color: theme.colors.sage,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: theme.colors.black,
        ),
      ),
      child: Stack(children: <Widget>[
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          crossAxisCount: 3,
          children: List<Widget>.generate(3 * 3, (int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colors.black,
                  width: 2,
                ),
              ),
            );
          }),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          crossAxisCount: 3,
          children: List<Widget>.generate(3 * 3, (int index) {
            return Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: theme.colors.desertSand,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: theme.colors.black,
                  width: 2,
                ),
              ),
            );
          }),
        ),
      ]),
    );
  }
}
