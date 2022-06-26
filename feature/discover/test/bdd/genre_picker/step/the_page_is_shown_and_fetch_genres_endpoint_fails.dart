import 'package:bdd/bdd.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/src/di/di_initializer.dart';
import 'package:discover/src/presentation/genre_picker/widget/genre_picker_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../scenario/fetch_genres_scenario.dart';

Future<void> thePageIsShownAndFetchGenresEndpointFails(WidgetTester tester) async {
  await runTestApp(
      tester: tester,
      pageBuilder: () => const GenrePickerPage(),
      dIInitializers: [
        DesignSystemDIInitializer(),
        DiscoveryDIInitializer(),
      ],
      postDI: () {
        theBeIsMockedWithScenario(tester, fetchGenresFailsScenario);
      });
}
