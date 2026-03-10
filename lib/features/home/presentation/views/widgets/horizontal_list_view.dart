import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/book_image.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.211,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: 5,
        padding: .zero,
        itemBuilder: (context, index) =>
            SizedBox(width: 150.5, child: BookImage()),
      ),
    );
  }
}
