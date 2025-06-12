import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';

part 'up_coming_movies_response.freezed.dart';

part 'up_coming_movies_response.g.dart';

@freezed
class UpcomingMoviesResponse with _$UpcomingMoviesResponse {
  const factory UpcomingMoviesResponse({
    required int page,
    required List<MovieModel> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _UpcomingMoviesResponse;

  factory UpcomingMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesResponseFromJson(json);
}
