import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class DeliveryMethodCard extends StatelessWidget {
  const DeliveryMethodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: HelloMeColors.grey400),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          children: [
            Text(
              'Choose delivery method',
              style: TextStyle(
                color: HelloMeColors.grey500,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.3,
                letterSpacing: -0.36,
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_down, color: HelloMeColors.secondary500),
          ],
        ),
      ),
    );
  }
}
