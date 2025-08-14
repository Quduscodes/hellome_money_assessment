import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hellome_assessment/src/core/constants/string_const.dart';
import 'package:hellome_assessment/src/core/responsive_wrapper.dart';
import 'package:hellome_assessment/src/features/app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class HelloMeApp {
  const HelloMeApp._();

  static boot() async {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      Directory directory = await pathProvider
          .getApplicationDocumentsDirectory();
      Hive.init(directory.path);
      await Hive.openBox<String>(StringConst.appThemeBox);

      runApp(
        const RootRestorationScope(
          restorationId: "root",
          child: ProviderScope(child: ResponsiveWrapper(child: MyApp())),
        ),
      );
    }, (error, stackTrace) => debugPrint(stackTrace.toString()));
  }
}
