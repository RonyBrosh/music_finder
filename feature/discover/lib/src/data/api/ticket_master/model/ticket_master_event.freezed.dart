// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ticket_master_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketMasterEvent _$TicketMasterEventFromJson(Map<String, dynamic> json) {
  return _TicketMasterEvent.fromJson(json);
}

/// @nodoc
mixin _$TicketMasterEvent {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readVenue)
  String get venue => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readDate)
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketMasterEventCopyWith<TicketMasterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketMasterEventCopyWith<$Res> {
  factory $TicketMasterEventCopyWith(
          TicketMasterEvent value, $Res Function(TicketMasterEvent) then) =
      _$TicketMasterEventCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String url,
      @JsonKey(readValue: _readVenue) String venue,
      @JsonKey(readValue: _readDate) String? date});
}

/// @nodoc
class _$TicketMasterEventCopyWithImpl<$Res>
    implements $TicketMasterEventCopyWith<$Res> {
  _$TicketMasterEventCopyWithImpl(this._value, this._then);

  final TicketMasterEvent _value;
  // ignore: unused_field
  final $Res Function(TicketMasterEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? venue = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketMasterEventCopyWith<$Res>
    implements $TicketMasterEventCopyWith<$Res> {
  factory _$$_TicketMasterEventCopyWith(_$_TicketMasterEvent value,
          $Res Function(_$_TicketMasterEvent) then) =
      __$$_TicketMasterEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String url,
      @JsonKey(readValue: _readVenue) String venue,
      @JsonKey(readValue: _readDate) String? date});
}

/// @nodoc
class __$$_TicketMasterEventCopyWithImpl<$Res>
    extends _$TicketMasterEventCopyWithImpl<$Res>
    implements _$$_TicketMasterEventCopyWith<$Res> {
  __$$_TicketMasterEventCopyWithImpl(
      _$_TicketMasterEvent _value, $Res Function(_$_TicketMasterEvent) _then)
      : super(_value, (v) => _then(v as _$_TicketMasterEvent));

  @override
  _$_TicketMasterEvent get _value => super._value as _$_TicketMasterEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? venue = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_TicketMasterEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketMasterEvent extends _TicketMasterEvent {
  const _$_TicketMasterEvent(
      {required this.id,
      required this.name,
      required this.url,
      @JsonKey(readValue: _readVenue) required this.venue,
      @JsonKey(readValue: _readDate) required this.date})
      : super._();

  factory _$_TicketMasterEvent.fromJson(Map<String, dynamic> json) =>
      _$$_TicketMasterEventFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  @JsonKey(readValue: _readVenue)
  final String venue;
  @override
  @JsonKey(readValue: _readDate)
  final String? date;

  @override
  String toString() {
    return 'TicketMasterEvent(id: $id, name: $name, url: $url, venue: $venue, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketMasterEvent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.venue, venue) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(venue),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_TicketMasterEventCopyWith<_$_TicketMasterEvent> get copyWith =>
      __$$_TicketMasterEventCopyWithImpl<_$_TicketMasterEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketMasterEventToJson(this);
  }
}

abstract class _TicketMasterEvent extends TicketMasterEvent {
  const factory _TicketMasterEvent(
          {required final String id,
          required final String name,
          required final String url,
          @JsonKey(readValue: _readVenue) required final String venue,
          @JsonKey(readValue: _readDate) required final String? date}) =
      _$_TicketMasterEvent;
  const _TicketMasterEvent._() : super._();

  factory _TicketMasterEvent.fromJson(Map<String, dynamic> json) =
      _$_TicketMasterEvent.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _readVenue)
  String get venue => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _readDate)
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketMasterEventCopyWith<_$_TicketMasterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
