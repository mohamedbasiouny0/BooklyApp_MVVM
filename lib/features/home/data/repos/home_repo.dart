import 'package:test1/features/home/data/book_model/book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchNewestBooks();
  Future<List<BookModel>> fetchSimilarBooksBooks({required String category});
}
