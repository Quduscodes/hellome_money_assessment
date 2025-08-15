import 'beneficiary_country.dart';

class Beneficiary {
  final String name;
  final String accountNumber;
  final String bankName;
  final BeneficiaryCountry country;
  final String initials;

  Beneficiary({
    required this.name,
    required this.accountNumber,
    required this.bankName,
    required this.country,
    required this.initials,
  });
}
