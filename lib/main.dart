import 'package:flutter/material.dart';
import 'package:riverpod_movie_example/models/movie.dart';
import 'package:riverpod_movie_example/widgets/movie_card.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent, // optional
  ));

  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    List<Map<String, dynamic>> jsonMovies = [
      {
        "Title": "Dog",
        "Year": "2022",
        "Genre": ["Comedy, Drama"],
        "Plot":
            "Two former Army Rangers are paired against their will on the road trip of a lifetime. Briggs (Channing Tatum) and Lulu (a Belgian Malinois) race down the Pacific Coast to get to a fellow soldier's funeral on time.",
        "Poster":
            "https://m.media-amazon.com/images/M/MV5BYjA2MDM2YjctYzNhNC00NGEzLWFmYWEtODExODFkNmUyOGE2XkEyXkFqcGdeQXVyODk2NDQ3MTA@._V1_SX300.jpg",
        "imdbRating": "6.5",
        "Type": "movie",
      }
    ];

    List<Movie> formattedMovies = jsonMovies.map((element) => Movie.fromJson(element)).toList();

    return MaterialApp(
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.black,
            secondary: Colors.blue,
          ),
        ),
        title: 'Le Movie App',
        home: Scaffold(
            body: SafeArea(
          child: Stack(
            children: [
              Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 80),
                  child: ListView.builder(
                      itemCount: formattedMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        Movie movie = formattedMovies[index];

                        return MovieCard(movie: movie);
                      }))
            ],
          ),
        )));
  }
}
