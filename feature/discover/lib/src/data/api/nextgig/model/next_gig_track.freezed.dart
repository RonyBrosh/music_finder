// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'next_gig_track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NextGigTrack _$NextGigTrackFromJson(Map<String, dynamic> json) {
  return _NextGigTrack.fromJson(json);
}

/// @nodoc
mixin _$NextGigTrack {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextGigTrackCopyWith<NextGigTrack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextGigTrackCopyWith<$Res> {
  factory $NextGigTrackCopyWith(
          NextGigTrack value, $Res Function(NextGigTrack) then) =
      _$NextGigTrackCopyWithImpl<$Res>;
  $Res call({int id, String title, String url});
}

/// @nodoc
class _$NextGigTrackCopyWithImpl<$Res> implements $NextGigTrackCopyWith<$Res> {
  _$NextGigTrackCopyWithImpl(this._value, this._then);

  final NextGigTrack _value;
  // ignore: unused_field
  final $Res Function(NextGigTrack) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NextGigTrackCopyWith<$Res>
    implements $NextGigTrackCopyWith<$Res> {
  factory _$$_NextGigTrackCopyWith(
          _$_NextGigTrack value, $Res Function(_$_NextGigTrack) then) =
      __$$_NextGigTrackCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String url});
}

/// @nodoc
class __$$_NextGigTrackCopyWithImpl<$Res>
    extends _$NextGigTrackCopyWithImpl<$Res>
    implements _$$_NextGigTrackCopyWith<$Res> {
  __$$_NextGigTrackCopyWithImpl(
      _$_NextGigTrack _value, $Res Function(_$_NextGigTrack) _then)
      : super(_value, (v) => _then(v as _$_NextGigTrack));

  @override
  _$_NextGigTrack get _value => super._value as _$_NextGigTrack;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_NextGigTrack(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NextGigTrack extends _NextGigTrack {
  const _$_NextGigTrack(
      {required this.id, required this.title, required this.url})
      : super._();

  factory _$_NextGigTrack.fromJson(Map<String, dynamic> json) =>
      _$$_NextGigTrackFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'NextGigTrack(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextGigTrack &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_NextGigTrackCopyWith<_$_NextGigTrack> get copyWith =>
      __$$_NextGigTrackCopyWithImpl<_$_NextGigTrack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NextGigTrackToJson(this);
  }
}

abstract class _NextGigTrack extends NextGigTrack {
  const factory _NextGigTrack(
      {required final int id,
      required final String title,
      required final String url}) = _$_NextGigTrack;
  const _NextGigTrack._() : super._();

  factory _NextGigTrack.fromJson(Map<String, dynamic> json) =
      _$_NextGigTrack.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NextGigTrackCopyWith<_$_NextGigTrack> get copyWith =>
      throw _privateConstructorUsedError;
}
