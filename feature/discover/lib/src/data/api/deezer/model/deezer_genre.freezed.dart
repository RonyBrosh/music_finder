// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deezer_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeezerGenre _$DeezerGenreFromJson(Map<String, dynamic> json) {
  return _DeezerGenre.fromJson(json);
}

/// @nodoc
mixin _$DeezerGenre {
  String get picture_medium => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeezerGenreCopyWith<DeezerGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeezerGenreCopyWith<$Res> {
  factory $DeezerGenreCopyWith(
          DeezerGenre value, $Res Function(DeezerGenre) then) =
      _$DeezerGenreCopyWithImpl<$Res>;
  $Res call({String picture_medium, String id, String name});
}

/// @nodoc
class _$DeezerGenreCopyWithImpl<$Res> implements $DeezerGenreCopyWith<$Res> {
  _$DeezerGenreCopyWithImpl(this._value, this._then);

  final DeezerGenre _value;
  // ignore: unused_field
  final $Res Function(DeezerGenre) _then;

  @override
  $Res call({
    Object? picture_medium = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      picture_medium: picture_medium == freezed
          ? _value.picture_medium
          : picture_medium // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_DeezerGenreCopyWith<$Res>
    implements $DeezerGenreCopyWith<$Res> {
  factory _$$_DeezerGenreCopyWith(
          _$_DeezerGenre value, $Res Function(_$_DeezerGenre) then) =
      __$$_DeezerGenreCopyWithImpl<$Res>;
  @override
  $Res call({String picture_medium, String id, String name});
}

/// @nodoc
class __$$_DeezerGenreCopyWithImpl<$Res> extends _$DeezerGenreCopyWithImpl<$Res>
    implements _$$_DeezerGenreCopyWith<$Res> {
  __$$_DeezerGenreCopyWithImpl(
      _$_DeezerGenre _value, $Res Function(_$_DeezerGenre) _then)
      : super(_value, (v) => _then(v as _$_DeezerGenre));

  @override
  _$_DeezerGenre get _value => super._value as _$_DeezerGenre;

  @override
  $Res call({
    Object? picture_medium = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DeezerGenre(
      picture_medium: picture_medium == freezed
          ? _value.picture_medium
          : picture_medium // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_DeezerGenre extends _DeezerGenre {
  const _$_DeezerGenre(
      {required this.picture_medium, required this.id, required this.name})
      : super._();

  factory _$_DeezerGenre.fromJson(Map<String, dynamic> json) =>
      _$$_DeezerGenreFromJson(json);

  @override
  final String picture_medium;
  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'DeezerGenre(picture_medium: $picture_medium, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeezerGenre &&
            const DeepCollectionEquality()
                .equals(other.picture_medium, picture_medium) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(picture_medium),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DeezerGenreCopyWith<_$_DeezerGenre> get copyWith =>
      __$$_DeezerGenreCopyWithImpl<_$_DeezerGenre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeezerGenreToJson(this);
  }
}

abstract class _DeezerGenre extends DeezerGenre {
  const factory _DeezerGenre(
      {required final String picture_medium,
      required final String id,
      required final String name}) = _$_DeezerGenre;
  const _DeezerGenre._() : super._();

  factory _DeezerGenre.fromJson(Map<String, dynamic> json) =
      _$_DeezerGenre.fromJson;

  @override
  String get picture_medium => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeezerGenreCopyWith<_$_DeezerGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
