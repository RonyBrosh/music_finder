import 'package:core/core.dart';
import 'package:design_system/src/di/di_initializer.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

class DesignSystemDIInitializer extends DIInitializer {
  const DesignSystemDIInitializer() : super(_init);
}

@injectableInit
void _init(GetIt getIt) => $initGetIt(getIt);
