import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  scaffoldBackgroundColor: AppColors.secondColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.secondColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.primaryColor,
    unselectedItemColor: AppColors.secondColor,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: const TextStyle(color: AppColors.secondColor),
    unselectedLabelStyle: TextStyle(color: AppColors.white),
    showUnselectedLabels: true,
  ),
  useMaterial3: true,
);
