import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';
import 'package:hellome_assessment/src/core/router/router.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

import '../../../../core/widgets/app_header/app_header.dart';
import '../widgets/currency_rate_tracker.dart';
import '../widgets/delivery_method_card.dart';
import '../widgets/exchange_rate_card.dart';
import '../widgets/fee_options_card.dart';
import '../widgets/fee_summary_card.dart';
import '../widgets/recipient_amount_card.dart';
import '../widgets/send_amount_card.dart';

class SendLocalMoneyScreen extends StatefulWidget {
  const SendLocalMoneyScreen({super.key});

  @override
  State<SendLocalMoneyScreen> createState() => _SendLocalMoneyScreenState();
}

class _SendLocalMoneyScreenState extends State<SendLocalMoneyScreen> {
  String selectedCurrency = 'GBP';
  double sendAmount = 500.00;
  bool usePromoCredit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HelloMeColors.grey200,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            AppHeader(title: "Choose Beneficiary", autoLeading: true),
            16.verticalSpace,
            CurrencyRateTracker(),
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    4.verticalSpace,
                    SendAmountCard(
                      amount: sendAmount,
                      currency: selectedCurrency,
                      availableBalance: 24624.00,
                      promoCredit: 10000.00,
                      onAmountChanged: (value) {
                        setState(() {
                          sendAmount = value;
                        });
                      },
                    ),
                    8.verticalSpace,
                    RecipientAmountCard(sendAmount: sendAmount),
                    16.verticalSpace,
                    ExchangeRateCard(),
                    6.verticalSpace,
                    DeliveryMethodCard(),
                    16.verticalSpace,
                    FeeOptionsCard(),
                    31.verticalSpace,
                    FeeSummaryCard(
                      sendAmount: sendAmount,
                      usePromoCredit: usePromoCredit,
                    ),
                    24.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            usePromoCredit = !usePromoCredit;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HelloMeColors.secondary500,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Image.asset("promo".png, height: 24, width: 24),
                        label: Text(
                          'Use Promo Credit',
                          style: TextStyle(
                            color: HelloMeColors.grey50,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.44,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Routes.chooseLocalBeneficiaryScreen,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HelloMeColors.primary600,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
