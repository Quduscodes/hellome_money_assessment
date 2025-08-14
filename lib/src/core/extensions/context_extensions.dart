import 'package:flutter/material.dart';

import '../constants/windows_helper.dart';

extension ContextExtension on BuildContext {
  bool get isMediumScreen => WindowSizeHelper.isMedium(this);
  bool get isExpandedScreen => WindowSizeHelper.isExpanded(this);
  bool get isCompactScreen => WindowSizeHelper.isCompact(this);

  double get bottomPadding => MediaQuery.of(this).padding.bottom;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get availableHeight =>
      MediaQuery.of(this).size.height -
      MediaQuery.of(this).padding.top -
      MediaQuery.of(this).padding.bottom;

  void hideKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
