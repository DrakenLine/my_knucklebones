import 'package:flutter/material.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';
import 'package:my_knucklebones/theme/label.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Scaffold(
      body: Center(
        child: Label.displayLarge(
          "HomePage",
          color: theme.colors.blackOlive,
        ),
      ),
    );
  }
}
