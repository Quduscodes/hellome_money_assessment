import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../theme/colors.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const CustomBottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WebsafeSvg.asset(
            icon,
            colorFilter: ColorFilter.mode(
              isActive ? HelloMeColors.secondary500 : HelloMeColors.grey400,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: isActive
                  ? HelloMeColors.secondary500
                  : HelloMeColors.grey400,
            ),
          ),
        ],
      ),
    );
  }
}
