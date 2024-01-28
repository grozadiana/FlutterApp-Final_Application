import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../action/app_action.dart';
import '../action/change_picture.dart';
import '../action/create_review.dart';
import '../action/create_user.dart';
import '../action/get_current_user.dart';
import '../action/get_photos.dart';
import '../action/get_reviews.dart';
import '../action/get_users.dart';
import '../action/login.dart';
import '../action/sign_out.dart';
import '../api/auth_api.dart';
import '../api/photo_api.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import '../models/review.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.api, this.authApi);

  final PhotoApi api;
  final AuthApi authApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotoStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, ChangePictureStart>(_changePictureStart).call,
      TypedEpic<AppState, GetReviewsStart>(_getReviewsStart).call,
      TypedEpic<AppState, CreateReviewStart>(_createReviewStart).call,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _getPhotoStart(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions.debounceTime(const Duration(milliseconds: 500)).switchMap((GetPhotosStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getPhotos(store.state.page, query: action.query))
          .map((List<Photo> photos) => GetPhotos.successful(photos, action.query))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.getCurrentUser())
          .map((AppUser? user) => GetCurrentUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _signOutStart(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.signOut())
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _changePictureStart(Stream<ChangePictureStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.changePicture(action.path))
          .map((AppUser user) => ChangePicture.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePicture.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getReviewsStart(Stream<GetReviewsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetReviewsStart action) {
      final String photoId = action.photoId;

      return Stream<void>.value(null).asyncMap((_) => api.getReviews(photoId)).expand((List<Review> reviews) {
        final List<String> uids = reviews
            .map((Review review) => review.uid)
            .toSet()
            .where((String uid) => store.state.users[uid] == null)
            .toList();

        return <AppAction>[
          GetReviews.successful(reviews),
          if (uids.isNotEmpty) GetUsers(uids),
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetReviews.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createReviewStart(Stream<CreateReviewStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateReviewStart action) {
      final String? photoId = store.state.selectedPhoto?.id;

      if (photoId == null) {
        return Stream<AppAction>.error(Exception('Selected photo ID is null'));
      }

      final Stream<CreateReview> createReviewStream = Stream<void>.value(null)
          .asyncMap((_) => api.createReview(
                photoId: photoId,
                text: action.text,
                uid: store.state.user?.uid ?? '',
              ))
          .map((Review review) => CreateReview.successful(review))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateReview.error(error, stackTrace));

      final Stream<AppAction> getReviewsStream = Stream<AppAction>.value(GetReviews(photoId));

      return Rx.concat(<Stream<AppAction>>[createReviewStream, getReviewsStream]);
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsersStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.getUsers(action.uids))
          .map((List<AppUser> users) => GetUsers.successful(users))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace));
    });
  }
}
