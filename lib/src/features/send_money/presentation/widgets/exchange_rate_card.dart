import 'package:flutter/material.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class ExchangeRateCard extends StatelessWidget {
  const ExchangeRateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '1 GBP = 2203.12 NGN',
        style: TextStyle(
          color: HelloMeColors.primary600,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.3,
          letterSpacing: -0.36,
        ),
      ),
    );
  }
}
