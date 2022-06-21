// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  List<Movie> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieStateCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$_MovieStateCopyWith(
          _$_MovieState value, $Res Function(_$_MovieState) then) =
      __$$_MovieStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$_MovieStateCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieStateCopyWith<$Res> {
  __$$_MovieStateCopyWithImpl(
      _$_MovieState _value, $Res Function(_$_MovieState) _then)
      : super(_value, (v) => _then(v as _$_MovieState));

  @override
  _$_MovieState get _value => super._value as _$_MovieState;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$_MovieState(
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_MovieState extends _MovieState {
  const _$_MovieState({final List<Movie> movies = const []})
      : _movies = movies,
        super._();

  final List<Movie> _movies;
  @override
  @JsonKey()
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieState(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieState &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      __$$_MovieStateCopyWithImpl<_$_MovieState>(this, _$identity);
}

abstract class _MovieState extends MovieState {
  const factory _MovieState({final List<Movie> movies}) = _$_MovieState;
  const _MovieState._() : super._();

  @override
  List<Movie> get movies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
