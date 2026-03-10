import 'package:flutter/material.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import '../../home_view_widgets/widgets/book_rating.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 243, child: BookImage()),
        Text('The Jungle Book', style: Styles.regularTextStyle30),
        Text(
          'Rudyard Kipling',
          style: Styles.regularTextStyle18.copyWith(
            color: Colors.grey.shade400,
          ),
        ),
        BookRating(),
      ],
    );
  }
}
