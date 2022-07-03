import 'package:discover/src/domain/model/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_master_genre.freezed.dart';

part 'ticket_master_genre.g.dart';

@freezed
class TicketMasterGenre with _$TicketMasterGenre {
  const TicketMasterGenre._();

  const factory TicketMasterGenre({
    required String id,
    required String name,
  }) = _TicketMasterGenre;

  factory TicketMasterGenre.fromJson(Map<String, dynamic> json) => _$TicketMasterGenreFromJson(json);

  Genre toGenre() {
    return Genre(
      id: id,
      name: name,
    );
  }
}
