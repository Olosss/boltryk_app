import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Divider(
      color: theme.dividerColor,
      height: 1,
      thickness: 0.5,
    );
  }
}
