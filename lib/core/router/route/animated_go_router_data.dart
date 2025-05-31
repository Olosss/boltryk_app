import 'package:boltryk_app/core/router/route/fade_slide_transition.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AnimatedGoRouteData extends GoRouteData {
  const AnimatedGoRouteData();

  Widget buildContent(BuildContext context, GoRouterState state);

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return FadeSlideTransition(
      child: buildContent(context, state),
      state: state,
    );
  }
}