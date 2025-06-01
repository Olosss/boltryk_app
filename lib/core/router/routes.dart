import 'package:boltryk_app/core/presentation/drawer/app_drawer.dart';
import 'package:boltryk_app/core/presentation/navigation_bar/navigation_app_bar.dart';
import 'package:boltryk_app/core/responsive/responsive_breakpoints.dart';
import 'package:boltryk_app/core/router/routes_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedShellRoute<MyShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<DashboardRoute>(path: '/dashboard'),
    TypedGoRoute<ContactRoute>(path: '/contact'),
  ],
)
class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  void _onAboutTap({
    required BuildContext context,
  }) {
    context.push(
      const DashboardRoute().location,
    );
  }

  void _onContactTap({
    required BuildContext context,
  }) {
    context.push(
      const ContactRoute().location,
    );
  }

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return Scaffold(
      appBar: NavigationAppBar(
        onAboutTap: () => _onAboutTap(context: context),
        onContactTap: () => _onContactTap(context: context),
      ),
      endDrawer: AppDrawer(
        onAboutTap: () => _onAboutTap(context: context),
        onContactTap: () => _onContactTap(context: context),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: ResponsiveBreakpoints.desktopLargeMinWidth,
          ),
          child: navigator,
        ),
      ),
    );
  }
}
