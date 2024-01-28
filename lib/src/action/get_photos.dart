import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/photo.dart';
import 'app_action.dart';

part 'get_photos.freezed.dart';

@freezed
class GetPhotos with _$GetPhotos implements AppAction {
  const factory GetPhotos({
    @Default('') String author,
    @Default(1) int page,
    @Default('') String query,
  }) = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos, String query) = GetPhotosSuccessful;

  @Implements<ErrorAction>()
  const factory GetPhotos.error(Object error, StackTrace stackTrace) = GetPhotosError;
}
