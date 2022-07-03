import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class NoResult extends StatelessWidget {
  const NoResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: TextTitle(text: context.coreTranslation.noResults));
  }
}
