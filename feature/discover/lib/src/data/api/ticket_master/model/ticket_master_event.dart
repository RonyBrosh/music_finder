import 'package:discover/src/domain/model/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_master_event.freezed.dart';

part 'ticket_master_event.g.dart';

@freezed
class TicketMasterEvent with _$TicketMasterEvent {
  const TicketMasterEvent._();

  const factory TicketMasterEvent({
    required String id,
    required String name,
    required String url,
    @JsonKey(readValue: _readVenue) required String venue,
    @JsonKey(readValue: _readDate) required String date,
  }) = _TicketMasterEvent;

  factory TicketMasterEvent.fromJson(Map<String, dynamic> json) => _$TicketMasterEventFromJson(json);

  Event toEvent() {
    return Event(
      id: id,
      name: name,
      url: url,
      venue: venue,
      dateTime: DateTime.parse(date),
    );
  }
}

Object _readDate(Map json, String key) => json[key] = [json['dates']['start']['dateTime']][0];

Object _readVenue(Map json, String key) => json[key] = [json['_embedded']['venues'][0]['name']][0];
