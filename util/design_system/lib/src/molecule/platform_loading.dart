import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformLoading extends PlatformWidget<CupertinoActivityIndicator, CircularProgressIndicator> {
  const PlatformLoading();

  @override
  CupertinoActivityIndicator createCupertinoWidget(BuildContext context) {
    return CupertinoActivityIndicator();
  }

  @override
  CircularProgressIndicator createMaterialWidget(BuildContext context) {
    return CircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: super.build(context));
  }
}
