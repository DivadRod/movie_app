import 'package:flutter/material.dart';
import 'package:movie_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen()
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Colors.red),
      ),
    );
  }
}
