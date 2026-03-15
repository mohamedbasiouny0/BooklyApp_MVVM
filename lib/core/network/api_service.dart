import 'package:dio/dio.dart';
import 'package:test1/core/network/api_exceptions.dart';
import 'package:test1/core/network/dio_client.dart';

class DioService {
  final DioClient dioClient = DioClient();

  Future<dynamic> getReq({required String endPoint}) async {
    final Response response = await dioClient.dio.get(endPoint);
    return response.data;
  }
}
