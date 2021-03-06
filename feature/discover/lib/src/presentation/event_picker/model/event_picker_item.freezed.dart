// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_picker_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventPickerItem {
  bool get isPlaying => throw _privateConstructorUsedError;
  Event get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventPickerItemCopyWith<EventPickerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPickerItemCopyWith<$Res> {
  factory $EventPickerItemCopyWith(
          EventPickerItem value, $Res Function(EventPickerItem) then) =
      _$EventPickerItemCopyWithImpl<$Res>;
  $Res call({bool isPlaying, Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventPickerItemCopyWithImpl<$Res>
    implements $EventPickerItemCopyWith<$Res> {
  _$EventPickerItemCopyWithImpl(this._value, this._then);

  final EventPickerItem _value;
  // ignore: unused_field
  final $Res Function(EventPickerItem) _then;

  @override
  $Res call({
    Object? isPlaying = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_EventPickerItemCopyWith<$Res>
    implements $EventPickerItemCopyWith<$Res> {
  factory _$$_EventPickerItemCopyWith(
          _$_EventPickerItem value, $Res Function(_$_EventPickerItem) then) =
      __$$_EventPickerItemCopyWithImpl<$Res>;
  @override
  $Res call({bool isPlaying, Event event});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_EventPickerItemCopyWithImpl<$Res>
    extends _$EventPickerItemCopyWithImpl<$Res>
    implements _$$_EventPickerItemCopyWith<$Res> {
  __$$_EventPickerItemCopyWithImpl(
      _$_EventPickerItem _value, $Res Function(_$_EventPickerItem) _then)
      : super(_value, (v) => _then(v as _$_EventPickerItem));

  @override
  _$_EventPickerItem get _value => super._value as _$_EventPickerItem;

  @override
  $Res call({
    Object? isPlaying = freezed,
    Object? event = freezed,
  }) {
    return _then(_$_EventPickerItem(
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_EventPickerItem implements _EventPickerItem {
  const _$_EventPickerItem({this.isPlaying = false, required this.event});

  @override
  @JsonKey()
  final bool isPlaying;
  @override
  final Event event;

  @override
  String toString() {
    return 'EventPickerItem(isPlaying: $isPlaying, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventPickerItem &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPlaying),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_EventPickerItemCopyWith<_$_EventPickerItem> get copyWith =>
      __$$_EventPickerItemCopyWithImpl<_$_EventPickerItem>(this, _$identity);
}

abstract class _EventPickerItem implements EventPickerItem {
  const factory _EventPickerItem(
      {final bool isPlaying, required final Event event}) = _$_EventPickerItem;

  @override
  bool get isPlaying => throw _privateConstructorUsedError;
  @override
  Event get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventPickerItemCopyWith<_$_EventPickerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
