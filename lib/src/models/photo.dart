import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String id,
    required String author,
    required String imageUrl,
    required String authorProfileUrl,
    required String color,
  }) = Photo$;

  factory Photo.fromJson(Map<dynamic, dynamic> json) =>
      _$PhotoFromJson(Map<String, dynamic>.from(json));
}
