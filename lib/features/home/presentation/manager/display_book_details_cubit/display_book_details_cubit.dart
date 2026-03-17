import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/network/api_error.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

part 'display_book_details_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    try {
      emit(SimilarBooksLoading());
      List<BookModel> modelslist = await homeRepo.fetchSimilarBooksBooks(
        category: category,
      );
      emit(SimilarBooksSuccess(bookModelsList: modelslist));
    } on ApiError catch (e) {
      emit(SimilarBooksFailure(errMessage: e.message));
    }
  }
}
