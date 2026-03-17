import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';

part 'display_book_details_state.dart';

class DisplayBookDetailsCubit extends Cubit<DisplayBookDetailsState> {
  DisplayBookDetailsCubit() : super(DisplayBookDetailsInitial());

  Future<void> fetchSimilarBooks({required String category})async{


  }
}
