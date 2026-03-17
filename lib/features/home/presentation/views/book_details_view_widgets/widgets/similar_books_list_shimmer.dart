import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/similar_books_list_view.dart';

class SimilarBooksListShimmer extends StatelessWidget {
  const SimilarBooksListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: SimilarBooksListView(),
      ),
    );
  }
}
