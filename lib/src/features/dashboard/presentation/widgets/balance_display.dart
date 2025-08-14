import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../data/models/balance_item.dart';
import 'carousel_indicator.dart';

class BalanceDisplay extends StatefulWidget {
  const BalanceDisplay({super.key});

  @override
  State<BalanceDisplay> createState() => _BalanceDisplayState();
}

class _BalanceDisplayState extends State<BalanceDisplay> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<BalanceItem> _balances = [
    BalanceItem(flag: '🇬🇧', currency: 'GBP Balance', amount: '£0.00'),
    BalanceItem(flag: '🇺🇸', currency: 'USD Balance', amount: '\$0.00'),
    BalanceItem(flag: '🇪🇺', currency: 'EUR Balance', amount: '€0.00'),
    BalanceItem(flag: '🇳🇬', currency: 'NGN Balance', amount: '₦0.00'),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 95.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: _balances.length,
            itemBuilder: (context, index) {
              final balance = _balances[index];
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          width: 20,
                          height: 12,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              balance.flag,
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${balance.currency} Balance',
                        style: TextStyle(
                          color: HelloMeColors.grey50,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.visibility_off_outlined,
                        color: HelloMeColors.grey50,
                        size: 20,
                      ),
                    ],
                  ),
                  8.verticalSpace,
                  Text(
                    balance.amount,
                    style: TextStyle(
                      color: HelloMeColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        12.verticalSpace,
        CarouselIndicators(
          totalPages: _balances.length,
          currentPage: _currentPage,
        ),
      ],
    );
  }
}
