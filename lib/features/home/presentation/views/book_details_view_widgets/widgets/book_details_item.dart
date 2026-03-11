import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import '../../home_view_widgets/widgets/book_rating.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: BookImage(),
        ),
        Gap(30),
        Text('The Jungle Book', style: Styles.regularTextStyle30),
        Gap(5),
        Text(
          'Rudyard Kipling',
          style: Styles.regularTextStyle18.copyWith(
            color: Colors.grey.shade400,
            fontStyle: .italic,
            fontWeight: .w500,
          ),
        ),
        Gap(10),
        BookRating(),
      ],
    );
  }
}
