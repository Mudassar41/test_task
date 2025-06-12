import 'package:flutter/cupertino.dart';
import 'package:task_movies_app/src/data/datasource/movies_api_config.dart';
import 'package:task_movies_app/src/data/models/api_response/api_response.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';
import 'package:task_movies_app/src/data/models/up_coming_movies_response/up_coming_movies_response.dart';
import 'package:task_movies_app/src/data/repositories/movies_repository.dart';
import 'package:task_movies_app/src/utils/api_consts.dart';

class MovieProvider extends ChangeNotifier {
  final MoviesRepository moviesRepository =
      MovieRemoteRepository(moviesApi: MoviesApi());

  ApiResponse<UpcomingMoviesResponse> _upcomingMoviesResponse =
      const ApiResponse.loading();

  ApiResponse<MovieModel> _movieDetailResponse = const ApiResponse.loading();

  ApiResponse<UpcomingMoviesResponse> get upcomingMoviesResponse =>
      _upcomingMoviesResponse;

  ApiResponse<MovieModel> get movieDetailResponse => _movieDetailResponse;

  Future<void> setUpcomingMoviesResponse() async {
    _upcomingMoviesResponse = const ApiResponse.loading();
    notifyListeners();

    try {
      final response = await moviesRepository.getUpcomingMovies(
        queryParameters: {"api_key": ApiConsts.apiKey},
      );
      _upcomingMoviesResponse = ApiResponse.data(response);
    } catch (e) {
      _upcomingMoviesResponse =
          const ApiResponse.error("Failed to fetch movies");
    }

    notifyListeners();
  }

  Future<void> setMovieDetailResponse(int movieId) async {
    _movieDetailResponse = const ApiResponse.loading();
    notifyListeners();

    try {
      final response = await moviesRepository.getMovieDetail(
        movieId: movieId,
        queryParameters: {"api_key": ApiConsts.apiKey},
      );
      _movieDetailResponse = ApiResponse.data(response);
    } catch (e) {
      _movieDetailResponse =
          const ApiResponse.error("Failed to fetch movie detail");
    }

    notifyListeners();
  }
}
