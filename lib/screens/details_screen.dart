import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('movie.title'),
          background: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
             image:AssetImage('assets/no-image.jpg'),
             fit: BoxFit.cover,),
        ),
    );
  }
}
