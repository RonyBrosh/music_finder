import 'package:bdd/src/util/mock_backend/mocked_requests_manager.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

class TestInitializer extends DIInitializer {
  TestInitializer() : super(_init);
}

void _init(GetIt getIt) {
  final mockRequestManager = MockedRequestsManager();
  getIt.registerSingleton<MockedRequestsManager>(mockRequestManager);
}
