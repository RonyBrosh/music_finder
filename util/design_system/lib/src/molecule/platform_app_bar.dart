import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:design_system/src/molecule/text/app_bar_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAppBar extends PlatformWidget<CupertinoNavigationBar, AppBar> {
  const PlatformAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  CupertinoNavigationBar createCupertinoWidget(BuildContext context) {
    return CupertinoNavigationBar(middle: AppBarTitle(text: title));
  }

  @override
  AppBar createMaterialWidget(BuildContext context) {
    return AppBar(title: AppBarTitle(text: title));
  }
}
