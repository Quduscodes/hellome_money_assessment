import 'package:flutter/material.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

import '../../data/models/beneficiary.dart';
import '../../data/models/beneficiary_country.dart';

class BeneficiaryTile extends StatelessWidget {
  final Beneficiary beneficiary;
  final int index;
  final Function(Beneficiary)? onTap;

  const BeneficiaryTile({
    super.key,
    required this.beneficiary,
    this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(beneficiary),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: (index % 2 == 0)
              ? HelloMeColors.white
              : HelloMeColors.primary50,
          border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 0.5),
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: HelloMeColors.grey400,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 7.0,
                  horizontal: 9.0,
                ),
                child: Center(
                  child: Text(
                    beneficiary.initials,
                    style: const TextStyle(
                      color: HelloMeColors.grey50,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    beneficiary.name,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 1.3,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w500,
                      color: HelloMeColors.secondary500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: beneficiary.accountNumber,
                          style: TextStyle(
                            fontSize: 10,
                            color: HelloMeColors.primary800,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            letterSpacing: 0.2,
                          ),
                        ),
                        TextSpan(
                          text: ' - ${beneficiary.bankName}',
                          style: TextStyle(
                            fontSize: 10,
                            color: HelloMeColors.primary800,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: ClipOval(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      _getFlagEmoji(),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getFlagEmoji() {
    switch (beneficiary.country) {
      case BeneficiaryCountry.nigeria:
        return '🇳🇬';
      case BeneficiaryCountry.uk:
        return '🇬🇧';
      case BeneficiaryCountry.usa:
        return '🇺🇸';
      case BeneficiaryCountry.canada:
        return '🇨🇦';
    }
  }
}
