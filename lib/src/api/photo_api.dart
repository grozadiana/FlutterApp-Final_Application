import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:business_logics/src/models/photo.dart';

class PhotoApi {
  PhotoApi(this._apiKey, this._client);

  final String _apiKey;
  final Client _client;

  Future<List<Photo>> getPhotos({String? authorFilter, String? colorFilter, int page = 1, int perPage = 10}) async {
    String apiUrl = 'https://api.unsplash.com/photos?page=$page&per_page=$perPage';

    if (authorFilter != null && authorFilter.isNotEmpty) {
      apiUrl += '&username=$authorFilter';
    }

    final response = await _client.get(
      Uri.parse(apiUrl),
      headers: {'Authorization': 'Client-ID $_apiKey'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((dynamic json) => Photo.fromJson(json as Map<String, dynamic>)).toList();
    }
    return <Photo>[];
  }
}

Future<void> main() async {
  final client = Client();
  final api = PhotoApi('uMMIAf8R4FdsjeGUmEKkZRjFtap0BhJU-3P9Ww8Fe_s', client);
  final List<Photo> photos = await api.getPhotos();
  photos.forEach(print);
}
