import 'package:core/core.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/repository/discover_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGenresUseCase {
  const GetGenresUseCase(this._discoverRepository);

  final DiscoverRepository _discoverRepository;

  Future<ResultState<List<Genre>>> call() async {
    return _discoverRepository.loadGenres();
  }
}
