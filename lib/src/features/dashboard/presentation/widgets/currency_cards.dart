import 'package:flutter/material.dart';

class CurrencyCards extends StatelessWidget {
  const CurrencyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(0, 20),
          child: Transform.rotate(
            angle: 0.1,
            child: const CurrencyCard(
              currency: 'EURO',
              flag: '🇪🇺',
              color: Color(0xFF1976D2),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const CurrencyCard(
            currency: 'NGN',
            flag: '🇳🇬',
            color: Color(0xFF4CAF50),
          ),
        ),
        Transform.translate(
          offset: const Offset(-20, 0),
          child: Transform.rotate(
            angle: -0.1,
            child: const CurrencyCard(
              currency: 'GBP',
              flag: '🇬🇧',
              color: Color(0xFF1976D2),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-30, -10),
          child: const CurrencyCard(
            currency: 'TUR',
            flag: '🇹🇷',
            color: Color(0xFFE53935),
          ),
        ),
      ],
    );
  }
}

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String flag;
  final Color color;

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.flag,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(flag, style: const TextStyle(fontSize: 12)),
          Text(
            currency,
            style: TextStyle(
              color: color,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
