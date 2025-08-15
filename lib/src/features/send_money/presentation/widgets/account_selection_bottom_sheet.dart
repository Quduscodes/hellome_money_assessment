import 'package:flutter/material.dart';

import 'account_tile.dart';

class AccountSelectionBottomSheet extends StatelessWidget {
  final Function(Map<String, dynamic>) onAccountSelected;

  const AccountSelectionBottomSheet({
    super.key,
    required this.onAccountSelected,
  });

  final List<Map<String, dynamic>> accounts = const [
    {
      'name': 'Main Account',
      'accountNumber': '****1234',
      'balance': '24,624.00',
      'currency': 'GBP',
      'flag': '🇬🇧',
      'type': 'Current Account',
    },
    {
      'name': 'Savings Account',
      'accountNumber': '****5678',
      'balance': '12,450.50',
      'currency': 'GBP',
      'flag': '🇬🇧',
      'type': 'Savings Account',
    },
    {
      'name': 'USD Account',
      'accountNumber': '****9012',
      'balance': '5,250.75',
      'currency': 'USD',
      'flag': '🇺🇸',
      'type': 'Foreign Currency',
    },
    {
      'name': 'EUR Account',
      'accountNumber': '****3456',
      'balance': '3,180.25',
      'currency': 'EUR',
      'flag': '🇪🇺',
      'type': 'Foreign Currency',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'Select Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.close, size: 20, color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: accounts.length,
              itemBuilder: (context, index) {
                final account = accounts[index];
                return AccountTile(
                  account: account,
                  onTap: () => onAccountSelected(account),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


