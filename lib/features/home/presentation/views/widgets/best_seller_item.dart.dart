// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/widgets/book_image.dart';
import 'package:test1/features/home/presentation/views/widgets/book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        color: Colors.white.withOpacity(0.1),
      ),
      height: 120,
      child: Row(
        children: [
          SizedBox(width: 96, child: BookImage(padding: .only(right: 16))),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Gap(4),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: Styles.regularTextStyle18.copyWith(),
                  ),
                ),
                Gap(3),
                Text(
                  'J.K. Rowling',
                  style: Styles.regularTextStyle14.copyWith(
                    color: Colors.amberAccent,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.regularTextStyle20.copyWith(
                        fontWeight: .bold,
                      ),
                    ),
                    Spacer(),
                    BookRating(),
                    Gap(16),
                  ],
                ),
                Gap(4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
