part of 'display_book_details_cubit.dart';

sealed class DisplayBookDetailsState extends Equatable {
  const DisplayBookDetailsState();

  @override
  List<Object> get props => [];
}

final class DisplayBookDetailsInitial extends DisplayBookDetailsState {}

final class DisplayBookDetailsLoading extends DisplayBookDetailsState {}

final class DisplayBookDetailsFailure extends DisplayBookDetailsState {
  final String errMessage;
  const DisplayBookDetailsFailure({required this.errMessage});
}

final class DisplayBookDetailsSuccess extends DisplayBookDetailsState {
  final BookModel bookModel;
  const DisplayBookDetailsSuccess({required this.bookModel});
}
