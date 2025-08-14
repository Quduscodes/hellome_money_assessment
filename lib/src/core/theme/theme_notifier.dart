import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';

import '../constants/app_theme_mode.dart';
import '../constants/string_const.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(_getInitialThemeMode());

  // Method to retrieve initial theme mode
  static ThemeMode _getInitialThemeMode() {
    final box = Hive.box<String>(StringConst.appThemeBox);
    final savedTheme = box.get(StringConst.appThemeKey, defaultValue: 'system');
    switch (savedTheme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  // Method to set theme mode
  Future<void> setThemeMode(AppThemeMode themeMode) async {
    final box = Hive.box<String>(StringConst.appThemeBox);

    switch (themeMode) {
      case AppThemeMode.light:
        state = ThemeMode.light;
        box.put(StringConst.appThemeKey, 'light');
        break;
      case AppThemeMode.dark:
        state = ThemeMode.dark;
        box.put(StringConst.appThemeKey, 'dark');
        break;
      case AppThemeMode.system:
        state = ThemeMode.system;
        box.put(StringConst.appThemeKey, 'system');
        break;
    }
  }
}

const SystemUiOverlayStyle lightSystemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
  statusBarColor: Colors.transparent,
);

const SystemUiOverlayStyle darkSystemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
  statusBarColor: Colors.transparent,
);

// const SystemUiOverlayStyle darkSystemUiOverlayStyle = SystemUiOverlayStyle(
//   statusBarIconBrightness: Brightness.light,
//   statusBarBrightness: Brightness.dark,
//   statusBarColor: Colors.transparent,
// );
