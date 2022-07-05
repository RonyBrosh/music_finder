// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_deezer_tracks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDeezerTracksResponse _$GetDeezerTracksResponseFromJson(
    Map<String, dynamic> json) {
  return _GetDeezerTracksResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDeezerTracksResponse {
  @JsonKey(readValue: _readTracks)
  List<String> get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDeezerTracksResponseCopyWith<GetDeezerTracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDeezerTracksResponseCopyWith<$Res> {
  factory $GetDeezerTracksResponseCopyWith(GetDeezerTracksResponse value,
          $Res Function(GetDeezerTracksResponse) then) =
      _$GetDeezerTracksResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(readValue: _readTracks) List<String> tracks});
}

/// @nodoc
class _$GetDeezerTracksResponseCopyWithImpl<$Res>
    implements $GetDeezerTracksResponseCopyWith<$Res> {
  _$GetDeezerTracksResponseCopyWithImpl(this._value, this._then);

  final GetDeezerTracksResponse _value;
  // ignore: unused_field
  final $Res Function(GetDeezerTracksResponse) _then;

  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_GetDeezerTracksResponseCopyWith<$Res>
    implements $GetDeezerTracksResponseCopyWith<$Res> {
  factory _$$_GetDeezerTracksResponseCopyWith(_$_GetDeezerTracksResponse value,
          $Res Function(_$_GetDeezerTracksResponse) then) =
      __$$_GetDeezerTracksResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(readValue: _readTracks) List<String> tracks});
}

/// @nodoc
class __$$_GetDeezerTracksResponseCopyWithImpl<$Res>
    extends _$GetDeezerTracksResponseCopyWithImpl<$Res>
    implements _$$_GetDeezerTracksResponseCopyWith<$Res> {
  __$$_GetDeezerTracksResponseCopyWithImpl(_$_GetDeezerTracksResponse _value,
      $Res Function(_$_GetDeezerTracksResponse) _then)
      : super(_value, (v) => _then(v as _$_GetDeezerTracksResponse));

  @override
  _$_GetDeezerTracksResponse get _value =>
      super._value as _$_GetDeezerTracksResponse;

  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_$_GetDeezerTracksResponse(
      tracks: tracks == freezed
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDeezerTracksResponse extends _GetDeezerTracksResponse {
  const _$_GetDeezerTracksResponse(
      {@JsonKey(readValue: _readTracks) required final List<String> tracks})
      : _tracks = tracks,
        super._();

  factory _$_GetDeezerTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetDeezerTracksResponseFromJson(json);

  final List<String> _tracks;
  @override
  @JsonKey(readValue: _readTracks)
  List<String> get tracks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString() {
    return 'GetDeezerTracksResponse(tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDeezerTracksResponse &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tracks));

  @JsonKey(ignore: true)
  @override
  _$$_GetDeezerTracksResponseCopyWith<_$_GetDeezerTracksResponse>
      get copyWith =>
          __$$_GetDeezerTracksResponseCopyWithImpl<_$_GetDeezerTracksResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDeezerTracksResponseToJson(this);
  }
}

abstract class _GetDeezerTracksResponse extends GetDeezerTracksResponse {
  const factory _GetDeezerTracksResponse(
      {@JsonKey(readValue: _readTracks)
          required final List<String> tracks}) = _$_GetDeezerTracksResponse;
  const _GetDeezerTracksResponse._() : super._();

  factory _GetDeezerTracksResponse.fromJson(Map<String, dynamic> json) =
      _$_GetDeezerTracksResponse.fromJson;

  @override
  @JsonKey(readValue: _readTracks)
  List<String> get tracks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetDeezerTracksResponseCopyWith<_$_GetDeezerTracksResponse>
      get copyWith => throw _privateConstructorUsedError;
}
