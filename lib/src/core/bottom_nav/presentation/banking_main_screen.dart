import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hellome_assessment/src/core/extensions/context_extensions.dart';
import 'package:hellome_assessment/src/core/extensions/string_extensions.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../features/dashboard/presentation/screens/dashboard_page.dart';
import '../../../features/send_money/presentation/screens/send_money_screen.dart';
import '../../theme/colors.dart';
import 'custom_nav_item.dart';

class BankingMainScreen extends StatefulWidget {
  const BankingMainScreen({super.key});

  @override
  State<BankingMainScreen> createState() => _BankingMainScreenState();
}

class _BankingMainScreenState extends State<BankingMainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DashboardPage(),
    const Placeholder(),
    const SendMoneyScreen(),
    const Placeholder(),
    const Placeholder(),
  ];
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
        backgroundColor: HelloMeColors.white,
        body: IndexedStack(index: _currentIndex, children: _pages),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => _currentIndex = 2);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
          backgroundColor: Colors.transparent,
          elevation: 2,
          child: Container(
            height: 64.h,
            width: 64.w,
            decoration: BoxDecoration(
              color: HelloMeColors.primary600,
              shape: BoxShape.circle,
              border: Border.all(color: HelloMeColors.white, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WebsafeSvg.asset("send".svg, height: 20, width: 20),
                  Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: HelloMeColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          height: context.screenHeight * 0.08,
          padding: EdgeInsets.zero,
          color: HelloMeColors.white,
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBottomNavItem(
                  icon: "dashboard".svg,
                  label: 'Dashboard',
                  isActive: _currentIndex == 0,
                  onTap: () => setState(() => _currentIndex = 0),
                ),
                CustomBottomNavItem(
                  icon: "finance".svg,
                  label: 'Transactions',
                  isActive: _currentIndex == 1,
                  onTap: () => setState(() => _currentIndex = 1),
                ),
                const SizedBox(width: 40), // Space for FAB
                CustomBottomNavItem(
                  icon: "setting".svg,
                  label: 'Settings',
                  isActive: _currentIndex == 3,
                  onTap: () => setState(() => _currentIndex = 3),
                ),
                CustomBottomNavItem(
                  icon: "user".svg,
                  label: 'Profile',
                  isActive: _currentIndex == 4,
                  onTap: () => setState(() => _currentIndex = 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
