import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/board/board_widget.dart';
import 'package:my_knucklebones/common/dice/dice_face_enum.dart';
import 'package:my_knucklebones/common/dice/dice_size_enum.dart';
import 'package:my_knucklebones/common/dice/dice_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const AppThemeData theme = AppThemeData();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 7,
            children: <Widget>[
              Dice(
                diceFace: DiceFace.one,
                diceSize: DiceSize.small,
              ),
              Dice(
                diceFace: DiceFace.two,
                diceSize: DiceSize.small,
              ),
              Dice(
                diceFace: DiceFace.three,
                diceSize: DiceSize.small,
              ),
              Dice(
                diceFace: DiceFace.four,
                diceSize: DiceSize.small,
              ),
              Dice(
                diceFace: DiceFace.five,
                diceSize: DiceSize.small,
              ),
              Dice(
                diceFace: DiceFace.six,
                diceSize: DiceSize.small,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BoardWidget(),
          ),
        ],
      ),
    );
  }
}
