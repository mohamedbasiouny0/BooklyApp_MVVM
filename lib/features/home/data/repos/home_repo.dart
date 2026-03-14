import 'package:dartz/dartz.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import '../../../../core/errors/faliure.dart';

abstract class HomeRepo {
  // Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
}
