import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: HelloMeColors.primary600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
