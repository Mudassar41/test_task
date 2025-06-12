// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'loading':
      return ApiResponseLoading<T>.fromJson(json, fromJsonT);
    case 'data':
      return ApiResponseData<T>.fromJson(json, fromJsonT);
    case 'empty':
      return ApiResponseEmpty<T>.fromJson(json, fromJsonT);
    case 'error':
      return ApiResponseError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseLoading<T> value) loading,
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseEmpty<T> value) empty,
    required TResult Function(ApiResponseError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseLoading<T> value)? loading,
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseEmpty<T> value)? empty,
    TResult? Function(ApiResponseError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseLoading<T> value)? loading,
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseEmpty<T> value)? empty,
    TResult Function(ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApiResponseLoadingImplCopyWith<T, $Res> {
  factory _$$ApiResponseLoadingImplCopyWith(_$ApiResponseLoadingImpl<T> value,
          $Res Function(_$ApiResponseLoadingImpl<T>) then) =
      __$$ApiResponseLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ApiResponseLoadingImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseLoadingImpl<T>>
    implements _$$ApiResponseLoadingImplCopyWith<T, $Res> {
  __$$ApiResponseLoadingImplCopyWithImpl(_$ApiResponseLoadingImpl<T> _value,
      $Res Function(_$ApiResponseLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseLoadingImpl<T> implements ApiResponseLoading<T> {
  const _$ApiResponseLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$ApiResponseLoadingImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseLoadingImplFromJson(json, fromJsonT);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseLoadingImpl<T>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseLoading<T> value) loading,
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseEmpty<T> value) empty,
    required TResult Function(ApiResponseError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseLoading<T> value)? loading,
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseEmpty<T> value)? empty,
    TResult? Function(ApiResponseError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseLoading<T> value)? loading,
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseEmpty<T> value)? empty,
    TResult Function(ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseLoadingImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseLoading<T> implements ApiResponse<T> {
  const factory ApiResponseLoading() = _$ApiResponseLoadingImpl<T>;

  factory ApiResponseLoading.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseLoadingImpl<T>.fromJson;
}

/// @nodoc
abstract class _$$ApiResponseDataImplCopyWith<T, $Res> {
  factory _$$ApiResponseDataImplCopyWith(_$ApiResponseDataImpl<T> value,
          $Res Function(_$ApiResponseDataImpl<T>) then) =
      __$$ApiResponseDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResponseDataImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseDataImpl<T>>
    implements _$$ApiResponseDataImplCopyWith<T, $Res> {
  __$$ApiResponseDataImplCopyWithImpl(_$ApiResponseDataImpl<T> _value,
      $Res Function(_$ApiResponseDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseDataImpl<T> implements ApiResponseData<T> {
  const _$ApiResponseDataImpl(this.data, {final String? $type})
      : $type = $type ?? 'data';

  factory _$ApiResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseDataImplFromJson(json, fromJsonT);

  @override
  final T data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseDataImplCopyWith<T, _$ApiResponseDataImpl<T>> get copyWith =>
      __$$ApiResponseDataImplCopyWithImpl<T, _$ApiResponseDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseLoading<T> value) loading,
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseEmpty<T> value) empty,
    required TResult Function(ApiResponseError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseLoading<T> value)? loading,
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseEmpty<T> value)? empty,
    TResult? Function(ApiResponseError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseLoading<T> value)? loading,
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseEmpty<T> value)? empty,
    TResult Function(ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseData<T> implements ApiResponse<T> {
  const factory ApiResponseData(final T data) = _$ApiResponseDataImpl<T>;

  factory ApiResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseDataImpl<T>.fromJson;

  T get data;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseDataImplCopyWith<T, _$ApiResponseDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseEmptyImplCopyWith<T, $Res> {
  factory _$$ApiResponseEmptyImplCopyWith(_$ApiResponseEmptyImpl<T> value,
          $Res Function(_$ApiResponseEmptyImpl<T>) then) =
      __$$ApiResponseEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ApiResponseEmptyImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseEmptyImpl<T>>
    implements _$$ApiResponseEmptyImplCopyWith<T, $Res> {
  __$$ApiResponseEmptyImplCopyWithImpl(_$ApiResponseEmptyImpl<T> _value,
      $Res Function(_$ApiResponseEmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseEmptyImpl<T> implements ApiResponseEmpty<T> {
  const _$ApiResponseEmptyImpl({final String? $type})
      : $type = $type ?? 'empty';

  factory _$ApiResponseEmptyImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseEmptyImplFromJson(json, fromJsonT);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseEmptyImpl<T>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseLoading<T> value) loading,
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseEmpty<T> value) empty,
    required TResult Function(ApiResponseError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseLoading<T> value)? loading,
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseEmpty<T> value)? empty,
    TResult? Function(ApiResponseError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseLoading<T> value)? loading,
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseEmpty<T> value)? empty,
    TResult Function(ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseEmptyImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseEmpty<T> implements ApiResponse<T> {
  const factory ApiResponseEmpty() = _$ApiResponseEmptyImpl<T>;

  factory ApiResponseEmpty.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseEmptyImpl<T>.fromJson;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseErrorImplCopyWith(_$ApiResponseErrorImpl<T> value,
          $Res Function(_$ApiResponseErrorImpl<T>) then) =
      __$$ApiResponseErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseErrorImpl<T>>
    implements _$$ApiResponseErrorImplCopyWith<T, $Res> {
  __$$ApiResponseErrorImplCopyWithImpl(_$ApiResponseErrorImpl<T> _value,
      $Res Function(_$ApiResponseErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiResponseErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseErrorImpl<T> implements ApiResponseError<T> {
  const _$ApiResponseErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ApiResponseErrorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseErrorImplFromJson(json, fromJsonT);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      __$$ApiResponseErrorImplCopyWithImpl<T, _$ApiResponseErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseLoading<T> value) loading,
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseEmpty<T> value) empty,
    required TResult Function(ApiResponseError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseLoading<T> value)? loading,
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseEmpty<T> value)? empty,
    TResult? Function(ApiResponseError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseLoading<T> value)? loading,
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseEmpty<T> value)? empty,
    TResult Function(ApiResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseErrorImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseError<T> implements ApiResponse<T> {
  const factory ApiResponseError(final String message) =
      _$ApiResponseErrorImpl<T>;

  factory ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseErrorImpl<T>.fromJson;

  String get message;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
