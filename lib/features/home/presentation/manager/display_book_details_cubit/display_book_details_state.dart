part of 'display_book_details_cubit.dart';

sealed class DisplayBookDetailsState extends Equatable {
  const DisplayBookDetailsState();

  @override
  List<Object> get props => [];
}

final class DisplayBookDetailsInitial extends DisplayBookDetailsState {}

final class DisplayBookDetailsLoading extends DisplayBookDetailsState {}

final class DisplayBookDetailsFailure extends DisplayBookDetailsState {}

final class DisplayBookDetailsSuccess extends DisplayBookDetailsState {}
