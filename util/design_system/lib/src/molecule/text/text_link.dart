import 'package:design_system/src/atom/dimens.dart';
import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  const TextLink({
    Key? key,
    required this.text,
    required this.url,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String url;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Space.medium),
      child: GestureDetector(
        child: Text(
          text,
          style: Theme.of(context).textTheme.caption!.copyWith(
                decoration: TextDecoration.underline,
                color: Theme.of(context).primaryColor,
              ),
        ),
        onTap: onTap,
      ),
    );
  }
}
