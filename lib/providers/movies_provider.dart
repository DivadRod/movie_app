import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class MovieProvider extends ChangeNotifier {
  String _apiKey = '05a3a255c757ede4aba8909dce8cd86e';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  MovieProvider() {
    print('MoviesProvider inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromRawJson(response.body);
    final Map<String, dynamic> decodeData = json.decode(response.body);

    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }
}
