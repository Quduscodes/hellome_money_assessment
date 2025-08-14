import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';

import '../../../../core/theme/colors.dart';
import 'action_button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionButton(icon: "bank".svg, label: 'Account', onTap: () {}),
        8.horizontalSpace,
        ActionButton(icon: "add".svg, label: 'Add fund', onTap: () {}),
        8.horizontalSpace,
        ActionButton(icon: "convert".svg, label: 'Conversion', onTap: () {}),
        4.horizontalSpace,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: HelloMeColors.primary200, width: 0.6),
          ),
          child: const Icon(Icons.more_horiz, color: HelloMeColors.primary100),
        ),
      ],
    );
  }
}
