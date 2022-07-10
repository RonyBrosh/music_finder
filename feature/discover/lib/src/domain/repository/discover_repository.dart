import 'package:core/core.dart';
import 'package:discover/src/data/api/nextgig/next_gig_api.dart';
import 'package:discover/src/data/api/ticket_master/ticket_master_api.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/model/track.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiscoverRepository {
  const DiscoverRepository(
    this._ticketMasterApi,
    this._nextGigApi,
  );

  final TicketMasterApi _ticketMasterApi;
  final NextGigApi _nextGigApi;

  Future<ResultState<List<Genre>>> loadGenres() async {
    final result = await ResultState.fromAsync(_ticketMasterApi.getGenres);
    return result.map((data) => data.toGenres());
  }

  Future<ResultState<List<Event>>> loadEvents({required Genre genre}) async {
    final result = await ResultState.fromAsync(() => _ticketMasterApi.getEvents(genreId: genre.id));
    return result.map((data) => data.toEvents());
  }

  Future<ResultState<List<Track>>> getTracks({required Event event}) async {
    final result = await ResultState.fromAsync(() => _nextGigApi.getTracks(artist: Uri.encodeFull(event.name)));
    return result.map((data) => data.map((nextGigTrack) => nextGigTrack.toTrack()).toList(growable: false));
  }
}
