import 'package:flutter/material.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';

class SearchProvider extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();
  final List<MovieModel> allMovies;

  List<MovieModel> filteredMovies = [];

  SearchProvider(this.allMovies);

  void search(String query) {
    if (query.isEmpty) {
      filteredMovies = [];
    } else {
      filteredMovies = allMovies
          .where((movie) =>
          (movie.title ?? '').toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void clearSearch() {
    searchController.clear();
    filteredMovies = [];
    notifyListeners();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
