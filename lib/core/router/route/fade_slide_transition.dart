import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeSlideTransition extends CustomTransitionPage<void> {
  FadeSlideTransition({
    required super.child,
    required GoRouterState state,
  }) : super(
    key: state.pageKey,
    transitionsBuilder:
        (context, animation, secondaryAnimation, child) {
      final slideAnimation = Tween<Offset>(
        begin: const Offset(0, 0.05),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ));

      final fadeAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      );

      return SlideTransition(
        position: slideAnimation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: child,
        ),
      );
    },
  );
}