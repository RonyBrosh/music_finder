import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:discover/src/di/di_initializer.config.dart';

class DiscoveryDIInitializer extends DIInitializer {
  const DiscoveryDIInitializer() : super(_init);
}

@injectableInit
void _init(GetIt getIt) => $initGetIt(getIt);
