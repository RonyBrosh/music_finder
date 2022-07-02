import 'package:design_system/src/atom/dimens.dart';
import 'package:flutter/material.dart';

class TextCaption extends StatelessWidget {
  const TextCaption({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Space.medium),
      child: Text(
        text,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
