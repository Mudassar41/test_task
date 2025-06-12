import 'package:task_movies_app/src/data/datasource/apis_base.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';
import 'package:task_movies_app/src/data/models/up_coming_movies_response/up_coming_movies_response.dart';
import 'package:task_movies_app/src/utils/api_consts.dart';

final class MoviesApi extends ApisBase {
  Future<UpcomingMoviesResponse> requestUpcomingMovies(
      {required Map<String, dynamic> queryParameters}) async {
    try {
      final response = await dio.get(
        ApiConsts.upcomingMoviesUrl,
        queryParameters: queryParameters,
      );
      return UpcomingMoviesResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<MovieModel> requestMovieDetail(
      {required Map<String, dynamic> queryParameters,
      required int movieId}) async {
    try {
      final response = await dio.get(
        "${ApiConsts.movieUrl}/$movieId",
        queryParameters: queryParameters,
      );
      return MovieModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> requestMovieTrailers(
      {required Map<String, dynamic> queryParameters,
      required int movieId}) async {
    try {
      final response = await dio.get(
        "${ApiConsts.movieUrl}/$movieId/videos",
        queryParameters: queryParameters,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
