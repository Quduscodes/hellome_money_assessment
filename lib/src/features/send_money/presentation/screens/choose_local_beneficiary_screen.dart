import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_header/app_header.dart';
import '../../../../core/widgets/search_text_field.dart';
import '../widgets/beneficiary_list_widget.dart';
import 'add_new_beneficiary_button.dart';

class ChooseLocalBeneficiaryScreen extends StatelessWidget {
  const ChooseLocalBeneficiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: Column(
            children: [
              AppHeader(title: "Choose Beneficiary", autoLeading: true),
              24.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AddNewBeneficiaryButton(),
              ),
              24.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SearchInputTextField(
                  hintText: "Search Saved Beneficiaries",
                  onChanged: (String value) {},
                ),
              ),
              24.verticalSpace,
              Expanded(child: BeneficiaryList()),
            ],
          ),
        ),
      ),
    );
  }
}
