import 'package:discover/src/data/api/ticket_master/model/ticket_master_genre.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ticket_master_generes_response.freezed.dart';

part 'get_ticket_master_generes_response.g.dart';

@freezed
class TicketMasterGenresResponse with _$TicketMasterGenresResponse {
  const TicketMasterGenresResponse._();

  const factory TicketMasterGenresResponse({
    @JsonKey(readValue: _readGenres) required List<TicketMasterGenre> genres,
  }) = _TicketMasterGenresResponse;

  factory TicketMasterGenresResponse.fromJson(Map<String, dynamic> json) => _$TicketMasterGenresResponseFromJson(json);

  List<Genre> toGenres() {
    return genres.map((deezerGenre) => deezerGenre.toGenre()).toList(growable: false);
  }
}

Object _readGenres(Map json, String key) => json[key] = [json['segment']['_embedded']['genres']][0];
