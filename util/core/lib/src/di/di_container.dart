import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;
final diContainer = _DiContainer();

abstract class DIInitializer {
  const DIInitializer(this.init);

  final void Function(GetIt getIt) init;

  void call() {
    init(_getIt);
  }
}

class _DiContainer {
  const _DiContainer();

  T call<T extends Object>({dynamic parameter}) => _getIt<T>(param1: parameter);

  Future<void> init(List<DIInitializer> initializers) async {
    initializers.forEach((initializer) => initializer());
  }
}
