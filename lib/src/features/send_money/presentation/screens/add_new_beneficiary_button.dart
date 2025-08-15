import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class AddNewBeneficiaryButton extends StatelessWidget {
  const AddNewBeneficiaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HelloMeColors.grey300,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 13.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: HelloMeColors.primary600,
                    border: Border.all(color: HelloMeColors.white),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: HelloMeColors.white),
                ),
                16.horizontalSpace,
                Text(
                  "Add new Beneficiary",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    letterSpacing: -0.44,
                    color: HelloMeColors.grey800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
