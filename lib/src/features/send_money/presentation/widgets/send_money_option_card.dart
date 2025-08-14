import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

import '../../data/models/send_money_option.dart';

class SendMoneyOptionCard extends StatelessWidget {
  final SendMoneyOption option;

  const SendMoneyOptionCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: HelloMeColors.primary600, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            // Handle option selection
            print('Selected: ${option.title}');
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(option.icon.png, height: 64, width: 64),
                8.verticalSpace,
                Text(
                  option.title,
                  style: const TextStyle(
                    color: HelloMeColors.secondary700,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    height: 0.9,
                    letterSpacing: -0.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                8.verticalSpace,
                Expanded(
                  child: Text(
                    option.description,
                    style: const TextStyle(
                      color: HelloMeColors.grey400,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      height: 1.5,
                      letterSpacing: -0.24,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
