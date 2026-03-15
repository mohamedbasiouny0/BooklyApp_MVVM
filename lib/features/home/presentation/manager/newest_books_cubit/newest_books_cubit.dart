import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (faliure) => emit(NewestBooksFailure(errorMessage: faliure.errMessage)),
      (books) => emit(NewestBooksSuccess(booksList: books)),
    );
  }
}
