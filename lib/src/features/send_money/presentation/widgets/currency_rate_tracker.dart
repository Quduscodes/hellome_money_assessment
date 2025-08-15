import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class CurrencyRateTracker extends StatefulWidget {
  const CurrencyRateTracker({super.key});

  @override
  State<CurrencyRateTracker> createState() => _CurrencyRateTrackerState();
}

class _CurrencyRateTrackerState extends State<CurrencyRateTracker>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late Timer _timer;

  final List<Map<String, String>> currencyRates = [
    {
      'fromFlag': '🇬🇧',
      'fromCurrency': '£1',
      'toFlag': '🇳🇬',
      'toCurrency': '₦ 2090',
    },
    {
      'fromFlag': '🇬🇧',
      'fromCurrency': '£1',
      'toFlag': '🇪🇺',
      'toCurrency': '€ 1.19',
    },
    {
      'fromFlag': '🇬🇧',
      'fromCurrency': '£1',
      'toFlag': '🇺🇸',
      'toCurrency': '\$ 1.25',
    },
    {
      'fromFlag': '🇺🇸',
      'fromCurrency': '\$1',
      'toFlag': '🇳🇬',
      'toCurrency': '₦ 1672',
    },
    {
      'fromFlag': '🇪🇺',
      'fromCurrency': '€1',
      'toFlag': '🇳🇬',
      'toCurrency': '₦ 1756',
    },
    {
      'fromFlag': '🇬🇧',
      'fromCurrency': '£1',
      'toFlag': '🇨🇦',
      'toCurrency': 'C\$ 1.58',
    },
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (_scrollController.hasClients) {
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double currentScrollPosition = _scrollController.offset;

        if (currentScrollPosition >= maxScrollExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.animateTo(
            currentScrollPosition + 1,
            duration: Duration(milliseconds: 50),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> infiniteRates = [
      ...currencyRates,
      ...currencyRates,
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: infiniteRates.length,
        itemBuilder: (context, index) {
          final rate = infiniteRates[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 9),
            decoration: BoxDecoration(
              color: HelloMeColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  rate['fromFlag']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HelloMeColors.grey700,
                    letterSpacing: -0.32,
                    height: 1.4,
                  ),
                ),
                4.horizontalSpace,
                Text(
                  rate['fromCurrency']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HelloMeColors.grey700,
                    letterSpacing: -0.32,
                    height: 1.4,
                  ),
                ),
                4.horizontalSpace,

                Icon(Icons.arrow_forward, size: 12, color: Colors.grey[600]),
                4.horizontalSpace,

                Text(
                  rate['toFlag']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HelloMeColors.grey700,
                    letterSpacing: -0.32,
                    height: 1.4,
                  ),
                ),
                4.horizontalSpace,

                Text(
                  rate['toCurrency']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HelloMeColors.grey700,
                    letterSpacing: -0.32,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
