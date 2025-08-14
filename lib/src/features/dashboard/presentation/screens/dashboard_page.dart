import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/ad_banner_widget.dart';
import '../widgets/balance_card.dart';
import '../widgets/recent_transaction_section.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BalanceCard(),
        Expanded(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            child: Column(
              children: [
                36.verticalSpace,
                const AdBannerWidget(),
                36.verticalSpace,
                RecentTransactionsSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
