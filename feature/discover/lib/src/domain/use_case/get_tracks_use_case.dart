import 'package:core/core.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/model/track.dart';
import 'package:discover/src/domain/repository/discover_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTracksUseCase {
  const GetTracksUseCase(this._discoverRepository);

  final DiscoverRepository _discoverRepository;

  Future<ResultState<List<Track>>> call({required Event event}) async {
    return _discoverRepository.getTracks(event: event);
  }
}
