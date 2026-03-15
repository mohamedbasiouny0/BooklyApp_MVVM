import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test1/core/errors/faliure.dart';
import 'package:test1/core/network/api_exceptions.dart';
import 'package:test1/core/network/dio_client.dart';

class ApiService {
  final DioClient dioClient;

  ApiService({required this.dioClient});

  Future<dynamic> getReq({required String endPoint}) async {
    try {
      final Response response = await dioClient.dio.get(endPoint);
      return right(response.data);
    } on DioException catch (e) {
      throw ApiExceptions.handleError(e);
    }
  }
}
