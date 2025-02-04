import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_knucklebones/screens/home.dart';

enum AppRoute { home }

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (BuildContext context, GoRouterState state) => HomePage(),
    ),
  ],
);
