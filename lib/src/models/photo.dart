import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String? id,
    @Default('Unknown Author') String author,
    @Default('Unknown Author') String authorName,
    @Default('') String imageUrl,
    @Default('') String authorProfileUrl,
    DateTime? createdAt,
    String? description,
    String? altDescription,
    Map<String, String>? urls,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
