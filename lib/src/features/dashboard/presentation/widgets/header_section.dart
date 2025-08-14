import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white.withOpacity(0.2),
              child: const Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(width: 12),
            const Text(
              'Welcome Saito',
              style: TextStyle(
                color: HelloMeColors.grey50,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: HelloMeColors.primary100,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: const Icon(
                Icons.notifications_outlined,
                color: HelloMeColors.primary600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
