import 'package:flutter/material.dart';

import '../../data/models/beneficiary.dart';
import '../../data/models/beneficiary_country.dart';
import 'beneficiary_tile.dart';

class BeneficiaryList extends StatelessWidget {
  const BeneficiaryList({super.key});
  @override
  Widget build(BuildContext context) {
    final beneficiaries = _getSampleBeneficiaries();
    return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: beneficiaries.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return BeneficiaryTile(
          index: index,
          beneficiary: beneficiaries[index],
          onTap: (Beneficiary beneficiary) {},
        );
      },
    );
  }
}

List<Beneficiary> _getSampleBeneficiaries() {
  return [
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Kuda',
      country: BeneficiaryCountry.nigeria,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.uk,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.usa,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.uk,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.canada,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.canada,
      initials: 'SJ',
    ),
    Beneficiary(
      name: 'Samad Julius',
      accountNumber: '8106673596',
      bankName: 'Netbank',
      country: BeneficiaryCountry.nigeria,
      initials: 'SJ',
    ),
  ];
}
