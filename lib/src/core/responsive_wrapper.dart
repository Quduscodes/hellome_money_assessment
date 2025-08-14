import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveWrapper extends StatefulWidget {
  final Widget child;
  const ResponsiveWrapper({super.key, required this.child});

  @override
  State<ResponsiveWrapper> createState() => _ResponsiveWrapperState();
}

class _ResponsiveWrapperState extends State<ResponsiveWrapper> {
  Size? _lastSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final newSize = MediaQuery.of(context).size;

    /// If screen size changed (folded/unfolded), reinitialize ScreenUtil
    if (_lastSize == null || newSize != _lastSize) {
      _lastSize = newSize;
      ScreenUtil.init(
        context,
        designSize: Size(newSize.width, newSize.height),
        minTextAdapt: true,
        splitScreenMode: true,
      );
      setState(() {}); // Force widget rebuild
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
