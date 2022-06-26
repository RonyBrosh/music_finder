import 'package:flutter/material.dart';

abstract class PlatformWidget<Cupertino extends Widget, Material extends Widget> extends StatelessWidget {
  const PlatformWidget({Key? key}) : super(key: key);

  Cupertino createCupertinoWidget(BuildContext context);

  Material createMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    if (platform == TargetPlatform.android) {
      return createMaterialWidget(context);
    } else {
      return createCupertinoWidget(context);
    }
  }
}
