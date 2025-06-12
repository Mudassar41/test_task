import 'package:dio/dio.dart';
import 'package:task_movies_app/src/utils/api_consts.dart';

base class ApisBase {

  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
      headers: {"Content-Type": "application/json"},
      baseUrl: ApiConsts.baseUrl,
    ),
  );
}
