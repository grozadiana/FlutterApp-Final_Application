import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

import '../models/photo.dart';
import '../models/review.dart';

class ApiConstants {
  static const String unsplashApiKey = 'uMMIAf8R4FdsjeGUmEKkZRjFtap0BhJU-3P9Ww8Fe_s';
}

class PhotoApi {
  PhotoApi(this._client, this._firestore);

  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Photo>> getPhotos(int page, {String query = ''}) async {
    final Uri uri = query.isNotEmpty
        ? Uri.parse(
            'https://api.unsplash.com/search/photos?page=$page&query=$query&client_id=${ApiConstants.unsplashApiKey}')
        : Uri.parse('https://api.unsplash.com/photos?page=$page&client_id=${ApiConstants.unsplashApiKey}');

    final Response response =
        await _client.get(uri, headers: <String, String>{'Authorization': 'Client-ID ${ApiConstants.unsplashApiKey}'});

    if (response.statusCode == 200) {
      final dynamic decodedJson = jsonDecode(response.body);
      List<dynamic> photosJson;

      if (query.isNotEmpty && decodedJson is Map<String, dynamic>) {
        photosJson = decodedJson['results'] as List<dynamic>;
      } else if (decodedJson is List<dynamic>) {
        photosJson = decodedJson;
      } else {
        throw Exception('Unexpected response format');
      }

      List<Photo> photos = photosJson.map((dynamic item) {
        final Map<String, dynamic> photoData = item as Map<String, dynamic>;
        final String id = photoData['id'] as String? ?? '';
        final String imageUrl = (photoData['urls'] as Map<String, dynamic>)['regular'] as String? ?? '';
        final Map<String, dynamic>? userData = photoData['user'] as Map<String, dynamic>?;
        final Map<String, dynamic>? userLinks = userData?['links'] as Map<String, dynamic>?;
        final String authorProfileUrl = userLinks?['html'] as String? ?? '';
        final String authorName = (photoData['user'] as Map<String, dynamic>)['name'] as String? ?? 'Unknown Author';
        final String description = photoData['description'] as String? ?? '';

        return Photo(
          id: id,
          imageUrl: imageUrl,
          authorProfileUrl: authorProfileUrl,
          authorName: authorName,
          description: description,
        );
      }).toList();

      if (query.isNotEmpty) {
        final String lowercaseQuery = query.toLowerCase();
        photos = photos.where((Photo photo) => photo.authorName.toLowerCase().contains(lowercaseQuery)).toList();
      }

      return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }

  Future<List<Review>> getReviews(String photoId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection('photo/$photoId/reviews').orderBy('createdAt', descending: true).get();

    return snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data())).toList();
  }

  Future<Review> createReview({
    required String photoId,
    required String text,
    required String uid,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('photos/$photoId/reviews').doc();

    final Review review = Review(
      id: ref.id,
      text: text,
      uid: uid,
      createdAt: DateTime.now(),
      photoId: photoId,
    );

    await ref.set(review.toJson());

    return review;
  }
}
