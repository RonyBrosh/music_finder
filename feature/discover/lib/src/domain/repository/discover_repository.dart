import 'package:core/core.dart';
import 'package:discover/src/data/api/ticket_master/ticket_master_api.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiscoverRepository {
  const DiscoverRepository(this._ticketMasterApi);

  final TicketMasterApi _ticketMasterApi;

  Future<ResultState<List<Genre>>> loadGenres() async {
    final result = await ResultState.fromAsync(_ticketMasterApi.getGenres);
    return result.map((data) => data.toGenres());
  }
}
