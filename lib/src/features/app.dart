import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hellome_assessment/src/core/theme/hellome_theme.dart';

import '../core/bottom_nav/presentation/banking_main_screen.dart';
import '../core/constants/string_const.dart';
import '../core/router/router.dart';
import '../core/theme/theme_notifier.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      restorationScopeId: StringConst.appName,
      title: StringConst.appName,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers().onGenerateRoute,
      darkTheme: HelloMeTheme.getDarkThemeData(context),
      theme: HelloMeTheme.getLightThemeData(context),
      // themeMode: themeMode,
      home: BankingMainScreen(),
      builder: (BuildContext context, Widget? widget) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaler: TextScaler.linear(1.1)),
          child: widget!,
        );
      },
    );
  }
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Hello World')));
  }
}
