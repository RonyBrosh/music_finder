// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_master_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketMasterEvent _$$_TicketMasterEventFromJson(Map<String, dynamic> json) =>
    _$_TicketMasterEvent(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      image: _readImage(json, 'image') as String,
      venue: _readVenue(json, 'venue') as String,
      date: _readDate(json, 'date') as String?,
    );

Map<String, dynamic> _$$_TicketMasterEventToJson(
        _$_TicketMasterEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'image': instance.image,
      'venue': instance.venue,
      'date': instance.date,
    };
