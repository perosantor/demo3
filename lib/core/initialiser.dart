import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'app.dart';
import 'locator.dart';

enum Env {
  dev,
  prod,
}

void runTheApp(String appName, Env environment) {
  runZonedGuarded(
    () async {
      FlutterError.onError = (FlutterErrorDetails details) {
        debugPrint('$details');
      };

      var app = await _initialSetup(appName);
      runApp(app);
    },
    (error, stackTrace) {
      debugPrint('$error');
    },
  );
}

Future<Widget> _initialSetup(String appName) async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  return const DemoApp(
    key: Key('DemoAppRoot'),
  );
}
