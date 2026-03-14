import 'package:dartz/dartz.dart';
import 'package:test1/core/errors/faliure.dart';
import 'package:test1/core/network/api_service.dart';
import 'package:test1/core/utils/api_end_points.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final DioService dioService = DioService();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    final response = await dioService.getReq(
      endPoint: ApiEndPoints.volumesEndPoint,
    );

    List<BookModel> modelList = [];
    var itemsList = response['items'];
    for (var element in itemsList) {
      modelList.add(BookModel.fromJson(element));
    }
    return right(modelList);
  }
}
