import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../data/models/transaction_status.dart';

class StatusChip extends StatelessWidget {
  final TransactionStatus status;

  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    String text;
    Color textColor;
    Color? backgroundColor;

    switch (status) {
      case TransactionStatus.success:
        text = 'Success';
        textColor = HelloMeColors.positive600;
        backgroundColor = HelloMeColors.positive50;
        break;
      case TransactionStatus.declined:
        text = 'Declined';
        backgroundColor = HelloMeColors.negative50;
        textColor = HelloMeColors.negative600;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadiusDirectional.circular(60),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
