import 'package:dartz/dartz.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<,List<BookModel>>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchBestSellerBooksBooks();
}
