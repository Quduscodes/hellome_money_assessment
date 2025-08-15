import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class FeeSummaryCard extends StatelessWidget {
  final double sendAmount;
  final bool usePromoCredit;
  final double feeAmount;
  final double discount;

  const FeeSummaryCard({
    Key? key,
    required this.sendAmount,
    required this.usePromoCredit,
    this.feeAmount = 4.00,
    this.discount = 0.00,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalAmount = sendAmount + feeAmount - discount;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fee :',
                style: TextStyle(
                  color: HelloMeColors.grey500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
              Text(
                '£ ${feeAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: HelloMeColors.secondary500,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount :',
                style: TextStyle(
                  color: HelloMeColors.grey500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
              Text(
                '£ ${discount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: HelloMeColors.secondary500,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payable Amount :',
                style: TextStyle(
                  color: HelloMeColors.positive500,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
              Text(
                '£ ${totalAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: HelloMeColors.positive600,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.44,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
