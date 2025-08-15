import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';

import '../../theme/colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.title, this.autoLeading = false});
  final String title;
  final bool autoLeading;
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0.h, horizontal: 16.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (autoLeading)
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back, color: HelloMeColors.white),
                  ),
                ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HelloMeColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (autoLeading) const SizedBox(width: 40),
            ],
          ),
        ),
      ),
    );
  }
}
