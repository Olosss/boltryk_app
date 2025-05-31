import 'package:flutter/material.dart';

class ResponsiveInfo {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  final double screenWidth;
  final BoxConstraints constraints;

  ResponsiveInfo({
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
    required this.screenWidth,
    required this.constraints,
  });
}