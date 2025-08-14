import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_header/app_header.dart';

class SendMoneyHeader extends StatelessWidget {
  const SendMoneyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          AppHeader(title: "Send Money"),
          24.verticalSpace,
        ],
      ),
    );
  }
}
