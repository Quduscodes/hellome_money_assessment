import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/section_tile.dart';
import '../widgets/send_money_header.dart';
import '../widgets/send_money_options_grid.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SendMoneyHeader(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SectionTitle(title: 'Select an option below:'),
                40.verticalSpace,
                SendMoneyOptionsGrid(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
