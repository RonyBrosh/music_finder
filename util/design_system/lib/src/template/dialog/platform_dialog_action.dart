import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformDialogAction extends PlatformWidget<CupertinoDialogAction, TextButton> {
  const PlatformDialogAction({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  CupertinoDialogAction createCupertinoWidget(BuildContext context) {
    return CupertinoDialogAction(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  @override
  TextButton createMaterialWidget(BuildContext context) {
    return TextButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
