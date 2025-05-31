import 'package:boltryk_app/core/router/routes.dart';
import 'package:boltryk_app/core/router/routes_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    navigatorKey: _navigatorKey,
    routes: $appRoutes,
    initialLocation: const DashboardRoute().location
  );

  static GoRouter get router => _router;
}