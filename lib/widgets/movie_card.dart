import 'package:flutter/material.dart';
import 'package:riverpod_movie_example/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
                padding: const EdgeInsets.all(10),
                height: 170,
                color: const Color(0xfff7f7f7),
                child: Row(children: <Widget>[
                  Container(
                    width: 80,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(movie.poster.toString()),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(children: <Widget>[
                            Text("${movie.title} (${movie.year})", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            const SizedBox(height: 10),
                            Text(movie.plot.toString(), overflow: TextOverflow.ellipsis, softWrap: false, maxLines: 3)
                          ])))
                ]))));
  }
}
