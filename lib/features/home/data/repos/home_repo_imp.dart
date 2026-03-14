import 'package:dartz/dartz.dart';
import 'package:test1/core/errors/faliure.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooksBooks() {
    // TODO: implement fetchBestSellerBooksBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}