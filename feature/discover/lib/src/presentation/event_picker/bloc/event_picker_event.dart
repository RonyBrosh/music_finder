part of 'event_picker_bloc.dart';

@freezed
class EventPickerEvent with _$EventPickerEvent {
  const factory EventPickerEvent.load() = _Load;

  const factory EventPickerEvent.openWeblink(Event event) = _OpenWeblink;

  const factory EventPickerEvent.play(Event event) = _Play;

  const factory EventPickerEvent.close() = _Close;
}
