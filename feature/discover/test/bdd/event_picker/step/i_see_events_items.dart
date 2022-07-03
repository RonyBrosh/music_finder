import 'package:discover/src/presentation/event_picker/widget/event_card.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeEventsItems(WidgetTester tester) async {
  expect(find.byType(EventCard), findsWidgets);
}
