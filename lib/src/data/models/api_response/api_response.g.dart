// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseLoadingImpl<T> _$$ApiResponseLoadingImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseLoadingImpl<T>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseLoadingImplToJson<T>(
  _$ApiResponseLoadingImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ApiResponseDataImpl<T> _$$ApiResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseDataImpl<T>(
      fromJsonT(json['data']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseDataImplToJson<T>(
  _$ApiResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'runtimeType': instance.$type,
    };

_$ApiResponseEmptyImpl<T> _$$ApiResponseEmptyImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseEmptyImpl<T>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseEmptyImplToJson<T>(
  _$ApiResponseEmptyImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ApiResponseErrorImpl<T> _$$ApiResponseErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseErrorImpl<T>(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseErrorImplToJson<T>(
  _$ApiResponseErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
