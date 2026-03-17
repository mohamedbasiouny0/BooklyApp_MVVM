import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_item.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/similar_books_section.dart';
import 'book_actions_row.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsItem(bookModel: bookModel),
              Gap(20),
              BookActionsRow(),
              Gap(MediaQuery.of(context).size.height * 0.06),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
