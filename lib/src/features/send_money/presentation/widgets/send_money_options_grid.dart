import 'package:flutter/material.dart';
import 'package:hellome_assessment/src/features/send_money/presentation/widgets/send_money_option_card.dart';

import '../../data/models/send_money_option.dart';

class SendMoneyOptionsGrid extends StatelessWidget {
  final List<SendMoneyOption> options = [
    SendMoneyOption(
      icon: "local",
      title: 'Local',
      subtitle: 'GBP → GBP\n(Fast Payment)',
      description:
          'Need to make a local payment? Select this option for fast, secure transfers within your country!',
    ),
    SendMoneyOption(
      icon: "international",
      title: 'International',
      subtitle: '',
      description:
          'Send money to your friends or family overseas effortlessly! Choose this option for quick and reliable international transfers.',
    ),
    SendMoneyOption(
      icon: "payment_link",
      title: 'Payment Link',
      subtitle: '',
      description: 'Create a payment link, for fast and secure transaction',
    ),
    SendMoneyOption(
      icon: "people",
      title: 'HelloMe Money Friends',
      subtitle: '',
      description: 'Send money to your friends on HelloMe Money using tags',
    ),
  ];

  SendMoneyOptionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemCount: options.length,
      itemBuilder: (context, index) {
        return SendMoneyOptionCard(option: options[index]);
      },
    );
  }
}
