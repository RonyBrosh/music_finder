// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_ticket_master_generes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketMasterGenresResponse _$TicketMasterGenresResponseFromJson(
    Map<String, dynamic> json) {
  return _TicketMasterGenresResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketMasterGenresResponse {
  @JsonKey(readValue: _readGenres)
  List<TicketMasterGenre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketMasterGenresResponseCopyWith<TicketMasterGenresResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketMasterGenresResponseCopyWith<$Res> {
  factory $TicketMasterGenresResponseCopyWith(TicketMasterGenresResponse value,
          $Res Function(TicketMasterGenresResponse) then) =
      _$TicketMasterGenresResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(readValue: _readGenres) List<TicketMasterGenre> genres});
}

/// @nodoc
class _$TicketMasterGenresResponseCopyWithImpl<$Res>
    implements $TicketMasterGenresResponseCopyWith<$Res> {
  _$TicketMasterGenresResponseCopyWithImpl(this._value, this._then);

  final TicketMasterGenresResponse _value;
  // ignore: unused_field
  final $Res Function(TicketMasterGenresResponse) _then;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<TicketMasterGenre>,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketMasterGenresResponseCopyWith<$Res>
    implements $TicketMasterGenresResponseCopyWith<$Res> {
  factory _$$_TicketMasterGenresResponseCopyWith(
          _$_TicketMasterGenresResponse value,
          $Res Function(_$_TicketMasterGenresResponse) then) =
      __$$_TicketMasterGenresResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(readValue: _readGenres) List<TicketMasterGenre> genres});
}

/// @nodoc
class __$$_TicketMasterGenresResponseCopyWithImpl<$Res>
    extends _$TicketMasterGenresResponseCopyWithImpl<$Res>
    implements _$$_TicketMasterGenresResponseCopyWith<$Res> {
  __$$_TicketMasterGenresResponseCopyWithImpl(
      _$_TicketMasterGenresResponse _value,
      $Res Function(_$_TicketMasterGenresResponse) _then)
      : super(_value, (v) => _then(v as _$_TicketMasterGenresResponse));

  @override
  _$_TicketMasterGenresResponse get _value =>
      super._value as _$_TicketMasterGenresResponse;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_$_TicketMasterGenresResponse(
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<TicketMasterGenre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketMasterGenresResponse extends _TicketMasterGenresResponse {
  const _$_TicketMasterGenresResponse(
      {@JsonKey(readValue: _readGenres)
          required final List<TicketMasterGenre> genres})
      : _genres = genres,
        super._();

  factory _$_TicketMasterGenresResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TicketMasterGenresResponseFromJson(json);

  final List<TicketMasterGenre> _genres;
  @override
  @JsonKey(readValue: _readGenres)
  List<TicketMasterGenre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'TicketMasterGenresResponse(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketMasterGenresResponse &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  _$$_TicketMasterGenresResponseCopyWith<_$_TicketMasterGenresResponse>
      get copyWith => __$$_TicketMasterGenresResponseCopyWithImpl<
          _$_TicketMasterGenresResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketMasterGenresResponseToJson(this);
  }
}

abstract class _TicketMasterGenresResponse extends TicketMasterGenresResponse {
  const factory _TicketMasterGenresResponse(
          {@JsonKey(readValue: _readGenres)
              required final List<TicketMasterGenre> genres}) =
      _$_TicketMasterGenresResponse;
  const _TicketMasterGenresResponse._() : super._();

  factory _TicketMasterGenresResponse.fromJson(Map<String, dynamic> json) =
      _$_TicketMasterGenresResponse.fromJson;

  @override
  @JsonKey(readValue: _readGenres)
  List<TicketMasterGenre> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketMasterGenresResponseCopyWith<_$_TicketMasterGenresResponse>
      get copyWith => throw _privateConstructorUsedError;
}
