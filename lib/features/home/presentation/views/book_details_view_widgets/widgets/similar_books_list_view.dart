import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: .horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: BookImage(imagePath: ''),
      ),
    );
  }
}
