import 'package:flutter/material.dart';
import 'package:movie_app/models/models.dart';
import 'package:movie_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    //print(movie.title);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          _PosterAndTitle(),
          _Overview(),
          _Overview(),
          _Overview(),
          _Overview(),
          _Overview(),
          CastingCards()
        ]))
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            color: Colors.black12,
            child: const Text(
              'Kimetsu no Yaiba',
              style: TextStyle(fontSize: 16),
            )),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://demonslayer-hinokami.sega.com/img/purchase/digital-standard-es.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://www.cinepremiere.com.mx/wp-content/uploads/2021/03/Demon-Slayer-Netflix-900x491.jpg'),
              height: 90,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kimetsu no Yaiba',
                style: textTheme.headline6,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                '3 temporadas',
                style: textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  const Icon(Icons.star, size: 15, color: Colors.yellow),
                  const Icon(Icons.star, size: 15, color: Colors.yellow),
                  const Icon(Icons.star, size: 15, color: Colors.yellow),
                  const Icon(Icons.star, size: 15, color: Colors.yellow),
                  const Icon(Icons.star_half, size: 15, color: Colors.yellow),
                  const SizedBox(width: 15),
                  Text(
                    'votes: 9.78k',
                    style: Theme.of(context).textTheme.caption,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        'Kimetsu no Yaiba, también conocida bajo su nombre en inglés Demon Slayer, es una serie de manga escrita e ilustrada por Koyoharu Gotōge, cuya publicación comenzó el 15 de febrero de 2016 en la revista semanal Shūkan Shōnen Jump de la editorial Shūeisha.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
