import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.rating, this.ratingCount});
  final num? rating;
  final int? ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        Icon(Icons.star_rounded, color: Colors.amber),
        Gap(5),
        Text(
          rating.toString(),
          style: Styles.regularTextStyle16.copyWith(fontWeight: .w600),
        ),
        Gap(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($rating)',
            style: Styles.regularTextStyle14.copyWith(fontWeight: .w600),
          ),
        ),
      ],
    );
  }
}
