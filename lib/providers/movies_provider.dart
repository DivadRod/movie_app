import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  MovieProvider() {
    print('MoviesProvider inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }
}
