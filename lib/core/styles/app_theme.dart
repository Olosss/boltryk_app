import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryBlue,
        onPrimary: AppColors.primaryBlue,
        secondary: AppColors.primaryBlack,
        onSecondary: AppColors.primaryBlue,
        error: AppColors.primaryBlue,
        onError: AppColors.primaryBlue,
        surface: AppColors.white,
        onSurface: AppColors.primaryBlue,
      ),
      scaffoldBackgroundColor: AppColors.white,
      dividerColor: AppColors.grey,
      textTheme: TextTheme(
        displaySmall: AppTextStyles.displaySmall,
        displayLarge: AppTextStyles.headline1,
        displayMedium: AppTextStyles.displayMedium,
        titleMedium: AppTextStyles.titleMedium,
        labelSmall: AppTextStyles.labelSmall,
      ),
    );
  }
}
