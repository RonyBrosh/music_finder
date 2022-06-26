import 'package:design_system/src/molecule/platform_app_bar.dart';
import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends PlatformWidget<Widget, Scaffold> {
  const PlatformScaffold({
    Key? key,
    this.appBar,
    required this.body,
  }) : super(key: key);

  final PlatformAppBar? appBar;
  final Widget body;

  @override
  Widget createCupertinoWidget(BuildContext context) {
    // TODO: implement createCupertinoWidget
    throw UnimplementedError();
  }

  @override
  Scaffold createMaterialWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar?.createMaterialWidget(context),
      body: body,
    );
  }
}
