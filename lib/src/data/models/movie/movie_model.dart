import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
     bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids')  List<int>? genreIds,
     int? id,
    @JsonKey(name: 'original_language')  String? originalLanguage,
    @JsonKey(name: 'original_title')  String? originalTitle,
     String? overview,
     double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date')  String? releaseDate,
     String? title,
     bool? video,
    @JsonKey(name: 'vote_average')  double? voteAverage,
    @JsonKey(name: 'vote_count')  int? voteCount,
     List<Genre>? genres,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
