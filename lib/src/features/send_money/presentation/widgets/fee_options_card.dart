import 'package:flutter/material.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class FeeOptionsCard extends StatefulWidget {
  const FeeOptionsCard({super.key});

  @override
  _FeeOptionsCardState createState() => _FeeOptionsCardState();
}

class _FeeOptionsCardState extends State<FeeOptionsCard> {
  bool isFeeSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.grey300,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFeeSelected = true;
                  });
                },
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      color: isFeeSelected
                          ? HelloMeColors.primary600
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Fee',
                        style: TextStyle(
                          color: isFeeSelected
                              ? HelloMeColors.grey802
                              : HelloMeColors.grey500,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFeeSelected = false;
                  });
                },
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      color: !isFeeSelected
                          ? HelloMeColors.primary600
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'No Fee',
                        style: TextStyle(
                          color: !isFeeSelected
                              ? HelloMeColors.grey802
                              : HelloMeColors.grey500,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
}
