import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test1/core/network/api_error.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    try {
      emit(FeaturedBooksLoading());
      var result = await homeRepo.fetchFeaturedBooks();
      emit(FeaturedBooksSuccess(booksList: result));
    } on ApiError catch (e) {
      emit(FeaturedBooksFailure(errorMessage: e.message));
    }
  }
}
