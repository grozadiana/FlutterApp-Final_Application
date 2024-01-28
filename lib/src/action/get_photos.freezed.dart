// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPhotos {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String author, int page, String query) $default, {
    required TResult Function(List<Photo> photos, String query) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String author, int page, String query)? $default, {
    TResult? Function(List<Photo> photos, String query)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String author, int page, String query)? $default, {
    TResult Function(List<Photo> photos, String query)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPhotosCopyWith<$Res> {
  factory $GetPhotosCopyWith(GetPhotos value, $Res Function(GetPhotos) then) =
      _$GetPhotosCopyWithImpl<$Res, GetPhotos>;
}

/// @nodoc
class _$GetPhotosCopyWithImpl<$Res, $Val extends GetPhotos>
    implements $GetPhotosCopyWith<$Res> {
  _$GetPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPhotosStartImplCopyWith<$Res> {
  factory _$$GetPhotosStartImplCopyWith(_$GetPhotosStartImpl value,
          $Res Function(_$GetPhotosStartImpl) then) =
      __$$GetPhotosStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String author, int page, String query});
}

/// @nodoc
class __$$GetPhotosStartImplCopyWithImpl<$Res>
    extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosStartImpl>
    implements _$$GetPhotosStartImplCopyWith<$Res> {
  __$$GetPhotosStartImplCopyWithImpl(
      _$GetPhotosStartImpl _value, $Res Function(_$GetPhotosStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_$GetPhotosStartImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPhotosStartImpl implements GetPhotosStart {
  const _$GetPhotosStartImpl(
      {this.author = '', this.page = 1, this.query = ''});

  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'GetPhotos(author: $author, page: $page, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosStartImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, author, page, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosStartImplCopyWith<_$GetPhotosStartImpl> get copyWith =>
      __$$GetPhotosStartImplCopyWithImpl<_$GetPhotosStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String author, int page, String query) $default, {
    required TResult Function(List<Photo> photos, String query) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(author, page, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String author, int page, String query)? $default, {
    TResult? Function(List<Photo> photos, String query)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(author, page, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String author, int page, String query)? $default, {
    TResult Function(List<Photo> photos, String query)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(author, page, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotosStart implements GetPhotos {
  const factory GetPhotosStart(
      {final String author,
      final int page,
      final String query}) = _$GetPhotosStartImpl;

  String get author;
  int get page;
  String get query;
  @JsonKey(ignore: true)
  _$$GetPhotosStartImplCopyWith<_$GetPhotosStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPhotosSuccessfulImplCopyWith<$Res> {
  factory _$$GetPhotosSuccessfulImplCopyWith(_$GetPhotosSuccessfulImpl value,
          $Res Function(_$GetPhotosSuccessfulImpl) then) =
      __$$GetPhotosSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Photo> photos, String query});
}

/// @nodoc
class __$$GetPhotosSuccessfulImplCopyWithImpl<$Res>
    extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosSuccessfulImpl>
    implements _$$GetPhotosSuccessfulImplCopyWith<$Res> {
  __$$GetPhotosSuccessfulImplCopyWithImpl(_$GetPhotosSuccessfulImpl _value,
      $Res Function(_$GetPhotosSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? query = null,
  }) {
    return _then(_$GetPhotosSuccessfulImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPhotosSuccessfulImpl implements GetPhotosSuccessful {
  const _$GetPhotosSuccessfulImpl(final List<Photo> photos, this.query)
      : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'GetPhotos.successful(photos: $photos, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_photos), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosSuccessfulImplCopyWith<_$GetPhotosSuccessfulImpl> get copyWith =>
      __$$GetPhotosSuccessfulImplCopyWithImpl<_$GetPhotosSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String author, int page, String query) $default, {
    required TResult Function(List<Photo> photos, String query) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String author, int page, String query)? $default, {
    TResult? Function(List<Photo> photos, String query)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photos, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String author, int page, String query)? $default, {
    TResult Function(List<Photo> photos, String query)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosSuccessful implements GetPhotos {
  const factory GetPhotosSuccessful(
      final List<Photo> photos, final String query) = _$GetPhotosSuccessfulImpl;

  List<Photo> get photos;
  String get query;
  @JsonKey(ignore: true)
  _$$GetPhotosSuccessfulImplCopyWith<_$GetPhotosSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPhotosErrorImplCopyWith<$Res> {
  factory _$$GetPhotosErrorImplCopyWith(_$GetPhotosErrorImpl value,
          $Res Function(_$GetPhotosErrorImpl) then) =
      __$$GetPhotosErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPhotosErrorImplCopyWithImpl<$Res>
    extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosErrorImpl>
    implements _$$GetPhotosErrorImplCopyWith<$Res> {
  __$$GetPhotosErrorImplCopyWithImpl(
      _$GetPhotosErrorImpl _value, $Res Function(_$GetPhotosErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPhotosErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPhotosErrorImpl implements GetPhotosError {
  const _$GetPhotosErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPhotos.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosErrorImplCopyWith<_$GetPhotosErrorImpl> get copyWith =>
      __$$GetPhotosErrorImplCopyWithImpl<_$GetPhotosErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String author, int page, String query) $default, {
    required TResult Function(List<Photo> photos, String query) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String author, int page, String query)? $default, {
    TResult? Function(List<Photo> photos, String query)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String author, int page, String query)? $default, {
    TResult Function(List<Photo> photos, String query)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosError implements GetPhotos, ErrorAction {
  const factory GetPhotosError(
      final Object error, final StackTrace stackTrace) = _$GetPhotosErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPhotosErrorImplCopyWith<_$GetPhotosErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
