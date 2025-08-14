import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ElevatedButtonThemeData get buttonTheme => Theme.of(this).elevatedButtonTheme;
  OutlinedButtonThemeData get outlinedButton =>
      Theme.of(this).outlinedButtonTheme;
  InputDecorationTheme get textFieldTheme =>
      Theme.of(this).inputDecorationTheme;
  TabBarThemeData get tabBarTheme => Theme.of(this).tabBarTheme;
  //TODO: bring this back if they ever need to bring in dark mode toggle
  // bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  bool get isDarkMode => false;
  ChipThemeData get chipTheme => Theme.of(this).chipTheme;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
  BottomNavigationBarThemeData get bottomNavBarTheme =>
      Theme.of(this).bottomNavigationBarTheme;
}
