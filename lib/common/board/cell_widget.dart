import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/dice/dice_face_enum.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class CellWidget extends StatelessWidget {
  final bool isSelected;
  const CellWidget({
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return DragTarget<DiceFace>(
      builder: (
        BuildContext context,
        List<dynamic> candidateData,
        List<dynamic> rejectedData,
      ) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: isSelected
                      ? theme.colors.earthYellow
                      : Colors.transparent,
                ),
              ),
              DottedBorder(
                strokeWidth: isSelected ? 2 : 1,
                color: isSelected
                    ? theme.colors.butterScotch
                    : theme.colors.blackOlive,
                borderType: BorderType.RRect,
                radius: Radius.circular(5),
                dashPattern: <double>[6, 6],
                child: Container(),
              ),
            ],
          ),
        );
      },
    );
  }
}
