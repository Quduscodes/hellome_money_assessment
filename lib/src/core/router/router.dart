import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hellome_assessment/src/core/theme/colors.dart';

abstract class Routes {
  static const sample = '/sample';
}

class Routers {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.sample:
        return getRoute(Placeholder(), settings);

      default:
        return unknownRoutePage(settings.name!);
    }
  }
}

PageRoute unknownRoutePage(String routeName) => CupertinoPageRoute(
  builder: (ctx) => Scaffold(
    body: Container(
      color: HelloMeColors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              routeName == "/"
                  ? 'Initial route not found! \n did you forget to annotate your home page with @initial or @MaterialRoute(initial:true)?'
                  : 'Route name $routeName is not found!',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          OutlinedButton.icon(
            label: const Text('Back'),
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(ctx).pop(),
          ),
        ],
      ),
    ),
  ),
);

/// this method returns a [MaterialPageRoute] for android and [CupertinoPageRoute] for ios
Route<dynamic> getRoute(Widget widget, RouteSettings? settings) {
  if (Platform.isAndroid) {
    return MaterialPageRoute<dynamic>(
      builder: (context) => widget,
      settings: settings,
    );
  } else {
    return CupertinoPageRoute<dynamic>(
      builder: (context) => widget,
      settings: settings,
    );
  }
}
