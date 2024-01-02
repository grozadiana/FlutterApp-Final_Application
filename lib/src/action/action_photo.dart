import 'package:business_logics/src/action/app_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/photo.dart';

part 'action_photo.freezed.dart';

@freezed
class GetPhotos with _$GetPhotos implements AppAction {
  const factory GetPhotos({
    @Default('') String authorFilter,
    @Default('') String colorFilter,
    @Default(1) int page,
    @Default(10) int perPage,
  }) = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  @Implements<ErrorAction>()
  const factory GetPhotos.error(Object error, StackTrace stackTrace) =
      GetPhotosError;
}

