import 'package:flutter/material.dart';

class CurrencyPairTile extends StatelessWidget {
  final String fromFlag;
  final String fromCurrency;
  final String toFlag;
  final String toCurrency;
  final bool isSelected;

  const CurrencyPairTile({
    super.key,
    required this.fromFlag,
    required this.fromCurrency,
    required this.toFlag,
    required this.toCurrency,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: isSelected
            ? Border.all(color: Color(0xFF0066CC), width: 1)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(fromFlag, style: TextStyle(fontSize: 16)),
          SizedBox(width: 2),
          Text(
            fromCurrency,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 4),
          Icon(Icons.arrow_forward, size: 12, color: Colors.grey[600]),
          SizedBox(width: 4),
          Text(toFlag, style: TextStyle(fontSize: 16)),
          SizedBox(width: 2),
          Flexible(
            child: Text(
              toCurrency,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}


