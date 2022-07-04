import 'package:bdd/src/util/mock_backend/mocked_requests_manager.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class LinkManagerMock extends Mock implements LinkManager {}

class TestInitializer extends DIInitializer {
  TestInitializer() : super(_init);
}

void _init(GetIt getIt) {
  final mockRequestManager = MockedRequestsManager();
  getIt.registerSingleton<MockedRequestsManager>(mockRequestManager);

  final linkManager = LinkManagerMock();
  when(() => linkManager.openWebLink(any())).thenReturn(null);
  getIt.unregister<LinkManager>();
  getIt.registerSingleton<LinkManager>(linkManager);
}
