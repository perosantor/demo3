import 'package:flutter/material.dart';

import 'routing/app_router.dart';
import 'styles/colors.dart';
import 'styles/sizes.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: DColors.baseColor.secondary),
          backgroundColor: DColors.baseColor.gray,
          elevation: Sizes.elevation.zero,
          titleTextStyle: TextStyle(
            color: DColors.baseColor.secondary,
            fontSize: Sizes.font.title,
            fontWeight: FontWeight.w500,
          ),
        ),
        scaffoldBackgroundColor: DColors.baseColor.lightGray,
        primarySwatch: Colors.grey,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
