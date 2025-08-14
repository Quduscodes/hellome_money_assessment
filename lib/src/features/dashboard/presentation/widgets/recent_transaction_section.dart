import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/features/dashboard/presentation/widgets/transaction_tile.dart';

import '../../../../core/theme/colors.dart';
import '../../data/models/transaction_item.dart';
import '../../data/models/transaction_status.dart';
import '../../data/models/transaction_type.dart';

class RecentTransactionsSection extends StatelessWidget {
  final List<TransactionItem> transactions = [
    TransactionItem(
      type: TransactionType.deposit,
      title: 'Fund deposit',
      date: '17 Feb 2025',
      time: '12:02pm',
      amount: '£350.00',
      status: TransactionStatus.success,
    ),
    TransactionItem(
      type: TransactionType.deposit,
      title: 'Fund deposit',
      date: '17 Feb 2025',
      time: '12:02pm',
      amount: '€250.00',
      status: TransactionStatus.success,
    ),
    TransactionItem(
      type: TransactionType.conversion,
      title: 'Currency conversion',
      date: '17 Feb 2025',
      time: '12:02pm',
      amount: '£240.00',
      status: TransactionStatus.declined,
    ),
    TransactionItem(
      type: TransactionType.conversion,
      title: 'Currency conversion',
      date: '17 Feb 2025',
      time: '12:02pm',
      amount: '\$240.00',
      status: TransactionStatus.success,
    ),
  ];

  RecentTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: HelloMeColors.secondary500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HelloMeColors.primary500,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: HelloMeColors.primary500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ...transactions.map(
            (transaction) => TransactionTile(transaction: transaction),
          ),
        ],
      ),
    );
  }
}
