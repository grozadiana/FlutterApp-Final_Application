import 'package:business_logics/src/models/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Photo>[]) List<Photo> photos,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) =>
      _$AppStateFromJson(Map<String, dynamic>.from(json));
}
