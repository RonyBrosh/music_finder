import 'package:bdd/bdd.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/src/di/di_initializer.dart';
import 'package:discover/src/navigation/flow/discovery_flow.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';

import '../scenario/fetch_genres_scenario.dart';

Future<void> thePageIsShownAndFetchGenresEndpointSucceeds(WidgetTester tester) async {
  await runTestApp(
      tester: tester,
      pageBuilder: () => const DiscoveryFlow(),
      dIInitializers: [
        DesignSystemDIInitializer(),
        DiscoveryDIInitializer(),
      ],
      postDI: () {
        final ticketMasterDio = diContainer<Dio>(instanceName: 'ticketMasterDioTIParameterName');
        final mockRequestManager = diContainer<MockedRequestsManager>();
        ticketMasterDio.interceptors.add(MockedBackEndInterceptor(mockRequestManager));

        theBeIsMockedWithScenario(tester, fetchGenresSucceedsScenario);
      });
}
