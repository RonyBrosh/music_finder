import 'package:core/core.dart';
import 'package:discover/src/data/api/deezer/deezer_api.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiscoverRepository {
  const DiscoverRepository(this._deezerApi);

  final DeezerApi _deezerApi;

  Future<ResultState<List<Genre>>> loadGenres() async {
    final result = await ResultState.fromAsync(_deezerApi.fetchGenres);
    return result.map((deezerGenres) => deezerGenres.toGenres());
  }
}
