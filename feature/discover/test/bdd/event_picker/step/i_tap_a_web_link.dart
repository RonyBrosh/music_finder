import 'package:flutter_test/flutter_test.dart';

Future<void> iTapAWebLink(WidgetTester tester) async {
  await tester.ensureVisible(find.text("See it on vendor's website"));
  await tester.pumpAndSettle();
  await tester.tap(find.text("See it on vendor's website"));
  await tester.pumpAndSettle();
}
