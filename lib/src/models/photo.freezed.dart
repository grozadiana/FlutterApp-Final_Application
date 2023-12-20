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
  return Photo$.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get authorProfileUrl => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

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
      {String id,
      String author,
      String imageUrl,
      String authorProfileUrl,
      String color});
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
    Object? id = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? authorProfileUrl = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorProfileUrl: null == authorProfileUrl
          ? _value.authorProfileUrl
          : authorProfileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Photo$ImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$Photo$ImplCopyWith(
          _$Photo$Impl value, $Res Function(_$Photo$Impl) then) =
      __$$Photo$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      String imageUrl,
      String authorProfileUrl,
      String color});
}

/// @nodoc
class __$$Photo$ImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$Photo$Impl>
    implements _$$Photo$ImplCopyWith<$Res> {
  __$$Photo$ImplCopyWithImpl(
      _$Photo$Impl _value, $Res Function(_$Photo$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? authorProfileUrl = null,
    Object? color = null,
  }) {
    return _then(_$Photo$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorProfileUrl: null == authorProfileUrl
          ? _value.authorProfileUrl
          : authorProfileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Photo$Impl implements Photo$ {
  const _$Photo$Impl(
      {required this.id,
      required this.author,
      required this.imageUrl,
      required this.authorProfileUrl,
      required this.color});

  factory _$Photo$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Photo$ImplFromJson(json);

  @override
  final String id;
  @override
  final String author;
  @override
  final String imageUrl;
  @override
  final String authorProfileUrl;
  @override
  final String color;

  @override
  String toString() {
    return 'Photo(id: $id, author: $author, imageUrl: $imageUrl, authorProfileUrl: $authorProfileUrl, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Photo$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.authorProfileUrl, authorProfileUrl) ||
                other.authorProfileUrl == authorProfileUrl) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, author, imageUrl, authorProfileUrl, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Photo$ImplCopyWith<_$Photo$Impl> get copyWith =>
      __$$Photo$ImplCopyWithImpl<_$Photo$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Photo$ImplToJson(
      this,
    );
  }
}

abstract class Photo$ implements Photo {
  const factory Photo$(
      {required final String id,
      required final String author,
      required final String imageUrl,
      required final String authorProfileUrl,
      required final String color}) = _$Photo$Impl;

  factory Photo$.fromJson(Map<String, dynamic> json) = _$Photo$Impl.fromJson;

  @override
  String get id;
  @override
  String get author;
  @override
  String get imageUrl;
  @override
  String get authorProfileUrl;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$Photo$ImplCopyWith<_$Photo$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
