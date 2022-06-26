import 'package:design_system/src/molecule/platform_widget.dart';
import 'package:design_system/src/template/dialog/platform_dialog_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformDialog extends PlatformWidget<CupertinoAlertDialog, AlertDialog> {
  const PlatformDialog({
    required this.title,
    required this.content,
    required this.mainButtonText,
    this.secondaryButtonText,
    this.onMainButtonPressed,
    this.onSecondaryButtonPressed,
  });

  final String title;
  final String content;
  final String mainButtonText;
  final String? secondaryButtonText;
  final void Function()? onMainButtonPressed;
  final void Function()? onSecondaryButtonPressed;

  @override
  CupertinoAlertDialog createCupertinoWidget(BuildContext context) {
    // TODO: implement createCupertinoWidget
    throw UnimplementedError();
  }

  @override
  AlertDialog createMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        if (secondaryButtonText != null)
          PlatformDialogAction(
            text: secondaryButtonText!,
            onPressed: () {
              _close(context);
              onSecondaryButtonPressed?.call();
            },
          ),
        PlatformDialogAction(
          text: mainButtonText,
          onPressed: () {
            _close(context);
            onMainButtonPressed?.call();
          },
        ),
      ],
    );
  }

  Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => this,
    );
  }

  void _close(BuildContext context) {
    Navigator.of(context).pop();
  }
}
