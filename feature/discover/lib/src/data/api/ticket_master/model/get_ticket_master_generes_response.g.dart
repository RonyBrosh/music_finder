// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ticket_master_generes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketMasterGenresResponse _$$_TicketMasterGenresResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TicketMasterGenresResponse(
      genres: (_readGenres(json, 'genres') as List<dynamic>)
          .map((e) => TicketMasterGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TicketMasterGenresResponseToJson(
        _$_TicketMasterGenresResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
