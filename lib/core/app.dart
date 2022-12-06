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
        tabBarTheme: TabBarTheme(labelColor: DColors.baseColor.secondary),
        appBarTheme: AppBarTheme(
          backgroundColor: DColors.baseColor.gray,
          elevation: Sizes.elevation.zero,
          titleTextStyle: TextStyle(
            color: DColors.baseColor.secondary,
            fontSize: Sizes.text.large,
            fontWeight: FontWeight.w500,
          ),
        ),
        scaffoldBackgroundColor: DColors.baseColor.lightGray,
        primaryColor: DColors.baseColor.primary,
        fontFamily: 'IBMPlexSans',
      ),
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
