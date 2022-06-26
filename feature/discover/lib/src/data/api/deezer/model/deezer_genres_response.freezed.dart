// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deezer_genres_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeezerGenresResponse _$DeezerGenresResponseFromJson(Map<String, dynamic> json) {
  return _DeezerGenresResponse.fromJson(json);
}

/// @nodoc
mixin _$DeezerGenresResponse {
  List<DeezerGenre> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeezerGenresResponseCopyWith<DeezerGenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeezerGenresResponseCopyWith<$Res> {
  factory $DeezerGenresResponseCopyWith(DeezerGenresResponse value,
          $Res Function(DeezerGenresResponse) then) =
      _$DeezerGenresResponseCopyWithImpl<$Res>;
  $Res call({List<DeezerGenre> data});
}

/// @nodoc
class _$DeezerGenresResponseCopyWithImpl<$Res>
    implements $DeezerGenresResponseCopyWith<$Res> {
  _$DeezerGenresResponseCopyWithImpl(this._value, this._then);

  final DeezerGenresResponse _value;
  // ignore: unused_field
  final $Res Function(DeezerGenresResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeezerGenre>,
    ));
  }
}

/// @nodoc
abstract class _$$_DeezerGenresResponseCopyWith<$Res>
    implements $DeezerGenresResponseCopyWith<$Res> {
  factory _$$_DeezerGenresResponseCopyWith(_$_DeezerGenresResponse value,
          $Res Function(_$_DeezerGenresResponse) then) =
      __$$_DeezerGenresResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<DeezerGenre> data});
}

/// @nodoc
class __$$_DeezerGenresResponseCopyWithImpl<$Res>
    extends _$DeezerGenresResponseCopyWithImpl<$Res>
    implements _$$_DeezerGenresResponseCopyWith<$Res> {
  __$$_DeezerGenresResponseCopyWithImpl(_$_DeezerGenresResponse _value,
      $Res Function(_$_DeezerGenresResponse) _then)
      : super(_value, (v) => _then(v as _$_DeezerGenresResponse));

  @override
  _$_DeezerGenresResponse get _value => super._value as _$_DeezerGenresResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DeezerGenresResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeezerGenre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeezerGenresResponse extends _DeezerGenresResponse {
  const _$_DeezerGenresResponse({required final List<DeezerGenre> data})
      : _data = data,
        super._();

  factory _$_DeezerGenresResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeezerGenresResponseFromJson(json);

  final List<DeezerGenre> _data;
  @override
  List<DeezerGenre> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DeezerGenresResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeezerGenresResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_DeezerGenresResponseCopyWith<_$_DeezerGenresResponse> get copyWith =>
      __$$_DeezerGenresResponseCopyWithImpl<_$_DeezerGenresResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeezerGenresResponseToJson(this);
  }
}

abstract class _DeezerGenresResponse extends DeezerGenresResponse {
  const factory _DeezerGenresResponse({required final List<DeezerGenre> data}) =
      _$_DeezerGenresResponse;
  const _DeezerGenresResponse._() : super._();

  factory _DeezerGenresResponse.fromJson(Map<String, dynamic> json) =
      _$_DeezerGenresResponse.fromJson;

  @override
  List<DeezerGenre> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeezerGenresResponseCopyWith<_$_DeezerGenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
