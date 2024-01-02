import 'package:business_logics/src/action/action_photo.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../api/photo_api.dart';
import '../models/app_state.dart';

class AppEpics extends EpicClass<AppState> {
  late final PhotoApi api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotoStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _getPhotoStart(
      Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((action) => api.getPhotos(authorFilter: action.authorFilter))
        .map((photos) => GetPhotos.successful(photos))
        .onErrorReturnWith(
            (error, stackTrace) => GetPhotos.error(error, stackTrace));
  }
}
