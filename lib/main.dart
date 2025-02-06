import 'package:flutter/material.dart';
import 'package:my_knucklebones/l10n/l10n.dart';
import 'package:my_knucklebones/router.dart';
import 'package:my_knucklebones/theme/app_theme.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      builder: (BuildContext context, Widget? child) {
        return AppTheme(data: theme, child: child!);
      },
    );
  }
}
