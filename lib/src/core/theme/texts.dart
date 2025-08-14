import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // H1
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w400,
    ),
    // Title1
    headlineLarge: TextStyle(
      fontSize: 36.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.sp,
      color: HelloMeColors.black,
      // fontWeight: FontWeight.w500,
    ),

    // Body
    titleMedium: TextStyle(
      fontSize: 28.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w700,
    ),
    // Title1-Bold
    titleLarge: TextStyle(
      fontSize: 32.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      fontSize: 22.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w700,
    ),

    // Title2-Bold
    labelLarge: TextStyle(fontSize: 18.sp, color: HelloMeColors.black),
    // Body2-Bold
    labelMedium: TextStyle(
      fontSize: 16.sp,
      color: HelloMeColors.black,
      // fontWeight: FontWeight.w400,
    ),
    // Body2
    labelSmall: TextStyle(
      fontSize: 14.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    // Headline-Bold
    bodyLarge: TextStyle(fontSize: 20.sp, color: HelloMeColors.black),
    // Headline
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w500,
    ),
    // Body-Bold
    bodySmall: TextStyle(
      fontSize: 13.sp,
      color: HelloMeColors.black,
      fontWeight: FontWeight.w500,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    // H1
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w400,
    ),
    // Title1
    headlineLarge: TextStyle(
      fontSize: 36.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(fontSize: 20.sp, color: HelloMeColors.white),

    // Body
    titleMedium: TextStyle(
      fontSize: 28.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w700,
    ),
    // Title1-Bold
    titleLarge: TextStyle(
      fontSize: 32.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      fontSize: 22.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w700,
    ),

    // Title2-Bold
    labelLarge: TextStyle(fontSize: 18.sp, color: HelloMeColors.white),
    // Body2-Bold
    labelMedium: TextStyle(fontSize: 16.sp, color: HelloMeColors.white),
    // Body2
    labelSmall: TextStyle(
      fontSize: 14.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    // Headline-Bold
    bodyLarge: TextStyle(fontSize: 20.sp, color: HelloMeColors.white),
    // Headline
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w500,
    ),
    // Body-Bold
    bodySmall: TextStyle(
      fontSize: 13.sp,
      color: HelloMeColors.white,
      fontWeight: FontWeight.w500,
    ),
  );
}
