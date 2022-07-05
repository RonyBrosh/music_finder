part of 'event_picker_bloc.dart';

@freezed
class EventPickerState with _$EventPickerState {
  const factory EventPickerState.initial() = _Initial;

  const factory EventPickerState.loading() = _Loading;

  const factory EventPickerState.content(List<EventPickerItem> content) = _Content;

  const factory EventPickerState.error() = _Error;
}
