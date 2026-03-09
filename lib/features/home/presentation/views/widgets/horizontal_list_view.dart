import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/horizontal_book.dart';

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
            HorizontalBook(width: MediaQuery.of(context).size.width * 0.315),
      ),
    );
  }
}
