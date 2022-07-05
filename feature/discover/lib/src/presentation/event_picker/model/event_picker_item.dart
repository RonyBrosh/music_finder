import 'package:discover/src/domain/model/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_picker_item.freezed.dart';

@freezed
class EventPickerItem with _$EventPickerItem {
  const factory EventPickerItem({
    @Default(false) bool isPlaying,
    required Event event,
  }) = _EventPickerItem;
}
