import 'package:boltryk_app/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const String _mainFont = 'Nunito Sans';

  static TextStyle headline1 = GoogleFonts.getFont(
    _mainFont,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack,
  );

  static TextStyle titleMedium = GoogleFonts.getFont(
    _mainFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack,
  );

  static TextStyle displaySmall = GoogleFonts.getFont(
    _mainFont,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static TextStyle displayMedium = GoogleFonts.getFont(
    _mainFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static TextStyle labelSmall = GoogleFonts.getFont(
    _mainFont,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrey,
  );
}
