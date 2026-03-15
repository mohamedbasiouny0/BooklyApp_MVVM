import 'package:dio/dio.dart';

sealed class Failure {
  final String errMessage;
  final int? statusCode;

  Failure({required this.errMessage, this.statusCode});
}

final class ServerFailure extends Failure {
  ServerFailure({required super.errMessage, super.statusCode});

  factory ServerFailure.fromDioExceptions(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Request send timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Bad SSL certificate");
      case DioExceptionType.badResponse:
        var errResponse = error.response;
        return ServerFailure.fromResponse(
          errResponse!.statusCode!,
          errResponse.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "No internet connection");
      case DioExceptionType.unknown:
        return ServerFailure(errMessage: "Unexpected error occurred");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 429) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'Your request is not found, please try again!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Internal Server error, please try again later!',
      );
    } else {
      return ServerFailure(
        errMessage: 'Opps there was an error, please try again!',
      );
    }
  }
}
