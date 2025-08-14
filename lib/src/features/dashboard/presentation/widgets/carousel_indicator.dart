import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class CarouselIndicators extends StatelessWidget {
  final int totalPages;
  final int currentPage;
  final Color? activeColor;
  final Color? inactiveColor;

  const CarouselIndicators({
    super.key,
    required this.totalPages,
    required this.currentPage,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == currentPage
                ? (activeColor ?? HelloMeColors.primary50)
                : (inactiveColor ?? HelloMeColors.primary200),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
