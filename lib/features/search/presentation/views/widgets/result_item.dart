import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_rating.dart';

class ResultItem extends StatelessWidget {
  const ResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        ListTile(
          leading: BookImage(borderRadiusGeometry: .zero),
          title: Text('Book Name', style: TextStyle(color: Colors.white)),
          subtitle: Text('Author Name', style: TextStyle(color: Colors.amber)),
          trailing: BookRating(),
        ),
        Divider(thickness: 1, height: 5),
      ],
    );
  }
}
