import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/presentation/manager/display_book_details_cubit/display_book_details_cubit.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_view_body.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const .only(left: 16),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(CupertinoIcons.xmark),
          ),
        ),
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: .only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart),
            ),
          ),
        ],
      ),
      body: BookDetailsViewBody(bookModel: widget.bookModel),
    );
  }
}
