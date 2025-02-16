import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/board/board_widget.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BoardWidget(),
      )),
    );
  }
}
