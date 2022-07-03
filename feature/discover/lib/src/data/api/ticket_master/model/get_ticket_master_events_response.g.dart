// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ticket_master_events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketMasterEventsResponse _$$_TicketMasterEventsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TicketMasterEventsResponse(
      events: (_readEvents(json, 'events') as List<dynamic>)
          .map((e) => TicketMasterEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TicketMasterEventsResponseToJson(
        _$_TicketMasterEventsResponse instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
