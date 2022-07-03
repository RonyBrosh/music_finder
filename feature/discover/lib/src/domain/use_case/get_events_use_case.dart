import 'package:core/core.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/repository/discover_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEventsUseCase {
  const GetEventsUseCase(this._discoverRepository);

  final DiscoverRepository _discoverRepository;

  Future<ResultState<List<Event>>> call() async {
    return _discoverRepository.loadEvents();
  }
}
