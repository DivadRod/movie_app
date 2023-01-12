import 'package:flutter/material.dart';
import 'package:movie_app/providers/movies_provider.dart';
import 'package:movie_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MovieProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas - Series'),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search_off_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Listado de peliculas
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              //Listado horizontal de peliculas
              MovieSlider(
                  movies: moviesProvider.onDisplayMovies,
                  title: 'Ranking Semanal'),

              const SizedBox(
                height: 55,
              )
            ],
          ),
        ));
  }
}
