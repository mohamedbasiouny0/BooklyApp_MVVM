import 'package:dio/dio.dart';
import 'package:test1/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(message: "Connection timeout");
      case DioExceptionType.sendTimeout:
        return ApiError(message: "Request send timeout");
      case DioExceptionType.receiveTimeout:
        return ApiError(message: "Receive timeout");
      case DioExceptionType.badCertificate:
        return ApiError(message: "Bad SSL certificate");
      case DioExceptionType.badResponse:
        var errResponse = error.response!.data;
        if (errResponse is Map<String, dynamic>) {
          return ApiError(
            message: errResponse['error']['message'],
            code: errResponse['error']['code'],
          );
        } else {
          return ApiError(message: 'There was an unexpected error');
        }
      case DioExceptionType.cancel:
        return ApiError(message: "Request was cancelled");
      case DioExceptionType.connectionError:
        return ApiError(message: "No internet connection");
      case DioExceptionType.unknown:
        return ApiError(message: "Unexpected error occurred");
    }
  }
}
