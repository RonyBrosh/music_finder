// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discovery_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoveryFlowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() genre,
    required TResult Function(Genre genre) event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Genre value) genre,
    required TResult Function(_Event value) event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryFlowStateCopyWith<$Res> {
  factory $DiscoveryFlowStateCopyWith(
          DiscoveryFlowState value, $Res Function(DiscoveryFlowState) then) =
      _$DiscoveryFlowStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DiscoveryFlowStateCopyWithImpl<$Res>
    implements $DiscoveryFlowStateCopyWith<$Res> {
  _$DiscoveryFlowStateCopyWithImpl(this._value, this._then);

  final DiscoveryFlowState _value;
  // ignore: unused_field
  final $Res Function(DiscoveryFlowState) _then;
}

/// @nodoc
abstract class _$$_GenreCopyWith<$Res> {
  factory _$$_GenreCopyWith(_$_Genre value, $Res Function(_$_Genre) then) =
      __$$_GenreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GenreCopyWithImpl<$Res>
    extends _$DiscoveryFlowStateCopyWithImpl<$Res>
    implements _$$_GenreCopyWith<$Res> {
  __$$_GenreCopyWithImpl(_$_Genre _value, $Res Function(_$_Genre) _then)
      : super(_value, (v) => _then(v as _$_Genre));

  @override
  _$_Genre get _value => super._value as _$_Genre;
}

/// @nodoc

class _$_Genre implements _Genre {
  const _$_Genre();

  @override
  String toString() {
    return 'DiscoveryFlowState.genre()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Genre);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() genre,
    required TResult Function(Genre genre) event,
  }) {
    return genre();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
  }) {
    return genre?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
    required TResult orElse(),
  }) {
    if (genre != null) {
      return genre();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Genre value) genre,
    required TResult Function(_Event value) event,
  }) {
    return genre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
  }) {
    return genre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (genre != null) {
      return genre(this);
    }
    return orElse();
  }
}

abstract class _Genre implements DiscoveryFlowState {
  const factory _Genre() = _$_Genre;
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  $Res call({Genre genre});

  $GenreCopyWith<$Res> get genre;
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res>
    extends _$DiscoveryFlowStateCopyWithImpl<$Res>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, (v) => _then(v as _$_Event));

  @override
  _$_Event get _value => super._value as _$_Event;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_$_Event(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
    ));
  }

  @override
  $GenreCopyWith<$Res> get genre {
    return $GenreCopyWith<$Res>(_value.genre, (value) {
      return _then(_value.copyWith(genre: value));
    });
  }
}

/// @nodoc

class _$_Event implements _Event {
  const _$_Event({required this.genre});

  @override
  final Genre genre;

  @override
  String toString() {
    return 'DiscoveryFlowState.event(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            const DeepCollectionEquality().equals(other.genre, genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genre));

  @JsonKey(ignore: true)
  @override
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() genre,
    required TResult Function(Genre genre) event,
  }) {
    return event(this.genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
  }) {
    return event?.call(this.genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? genre,
    TResult Function(Genre genre)? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this.genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Genre value) genre,
    required TResult Function(_Event value) event,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Genre value)? genre,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class _Event implements DiscoveryFlowState {
  const factory _Event({required final Genre genre}) = _$_Event;

  Genre get genre => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
