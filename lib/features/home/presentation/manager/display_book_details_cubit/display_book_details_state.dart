part of 'display_book_details_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailure({required this.errMessage});
}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> bookModelsList;
  const SimilarBooksSuccess({required this.bookModelsList});
}
