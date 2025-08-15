import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

import 'account_selection_bottom_sheet.dart';

class SendAmountCard extends StatelessWidget {
  final double amount;
  final String currency;
  final double availableBalance;
  final double promoCredit;
  final Function(double) onAmountChanged;
  final Function(String)? onCurrencyChanged;

  const SendAmountCard({
    super.key,
    required this.amount,
    required this.currency,
    required this.availableBalance,
    required this.promoCredit,
    required this.onAmountChanged,
    this.onCurrencyChanged,
  });

  void _showAccountSelectionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AccountSelectionBottomSheet(
        onAccountSelected: (account) {
          if (onCurrencyChanged != null) {
            onCurrencyChanged!(account['currency']);
          }
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.primary50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.north_east,
                        color: HelloMeColors.grey500,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "You're sending",
                        style: TextStyle(
                          color: HelloMeColors.grey500,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: HelloMeColors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Promo Credit',
                              style: TextStyle(
                                color: HelloMeColors.secondary500,
                                fontSize: 12,
                                height: 1.5,
                                letterSpacing: -0.24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '£${promoCredit.toStringAsFixed(0)}',
                          style: TextStyle(
                            color: HelloMeColors.primary600,
                            fontSize: 16,
                            height: 1.4,
                            letterSpacing: -0.32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Available Balance:',
                        style: TextStyle(
                          color: HelloMeColors.grey500,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '£${availableBalance.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: HelloMeColors.grey500,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: amount.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: HelloMeColors.grey700,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    onChanged: (value) {
                      double? newAmount = double.tryParse(value);
                      if (newAmount != null) {
                        onAmountChanged(newAmount);
                      }
                    },
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
                        Text('🇬🇧', style: TextStyle(fontSize: 20)),
                        SizedBox(width: 8),
                        Text(
                          currency,
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
            16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
