import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/presentation/views/widgets/horizontal_book.dart';

import '../../../../../core/widgets/custom_text.dart';

class BookElement extends StatelessWidget {
  const BookElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HorizontalBook(height: 105, width: 70),
        Column(
          crossAxisAlignment: .start,
          spacing: 2,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 118,
              child: CustomText(
                'Harry Potter and the Goblet of Fire',
                fontSize: 20,
              ),
            ),
            CustomText('J.K. Rowling', color: Colors.grey.shade400),
            Row(
              children: [
                CustomText('19.99 \$', fontSize: 17),
                Gap(130),
                Icon(Icons.star_rounded, color: Colors.amber),
                Gap(5),
                CustomText('4.8', fontSize: 17),
                CustomText('(2390)', color: Colors.grey.shade400, fontSize: 17),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
