import 'package:test1/core/network/api_service.dart';
import 'package:test1/core/utils/api_end_points.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<List<BookModel>> fetchNewestBooks() async {
    final response = await apiService.getReq(
      endPoint: ApiEndPoints.newsetBooksEndPoint,
    );
    print(response);
    List<BookModel> modelList = [];
    var itemsList = response['items'];
    for (var element in itemsList) {
      modelList.add(BookModel.fromJson(element));
    }
    return modelList;
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() async {
    final response = await apiService.getReq(
      endPoint: ApiEndPoints.featuredBooksEndPoint,
    );

    List<BookModel> modelList = [];
    var itemsList = response['items'];
    for (var element in itemsList) {
      modelList.add(BookModel.fromJson(element));
    }
    return modelList;
  }

  @override
  Future<List<BookModel>> fetchSimilarBooksBooks({
    required String category,
  }) async {
    final response = await apiService.getReq(
      endPoint: ApiEndPoints.similarBooksEndPoint(category: category),
    );
    List<BookModel> modelsList = [];
    var itemsList = response['items'];
    for (var element in itemsList) {
      modelsList.add(BookModel.fromJson(element));
    }
    return modelsList;
  }
}
