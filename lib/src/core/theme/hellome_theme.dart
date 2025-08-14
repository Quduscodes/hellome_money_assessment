import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/theme_extension.dart';
import 'package:hellome_assessment/src/core/theme/texts.dart';

import 'colors.dart';

class HelloMeTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    // return _darkThemeData(context);
    return _lightThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: HelloMeColors.white,
        iconTheme: IconThemeData(color: HelloMeColors.black),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        side: BorderSide(color: HelloMeColors.primary600, width: 2.0),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return HelloMeColors.primary600; // Checkbox color when selected
          }
          return HelloMeColors.white; // Checkbox color when unselected
        }),
        checkColor: WidgetStateProperty.all(Colors.white), // Check icon color
      ),
      fontFamilyFallback: const ['Roboto'],
      brightness: Brightness.light,
      textTheme: AppTextTheme.lightTextTheme,
      canvasColor: HelloMeColors.primary100,
      tabBarTheme: TabBarThemeData(
        dividerColor: HelloMeColors.primary100,
        indicatorColor: HelloMeColors.primary600,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: context.textTheme.bodyMedium?.copyWith(
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: context.textTheme.bodyMedium?.copyWith(
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
        labelColor: HelloMeColors.primary500,
        unselectedLabelColor: HelloMeColors.primary100,
      ),
      popupMenuTheme: Theme.of(
        context,
      ).popupMenuTheme.copyWith(color: HelloMeColors.white),
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
        textStyle: TextStyle(
          fontSize: 13,
          color: HelloMeColors.black,
          fontWeight: FontWeight.w400,
        ),
        menuStyle: MenuStyle(
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.pressed)) {
              return HelloMeColors.primary100;
            } else {
              return HelloMeColors.primary100;
            }
          }),
        ),
      ),
      scaffoldBackgroundColor: HelloMeColors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
        backgroundColor: HelloMeColors.white,
        modalElevation: 0.0,
        showDragHandle: true,
        dragHandleColor: HelloMeColors.primary600,
      ),
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: HelloMeColors.black,
        iconTheme: IconThemeData(color: HelloMeColors.white),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        side: BorderSide(color: HelloMeColors.primary600, width: 2.0),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return HelloMeColors.primary600; // Checkbox color when selected
          }
          return HelloMeColors.white; // Checkbox color when unselected
        }),
        checkColor: WidgetStateProperty.all(Colors.white), // Check icon color
      ),
      fontFamilyFallback: ['Roboto'],
      popupMenuTheme: Theme.of(
        context,
      ).popupMenuTheme.copyWith(color: HelloMeColors.primary500),
      brightness: Brightness.dark,
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
        textStyle: TextStyle(
          fontSize: 13,
          color: HelloMeColors.white,
          fontWeight: FontWeight.w400,
        ),
        menuStyle: MenuStyle(
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.pressed)) {
              return HelloMeColors.black;
            } else {
              return HelloMeColors.black;
            }
          }),
        ),
      ),
      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
        backgroundColor: HelloMeColors.white,
        modalElevation: 0.0,
        showDragHandle: true,
        dragHandleColor: HelloMeColors.primary600,
      ),
      canvasColor: HelloMeColors.primary600,
      textTheme: AppTextTheme.darkTextTheme,
      iconTheme: Theme.of(
        context,
      ).iconTheme.copyWith(color: HelloMeColors.white),
      scaffoldBackgroundColor: HelloMeColors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
