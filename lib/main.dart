import 'package:boltryk_app/core/responsive/reponsive_info.dart';
import 'package:boltryk_app/core/responsive/responsive_breakpoints.dart';
import 'package:boltryk_app/core/responsive/responsive_data_provider.dart';
import 'package:boltryk_app/core/router/router.dart';
import 'package:boltryk_app/core/styles/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;

      final responsiveInfo = ResponsiveInfo(
        screenWidth: screenWidth,
        constraints: constraints,
        isMobile: screenWidth <= ResponsiveBreakpoints.mobileMaxWidth,
        isTablet: screenWidth > ResponsiveBreakpoints.mobileMaxWidth,
        isDesktop: screenWidth > ResponsiveBreakpoints.desktopLargeMinWidth,
      );

      return ResponsiveDataProvider(
        data: responsiveInfo,
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: AppRouter.router,
        ),
      );
    });
  }
}
