import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const .only(left: 16),
          child: Row(
            mainAxisAlignment: .start,
            children: [
              Text(
                'You can also like',
                style: Styles.regularTextStyle16.copyWith(fontWeight: .w500),
              ),
            ],
          ),
        ),
        Gap(16),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: SimilarBooksListView(),
        ),
        Gap(40),
      ],
    );
  }
}
