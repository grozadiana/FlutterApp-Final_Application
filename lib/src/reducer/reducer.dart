import 'dart:developer';

import 'package:redux/redux.dart';

import '../action/change_picture.dart';

import '../action/create_review.dart';
import '../action/create_user.dart';
import '../action/get_current_user.dart';
import '../action/get_photos.dart';
import '../action/get_reviews.dart';
import '../action/get_users.dart';
import '../action/login.dart';
import '../action/set.dart';
import '../action/sign_out.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import '../models/review.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, GetPhotosStart>(_getPhotosStart).call,
    TypedReducer<AppState, GetPhotosSuccessful>(_getPhotosSuccessful).call,
    TypedReducer<AppState, GetPhotosError>(_getPhotosError).call,
    TypedReducer<AppState, SetQuery>(_setQuery).call,
    TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
    TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
    TypedReducer<AppState, LoginSuccessful>(_loginSuccessful).call,
    TypedReducer<AppState, ChangePictureSuccessful>(_changePictureSuccessful).call,
    TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto).call,
    TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful).call,
    TypedReducer<AppState, CreateReviewSuccessful>(_createReviewSuccessful).call,
    TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful).call,
  ])(state, action);
}

AppState _getPhotosStart(AppState state, GetPhotosStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getPhotosSuccessful(AppState state, GetPhotosSuccessful action) {
  final bool isSameQuery = action.query == state.query;
  return state.copyWith(
    isLoading: false,
    page: isSameQuery ? state.page + 1 : 1,
    photos: isSameQuery ? <Photo>[...state.photos, ...action.photos] : action.photos,
    query: action.query,
  );
}

AppState _getPhotosError(AppState state, GetPhotosError action) {
  return state.copyWith(isLoading: false);
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.copyWith(
    query: action.query,
    page: 1,
    photos: <Photo>[],
  );
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _changePictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.copyWith(selectedPhoto: action.photo);
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.copyWith(reviews: action.reviews);
}

AppState _createReviewSuccessful(AppState state, CreateReviewSuccessful action) {
  final List<Review> updatedReviews = List<Review>.from(state.reviews.toList())..add(action.review);
  return state.copyWith(reviews: updatedReviews);
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      for (final AppUser user in action.users) user.uid: user,
    },
  );
}
