// media_provider.dart

import 'package:flutter/material.dart';
import 'package:task_movies_app/src/data/datasource/movies_api_config.dart';
import 'package:task_movies_app/src/data/repositories/movies_repository.dart';
import 'package:task_movies_app/src/utils/api_consts.dart';

class MediaProvider extends ChangeNotifier {
  final MoviesRepository moviesRepository =
      MovieRemoteRepository(moviesApi: MoviesApi());
  bool isLoading = false;
  String? trailerUrl;
  String? errorMessage;

  Future<void> fetchTrailerUrl(int movieId) async {
    isLoading = true;
    trailerUrl = null;
    errorMessage = null;
    notifyListeners();

    try {
      final response = await moviesRepository.getMovieTrailers(
        movieId: movieId,
        queryParameters: {"api_key": ApiConsts.apiKey},
      );
      final trailers = response['results'] ?? [];

      final trailer = trailers.firstWhere(
        (video) => video['type'] == 'Trailer' && video['site'] == 'YouTube',
        orElse: () => null,
      );

      if (trailer != null) {
        final key = trailer['key'];
        trailerUrl = 'https://www.youtube.com/watch?v=$key';
      } else {
        errorMessage = 'Trailer not available';
      }
    } catch (e) {
      errorMessage = 'Failed to fetch trailer';
      debugPrint('MediaProvider error: $e');
    }

    isLoading = false;
    notifyListeners();
  }

  void reset() {
    isLoading = false;
    trailerUrl = null;
    errorMessage = null;
    notifyListeners();
  }
}
