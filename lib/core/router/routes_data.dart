import 'package:boltryk_app/core/router/route/animated_go_router_data.dart';
import 'package:boltryk_app/feature/contact/page/contact_page.dart';
import 'package:boltryk_app/feature/dashboard/page/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  @override
  Widget builder(
      BuildContext context,
      GoRouterState state,
      Widget navigator,
      ) {
    return navigator;
  }
}

class DashboardRoute extends AnimatedGoRouteData {
  const DashboardRoute();

  @override
  Widget buildContent(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

class ContactRoute extends AnimatedGoRouteData {
  const ContactRoute();

  @override
  Widget buildContent(BuildContext context, GoRouterState state) {
    return const ContactPage();
  }
}