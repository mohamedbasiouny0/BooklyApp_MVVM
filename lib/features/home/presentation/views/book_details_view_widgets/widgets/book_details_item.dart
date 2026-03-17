import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import '../../home_view_widgets/widgets/book_rating.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: BookImage(
            imagePath: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        Gap(30),
        Text(bookModel.volumeInfo!.title, style: Styles.regularTextStyle30),
        Gap(5),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'No authors found',
          style: Styles.regularTextStyle18.copyWith(
            color: Colors.grey.shade400,
            fontStyle: .italic,
            fontWeight: .w500,
          ),
        ),
        Gap(10),
        BookRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          ratingCount: bookModel.volumeInfo?.ratingCount ?? 0,
        ),
      ],
    );
  }
}
