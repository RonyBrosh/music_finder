import 'package:discover/src/presentation/genre_picker/widget/genre_card.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeGenreItems(WidgetTester tester) async {
  expect(find.byType(GenreCard), findsWidgets);
}
