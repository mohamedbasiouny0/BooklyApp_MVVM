import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/widgets/error_message_widget.dart';
import 'package:test1/features/home/presentation/manager/display_book_details_cubit/display_book_details_cubit.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/similar_books_list_shimmer.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
            scrollDirection: .horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: BookImage(
                imagePath:
                    state
                        .bookModelsList[index]
                        .volumeInfo
                        ?.imageLinks
                        ?.thumbnail ??
                    '',
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorMessageWidget(errMessage: state.errMessage);
        } else {
          return SimilarBooksListShimmer();
        }
      },
    );
  }
}
