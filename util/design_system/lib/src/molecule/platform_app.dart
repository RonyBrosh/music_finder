import 'package:design_system/src/app_theme.dart';
import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformApp extends PlatformWidget<CupertinoApp, MaterialApp> {
  const PlatformApp({
    required this.home,
    this.isShowDebugBanner = false,
  });

  final bool isShowDebugBanner;
  final Widget home;

  @override
  CupertinoApp createCupertinoWidget(BuildContext context) {
    return CupertinoApp(
      theme: cupertinoTheme,
      home: home,
    );
  }

  @override
  MaterialApp createMaterialWidget(BuildContext context) {
    return MaterialApp(
      theme: materialTheme,
      home: home,
    );
  }
}
