import 'package:dio/dio.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://www.googleapis.com/books/v1/'),
  );
}
