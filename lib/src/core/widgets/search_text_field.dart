import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

class SearchInputTextField extends StatelessWidget {
  const SearchInputTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText,
    this.autofocus = true,
    this.fillColor = HelloMeColors.white,
  });
  final TextEditingController? controller;
  final Function(String value)? onChanged;
  final String? hintText;
  final bool autofocus;
  final Color fillColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: HelloMeColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: HelloMeColors.grey801),
      ),
      child: TextFormField(
        style: TextStyle(
          color: HelloMeColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.4,
          letterSpacing: -0.32,
        ),
        autofocus: autofocus,
        controller: controller,
        onChanged: onChanged,
        textInputAction: TextInputAction.search,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: hintText,
          enabled: true,
          border: InputBorder.none,
          fillColor: fillColor,
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: HelloMeColors.grey500,
            size: 24,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 14.h,
          ),
          isDense: true,
          hintStyle: TextStyle(
            color: HelloMeColors.grey801,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.4,
            letterSpacing: -0.32,
          ),
        ),
      ),
    );
  }
}
