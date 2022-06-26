import 'package:bdd/src/di/test_initializer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> runTestApp({
  required WidgetTester tester,
  required Widget Function() pageBuilder,
  required List<DIInitializer> dIInitializers,
  void Function()? postDI,
}) async {
  await diContainer.init(
    [
      CoreDIInitializer(),
      TestInitializer(),
      ...dIInitializers,
    ],
  );

  postDI?.call();

  await tester.pumpWidget(
    MaterialApp(home: pageBuilder()),
  );
  await tester.pumpAndSettle();
}
