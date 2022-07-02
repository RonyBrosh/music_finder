import 'package:design_system/src/app_theme.dart';
import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformApp extends PlatformWidget<CupertinoApp, MaterialApp> {
  const PlatformApp({
    required this.routerDelegate,
    required this.routeInformationParser,
  });

  final RouterDelegate<Object> routerDelegate;
  final RouteInformationParser<Object> routeInformationParser;

  @override
  CupertinoApp createCupertinoWidget(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      theme: cupertinoTheme,
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
    );
  }

  @override
  MaterialApp createMaterialWidget(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      theme: materialTheme,
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
    );
  }
}
