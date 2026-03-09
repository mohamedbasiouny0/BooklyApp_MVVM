import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/horizontal_book.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16),
      height: 200,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: 5,
        padding: .zero,
        itemBuilder: (context, index) =>
            BookItem.horizontalBook(width: 150, height: 224),
      ),
    );
  }
}
