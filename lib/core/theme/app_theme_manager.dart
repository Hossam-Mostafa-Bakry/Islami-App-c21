import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';

abstract class AppThemeManager {
  static ThemeData getThemeData() => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBlack,
    appBarTheme: AppBarThemeData(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      iconTheme: IconThemeData(
        color: AppColors.primary,
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      selectedIconTheme: IconThemeData(size: 30),
      unselectedIconTheme: IconThemeData(size: 30),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.bold,
        color: AppColors.darkBlack,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.bold,
        color: AppColors.secondary,
      ),
      titleSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.bold,
        color: AppColors.darkBlack,
      ),
    ),
  );
}
