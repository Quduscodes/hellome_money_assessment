import 'package:flutter/material.dart';

class HelloMeColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  // ignore: unused_element
  HelloMeColors._();

  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);

  static const Color primary50 = Color(0xffEBF4FF);
  static const Color primary100 = Color(0xffD4E7FF);
  static const Color primary200 = Color(0xffA4CFFE);
  static const Color primary300 = Color(0xff77B7FD);
  static const Color primary400 = Color(0xff4A9FFD);
  static const Color primary500 = Color(0xff036BDD);
  static const Color primary600 = Color(0xff1E88FC);
  static const Color primary800 = Color(0xff01366F);

  static const Color secondary500 = Color(0xff05244C);
  static const Color secondary700 = Color(0xff031730);
  static const Color secondary800 = Color(0xff020E1D);

  static const Color positive50 = Color(0xffE6FAEE);
  static const Color positive500 = Color(0xff27BE69);
  static const Color positive600 = Color(0xff1F9854);

  static const Color negative50 = Color(0xffFEECEE);
  static const Color negative600 = Color(0xffE5102E);

  static const Color grey50 = Color(0xffF9FAFB);
  static const Color grey200 = Color(0xffE0E3E5);
  static const Color grey300 = Color(0xffD0D5DD);
  static const Color grey400 = Color(0xff98A2B3);
  static const Color grey500 = Color(0xff667085);
  static const Color grey600 = Color(0xff475467);
  static const Color grey700 = Color(0xff475467);
  static const Color grey800 = Color(0xff1D2939);
  static const Color grey801 = Color(0xff979797);
  static const Color grey802 = Color(0xffF5F5F5);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value)).clamp(
        0.0,
        1.0,
      ),
    );

    return hslDark.toColor();
  }
}
