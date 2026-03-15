import 'package:dio/dio.dart';
import 'package:test1/core/network/dio_client.dart';

class ApiService {
  final DioClient dioClient;

  ApiService({required this.dioClient});

  Future<dynamic> getReq({required String endPoint}) async {
    final Response response = await dioClient.dio.get(endPoint);
    return response.data;
  }
}
