import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import 'account_selection_bottom_sheet.dart';

class RecipientAmountCard extends StatelessWidget {
  final double sendAmount;
  final double exchangeRate;

  const RecipientAmountCard({
    Key? key,
    required this.sendAmount,
    this.exchangeRate = 2203.12,
  }) : super(key: key);

  void _showAccountSelectionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AccountSelectionBottomSheet(
        onAccountSelected: (account) {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double recipientAmount = sendAmount * exchangeRate;

    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.primary50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.south_west, color: HelloMeColors.grey500, size: 20),
                SizedBox(width: 8),
                Text(
                  "Recipient gets",
                  style: TextStyle(
                    color: HelloMeColors.grey500,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    recipientAmount.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: HelloMeColors.grey700,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showAccountSelectionBottomSheet(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: HelloMeColors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('🇳🇬', style: TextStyle(fontSize: 20)),
                        SizedBox(width: 8),
                        Text(
                          'NGN',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: HelloMeColors.primary300,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: HelloMeColors.primary300,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
