// package we need for json encode/decode
import 'dart:convert';

// service helper for loading json file
import 'package:flutter/services.dart' as rootBundle;

class MovieService {
  Future<List<dynamic>> fetchMovies() async {
    await Future.delayed(Duration(seconds: 1));
    // Load json data
    final moviesData = await rootBundle.rootBundle.loadString('data/movies.json');
    // Decode json data to list
    return json.decode(moviesData) as List<dynamic>;
  }
}