
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rounded, color: Colors.amber),
        Gap(5),
        Text('4.8', style: Styles.regularTextStyle16),
        Gap(5),
        Text(
          '(2390)',
          style: Styles.regularTextStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}