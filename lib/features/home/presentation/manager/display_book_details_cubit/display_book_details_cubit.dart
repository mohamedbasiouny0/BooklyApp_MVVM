import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'display_book_details_state.dart';

class DisplayBookDetailsCubit extends Cubit<DisplayBookDetailsState> {
  DisplayBookDetailsCubit() : super(DisplayBookDetailsInitial());
}
