// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  String? get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get authorProfileUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get altDescription => throw _privateConstructorUsedError;
  Map<String, String>? get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call(
      {String? id,
      String author,
      String authorName,
      String imageUrl,
      String authorProfileUrl,
      DateTime? createdAt,
      String? description,
      String? altDescription,
      Map<String, String>? urls});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = null,
    Object? authorName = null,
    Object? imageUrl = null,
    Object? authorProfileUrl = null,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorProfileUrl: null == authorProfileUrl
          ? _value.authorProfileUrl
          : authorProfileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String author,
      String authorName,
      String imageUrl,
      String authorProfileUrl,
      DateTime? createdAt,
      String? description,
      String? altDescription,
      Map<String, String>? urls});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = null,
    Object? authorName = null,
    Object? imageUrl = null,
    Object? authorProfileUrl = null,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = freezed,
  }) {
    return _then(_$PhotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorProfileUrl: null == authorProfileUrl
          ? _value.authorProfileUrl
          : authorProfileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl(
      {required this.id,
      this.author = 'Unknown Author',
      this.authorName = 'Unknown Author',
      this.imageUrl = '',
      this.authorProfileUrl = '',
      this.createdAt,
      this.description,
      this.altDescription,
      final Map<String, String>? urls})
      : _urls = urls;

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String authorName;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String authorProfileUrl;
  @override
  final DateTime? createdAt;
  @override
  final String? description;
  @override
  final String? altDescription;
  final Map<String, String>? _urls;
  @override
  Map<String, String>? get urls {
    final value = _urls;
    if (value == null) return null;
    if (_urls is EqualUnmodifiableMapView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Photo(id: $id, author: $author, authorName: $authorName, imageUrl: $imageUrl, authorProfileUrl: $authorProfileUrl, createdAt: $createdAt, description: $description, altDescription: $altDescription, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.authorProfileUrl, authorProfileUrl) ||
                other.authorProfileUrl == authorProfileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      author,
      authorName,
      imageUrl,
      authorProfileUrl,
      createdAt,
      description,
      altDescription,
      const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {required final String? id,
      final String author,
      final String authorName,
      final String imageUrl,
      final String authorProfileUrl,
      final DateTime? createdAt,
      final String? description,
      final String? altDescription,
      final Map<String, String>? urls}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  String? get id;
  @override
  String get author;
  @override
  String get authorName;
  @override
  String get imageUrl;
  @override
  String get authorProfileUrl;
  @override
  DateTime? get createdAt;
  @override
  String? get description;
  @override
  String? get altDescription;
  @override
  Map<String, String>? get urls;
  @override
  @JsonKey(ignore: true)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
