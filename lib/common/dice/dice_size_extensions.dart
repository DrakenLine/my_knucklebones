import 'package:my_knucklebones/common/dice/dice_size_enum.dart';

extension DiceSizeExtensions on DiceSize {
  double getSize() {
    return this == DiceSize.small ? 15 : 20;
  }
}
