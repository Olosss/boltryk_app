import 'package:boltryk_app/core/responsive/reponsive_info.dart';
import 'package:flutter/material.dart';

class ResponsiveDataProvider extends InheritedWidget {
  final ResponsiveInfo data;

  const ResponsiveDataProvider({
    super.key,
    required this.data,
    required super.child,
  });

  static ResponsiveInfo? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ResponsiveDataProvider>()?.data;
  }

  @override
  bool updateShouldNotify(ResponsiveDataProvider oldWidget) {
    return oldWidget.data.isMobile != data.isMobile ||
        oldWidget.data.isTablet != data.isTablet ||
        oldWidget.data.isDesktop != data.isDesktop ||
        oldWidget.data.screenWidth != data.screenWidth ||
        oldWidget.data.constraints != data.constraints;
  }
}