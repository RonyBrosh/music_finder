import 'dart:io';

import 'package:bdd/bdd.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/discover.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/navigation/flow/discovery_flow.dart';
import 'package:discover/src/navigation/flow/discovery_flow_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';

Future<void> theFlowIsRunningAndBeIsMockedWithScenario(WidgetTester tester, Scenario scenario) async {
  HttpOverrides.global = null;
  await runTestApp(
      tester: tester,
      pageBuilder: () => const DiscoveryFlow(
            initialState: DiscoveryFlowState.event(
              genre: Genre(id: 'KnvZfZ7vAvv', name: 'Alternative'),
            ),
          ),
      dIInitializers: [
        DesignSystemDIInitializer(),
        DiscoveryDIInitializer(),
      ],
      postDI: () {
        final ticketMasterDio = diContainer<Dio>(instanceName: 'ticketMasterDioTIParameterName');
        final mockRequestManager = diContainer<MockedRequestsManager>();
        ticketMasterDio.interceptors.add(MockedBackEndInterceptor(mockRequestManager));

        theBeIsMockedWithScenario(tester, scenario);
      });
}
