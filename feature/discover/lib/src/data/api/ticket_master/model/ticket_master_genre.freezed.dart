// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ticket_master_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketMasterGenre _$TicketMasterGenreFromJson(Map<String, dynamic> json) {
  return _TicketMasterGenre.fromJson(json);
}

/// @nodoc
mixin _$TicketMasterGenre {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketMasterGenreCopyWith<TicketMasterGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketMasterGenreCopyWith<$Res> {
  factory $TicketMasterGenreCopyWith(
          TicketMasterGenre value, $Res Function(TicketMasterGenre) then) =
      _$TicketMasterGenreCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$TicketMasterGenreCopyWithImpl<$Res>
    implements $TicketMasterGenreCopyWith<$Res> {
  _$TicketMasterGenreCopyWithImpl(this._value, this._then);

  final TicketMasterGenre _value;
  // ignore: unused_field
  final $Res Function(TicketMasterGenre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_TicketMasterGenreCopyWith<$Res>
    implements $TicketMasterGenreCopyWith<$Res> {
  factory _$$_TicketMasterGenreCopyWith(_$_TicketMasterGenre value,
          $Res Function(_$_TicketMasterGenre) then) =
      __$$_TicketMasterGenreCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$$_TicketMasterGenreCopyWithImpl<$Res>
    extends _$TicketMasterGenreCopyWithImpl<$Res>
    implements _$$_TicketMasterGenreCopyWith<$Res> {
  __$$_TicketMasterGenreCopyWithImpl(
      _$_TicketMasterGenre _value, $Res Function(_$_TicketMasterGenre) _then)
      : super(_value, (v) => _then(v as _$_TicketMasterGenre));

  @override
  _$_TicketMasterGenre get _value => super._value as _$_TicketMasterGenre;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TicketMasterGenre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketMasterGenre extends _TicketMasterGenre {
  const _$_TicketMasterGenre({required this.id, required this.name})
      : super._();

  factory _$_TicketMasterGenre.fromJson(Map<String, dynamic> json) =>
      _$$_TicketMasterGenreFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'TicketMasterGenre(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketMasterGenre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TicketMasterGenreCopyWith<_$_TicketMasterGenre> get copyWith =>
      __$$_TicketMasterGenreCopyWithImpl<_$_TicketMasterGenre>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketMasterGenreToJson(this);
  }
}

abstract class _TicketMasterGenre extends TicketMasterGenre {
  const factory _TicketMasterGenre(
      {required final String id,
      required final String name}) = _$_TicketMasterGenre;
  const _TicketMasterGenre._() : super._();

  factory _TicketMasterGenre.fromJson(Map<String, dynamic> json) =
      _$_TicketMasterGenre.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketMasterGenreCopyWith<_$_TicketMasterGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
