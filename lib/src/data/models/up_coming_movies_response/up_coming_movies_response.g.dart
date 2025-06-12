// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_coming_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingMoviesResponseImpl _$$UpcomingMoviesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingMoviesResponseImpl(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$$UpcomingMoviesResponseImplToJson(
        _$UpcomingMoviesResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
