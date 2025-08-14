import 'package:flutter/material.dart';

enum WindowSizeClass { compact, medium, expanded }

class WindowSizeHelper {
  static WindowSizeClass getWindowSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return WindowSizeClass.compact; // Most iPhones or android phones
    } else if (width >= 600 && width < 900) {
      return WindowSizeClass.medium; // Some iPads & foldables
    } else {
      return WindowSizeClass.expanded; // iPad Pro, desktops
    }
  }

  static bool isCompact(BuildContext context) =>
      getWindowSize(context) == WindowSizeClass.compact;

  static bool isMedium(BuildContext context) =>
      getWindowSize(context) == WindowSizeClass.medium;

  static bool isExpanded(BuildContext context) =>
      getWindowSize(context) == WindowSizeClass.expanded;

  /// iOS-Specific Adaptations
  static bool isIpad(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768; // iPad mini and above

  static bool isIphoneProMax(BuildContext context) =>
      MediaQuery.of(context).size.width > 428; // iPhone Pro Max width

  /// Returns the appropriate padding based on size class
  static double getHorizontalPadding(BuildContext context) {
    if (isIpad(context)) return 24.0;
    switch (getWindowSize(context)) {
      case WindowSizeClass.compact:
        return 8.0;
      case WindowSizeClass.medium:
        return 16.0;
      case WindowSizeClass.expanded:
        return 32.0;
    }
  }

  /// Returns the appropriate padding based on size class
  static double getVerticalPadding(BuildContext context) {
    if (isIpad(context)) return 24.0;
    switch (getWindowSize(context)) {
      case WindowSizeClass.compact:
        return 8.0;
      case WindowSizeClass.medium:
        return 16.0;
      case WindowSizeClass.expanded:
        return 32.0;
    }
  }

  /// Returns the number of columns for grid layouts
  static int getColumnCount(BuildContext context) {
    if (isIpad(context)) return 2; // iPads should have at least 2 columns
    switch (getWindowSize(context)) {
      case WindowSizeClass.compact:
        return 1;
      case WindowSizeClass.medium:
        return 2;
      case WindowSizeClass.expanded:
        return 3;
    }
  }
}
