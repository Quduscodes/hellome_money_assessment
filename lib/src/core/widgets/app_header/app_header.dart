import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';

import '../../theme/colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("app_bar_background".png),
          fit: BoxFit.cover,
        ),
        color: HelloMeColors.secondary800,
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0.h),
            child: Text(
              title,
              style: TextStyle(
                color: HelloMeColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
