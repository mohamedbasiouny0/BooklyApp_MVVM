import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';
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
          enableFeedback: false,
          selected: true,
          selectedColor: Colors.white,
          onTap: () => context.push(AppRoutes.kBookDetailsView),
          leading: BookImage(borderRadiusGeometry: .zero),
          title: Text('The Jungle Book', style: TextStyle(color: Colors.white)),
          subtitle: Text(
            'Rudyard Kipling',
            style: TextStyle(color: Colors.amber),
          ),
          trailing: BookRating(),
        ),
        Divider(thickness: 1, height: 5),
      ],
    );
  }
}
