import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/dice/dice_face_enum.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class Dice extends StatelessWidget {
  final DiceFace diceFace;
  final Color? color;
  const Dice({
    super.key,
    required this.diceFace,
    this.color = const Color(0xFFF3CCA9),
  });

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color ?? theme.colors.desertSand,
        border: Border.all(color: theme.colors.black, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            spacing: 5,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              dot(diceFace != DiceFace.one),
              dot(diceFace == DiceFace.six),
              dot(
                <DiceFace>[DiceFace.four, DiceFace.five, DiceFace.six]
                    .contains(diceFace),
              ),
            ],
          ),
          dot(
            <DiceFace>[DiceFace.one, DiceFace.three, DiceFace.five]
                .contains(diceFace),
          ),
          Column(
            spacing: 5,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              dot(
                <DiceFace>[DiceFace.four, DiceFace.five, DiceFace.six]
                    .contains(diceFace),
              ),
              dot(diceFace == DiceFace.six),
              dot(diceFace != DiceFace.one),
            ],
          )
        ],
      ),
    );
  }

  Widget dot(bool condition) {
    const AppThemeData theme = AppThemeData();

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: condition ? theme.colors.black : Colors.transparent,
      ),
      width: 20,
      height: 20,
    );
  }
}
