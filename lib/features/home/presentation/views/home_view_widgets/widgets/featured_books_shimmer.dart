import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';

class FeaturedBooksShimmer extends StatelessWidget {
  const FeaturedBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade400,
      child: Padding(
        padding: const .only(right: 8, left: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.211,
          child: ListView.builder(
            scrollDirection: .horizontal,
            itemCount: 10,
            padding: .zero,
            itemBuilder: (context, index) => Padding(
              padding: const .only(right: 8, left: 8),
              child: BookImage(),
            ),
          ),
        ),
      ),
    );
  }
}
