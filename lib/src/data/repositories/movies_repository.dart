import 'package:task_movies_app/src/data/datasource/movies_api_config.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';
import 'package:task_movies_app/src/data/models/up_coming_movies_response/up_coming_movies_response.dart';

abstract class MoviesRepository {
  Future<UpcomingMoviesResponse> getUpcomingMovies(
      {required Map<String, dynamic> queryParameters});

  Future<MovieModel> getMovieDetail(
      {required Map<String, dynamic> queryParameters, required int movieId});

  Future<dynamic> getMovieTrailers(
      {required Map<String, dynamic> queryParameters, required int movieId});
}

class MovieRemoteRepository implements MoviesRepository {
  final MoviesApi moviesApi;

  MovieRemoteRepository({required this.moviesApi});

  @override
  Future<UpcomingMoviesResponse> getUpcomingMovies(
      {required Map<String, dynamic> queryParameters}) async {
    return await moviesApi.requestUpcomingMovies(
      queryParameters: queryParameters,
    );
  }

  @override
  Future<MovieModel> getMovieDetail({
    required Map<String, dynamic> queryParameters,
    required int movieId,
  }) async {
    return await moviesApi.requestMovieDetail(
      movieId: movieId,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<dynamic> getMovieTrailers(
      {required Map<String, dynamic> queryParameters,
      required int movieId}) async {
    return await moviesApi.requestMovieTrailers(
      movieId: movieId,
      queryParameters: queryParameters,
    );
  }
}
