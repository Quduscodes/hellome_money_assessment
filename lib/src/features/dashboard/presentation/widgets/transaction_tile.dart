import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/features/dashboard/presentation/widgets/status_chip.dart';
import 'package:hellome_assessment/src/features/dashboard/presentation/widgets/transaction_icon.dart';

import '../../../../core/theme/colors.dart';
import '../../data/models/transaction_item.dart';

class TransactionTile extends StatelessWidget {
  final TransactionItem transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h),
        child: Row(
          children: [
            TransactionIcon(type: transaction.type),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: HelloMeColors.grey600,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    '${transaction.date} • ${transaction.time}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: HelloMeColors.grey500,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  transaction.amount,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: HelloMeColors.grey700,
                  ),
                ),
                const SizedBox(height: 4),
                StatusChip(status: transaction.status),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
