import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../data/models/transaction_type.dart';

class TransactionIcon extends StatelessWidget {
  final TransactionType type;

  const TransactionIcon({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    Color backgroundColor;
    Color iconColor;

    switch (type) {
      case TransactionType.deposit:
        iconData = Icons.arrow_downward;
        backgroundColor = HelloMeColors.positive50;
        iconColor = HelloMeColors.positive600;
        break;
      case TransactionType.conversion:
        iconData = Icons.sync_alt;
        backgroundColor = HelloMeColors.primary50;
        iconColor = HelloMeColors.primary600;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Icon(iconData, color: iconColor, size: 14),
    );
  }
}
