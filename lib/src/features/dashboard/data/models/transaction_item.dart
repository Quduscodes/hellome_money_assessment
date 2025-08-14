import 'package:hellome_assessment/src/features/dashboard/data/models/transaction_status.dart';
import 'package:hellome_assessment/src/features/dashboard/data/models/transaction_type.dart';

class TransactionItem {
  final TransactionType type;
  final String title;
  final String date;
  final String time;
  final String amount;
  final TransactionStatus status;

  TransactionItem({
    required this.type,
    required this.title,
    required this.date,
    required this.time,
    required this.amount,
    required this.status,
  });
}
