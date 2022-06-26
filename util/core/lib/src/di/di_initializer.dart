import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:core/src/di/di_initializer.config.dart';

class CoreDIInitializer extends DIInitializer {
  const CoreDIInitializer() : super(_init);
}

@injectableInit
void _init(GetIt getIt) => $initGetIt(getIt);
