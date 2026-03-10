// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/widgets/book_image.dart';
import '../../../../../core/widgets/custom_text.dart';

class BookElement extends StatelessWidget {
  const BookElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        color: Colors.white.withOpacity(0.1),
      ),
      height: 109,
      child: Row(
        children: [
          SizedBox(width: 89, child: BookImage()),
          Column(
            crossAxisAlignment: .start,
            spacing: 2,
            children: [
              Gap(4),
              SizedBox(
                width: MediaQuery.of(context).size.width - 122,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.regularTextStyle18,
                ),
              ),
              Text(
                'J.K. Rowling',
                style: Styles.regularTextStyle14.copyWith(
                  color: Colors.amberAccent,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text('19.99\$', style: Styles.regularTextStyle20),
                  Gap(130),
                  Icon(Icons.star_rounded, color: Colors.amber),
                  Gap(5),
                  CustomText('4.8', fontSize: 17),
                  CustomText(
                    '(2390)',
                    color: Colors.grey.shade400,
                    fontSize: 17,
                  ),
                ],
              ),
              Gap(4),
            ],
          ),
        ],
      ),
    );
  }
}
