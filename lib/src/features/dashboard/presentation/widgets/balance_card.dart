import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import 'balance_display.dart';
import 'dashboard_action_buttons.dart';
import 'header_section.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.8, -0.6), // Approximates 153.69 degrees
          end: Alignment(0.8, 0.6),
          colors: [HelloMeColors.primary500, HelloMeColors.primary600],
          stops: [
            0.2672,
            1.0, // Clamped from 1.1812
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16.h,
            bottom: 20.h,
            left: 24.w,
            right: 24.w,
          ),
          child: Column(
            children: [
              const HeaderSection(),
              24.verticalSpace,
              const BalanceDisplay(),
              26.verticalSpace,
              const ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
