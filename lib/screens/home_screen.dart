import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en Cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search_off_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          CardSwiper(),
          //Listado de peliculas

          //Listado horizontal de peliculas
        ],
      ),
    );
  }
}
