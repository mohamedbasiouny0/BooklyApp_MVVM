import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test1/core/errors/faliure.dart';
import 'package:test1/core/network/api_service.dart';
import 'package:test1/core/utils/api_end_points.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final DioService dioService = DioService();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final response = await dioService.getReq(
        endPoint: ApiEndPoints.newsetBooksEndPoint,
      );

      List<BookModel> modelList = [];
      var itemsList = response['items'];
      for (var element in itemsList) {
        modelList.add(BookModel.fromJson(element));
      }
      return right(modelList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioExceptions(e));
    } on Exception catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final response = await dioService.getReq(
        endPoint: ApiEndPoints.featuredBooksEndPoint,
      );

      List<BookModel> modelList = [];
      var itemsList = response['items'];
      for (var element in itemsList) {
        modelList.add(BookModel.fromJson(element));
      }
      return right(modelList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioExceptions(e));
    } on Exception catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
