// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_ticket_master_events_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketMasterEventsResponse _$TicketMasterEventsResponseFromJson(
    Map<String, dynamic> json) {
  return _TicketMasterEventsResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketMasterEventsResponse {
  @JsonKey(readValue: _readEvents)
  List<TicketMasterEvent> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketMasterEventsResponseCopyWith<TicketMasterEventsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketMasterEventsResponseCopyWith<$Res> {
  factory $TicketMasterEventsResponseCopyWith(TicketMasterEventsResponse value,
          $Res Function(TicketMasterEventsResponse) then) =
      _$TicketMasterEventsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(readValue: _readEvents) List<TicketMasterEvent> events});
}

/// @nodoc
class _$TicketMasterEventsResponseCopyWithImpl<$Res>
    implements $TicketMasterEventsResponseCopyWith<$Res> {
  _$TicketMasterEventsResponseCopyWithImpl(this._value, this._then);

  final TicketMasterEventsResponse _value;
  // ignore: unused_field
  final $Res Function(TicketMasterEventsResponse) _then;

  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TicketMasterEvent>,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketMasterEventsResponseCopyWith<$Res>
    implements $TicketMasterEventsResponseCopyWith<$Res> {
  factory _$$_TicketMasterEventsResponseCopyWith(
          _$_TicketMasterEventsResponse value,
          $Res Function(_$_TicketMasterEventsResponse) then) =
      __$$_TicketMasterEventsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(readValue: _readEvents) List<TicketMasterEvent> events});
}

/// @nodoc
class __$$_TicketMasterEventsResponseCopyWithImpl<$Res>
    extends _$TicketMasterEventsResponseCopyWithImpl<$Res>
    implements _$$_TicketMasterEventsResponseCopyWith<$Res> {
  __$$_TicketMasterEventsResponseCopyWithImpl(
      _$_TicketMasterEventsResponse _value,
      $Res Function(_$_TicketMasterEventsResponse) _then)
      : super(_value, (v) => _then(v as _$_TicketMasterEventsResponse));

  @override
  _$_TicketMasterEventsResponse get _value =>
      super._value as _$_TicketMasterEventsResponse;

  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_$_TicketMasterEventsResponse(
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TicketMasterEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketMasterEventsResponse extends _TicketMasterEventsResponse {
  const _$_TicketMasterEventsResponse(
      {@JsonKey(readValue: _readEvents)
          required final List<TicketMasterEvent> events})
      : _events = events,
        super._();

  factory _$_TicketMasterEventsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TicketMasterEventsResponseFromJson(json);

  final List<TicketMasterEvent> _events;
  @override
  @JsonKey(readValue: _readEvents)
  List<TicketMasterEvent> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'TicketMasterEventsResponse(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketMasterEventsResponse &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  _$$_TicketMasterEventsResponseCopyWith<_$_TicketMasterEventsResponse>
      get copyWith => __$$_TicketMasterEventsResponseCopyWithImpl<
          _$_TicketMasterEventsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketMasterEventsResponseToJson(this);
  }
}

abstract class _TicketMasterEventsResponse extends TicketMasterEventsResponse {
  const factory _TicketMasterEventsResponse(
          {@JsonKey(readValue: _readEvents)
              required final List<TicketMasterEvent> events}) =
      _$_TicketMasterEventsResponse;
  const _TicketMasterEventsResponse._() : super._();

  factory _TicketMasterEventsResponse.fromJson(Map<String, dynamic> json) =
      _$_TicketMasterEventsResponse.fromJson;

  @override
  @JsonKey(readValue: _readEvents)
  List<TicketMasterEvent> get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketMasterEventsResponseCopyWith<_$_TicketMasterEventsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
