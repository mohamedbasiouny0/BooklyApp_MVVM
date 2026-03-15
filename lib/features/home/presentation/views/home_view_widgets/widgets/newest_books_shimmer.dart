// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';

class NewestBooksShimmer extends StatelessWidget {
  const NewestBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey.shade700,
        highlightColor: Colors.grey.shade400,
        child: Padding(
          padding: const .only(bottom: 16),
          child: Container(
            margin: .symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: .circular(16),
              color: Colors.white.withOpacity(0.15),
            ),
            height: 120,
            child: Row(
              children: [
                BookImage(),
                Gap(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Gap(10),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.66,
                        height: 15,
                      ),
                      Gap(6),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 15,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: 15,
                          ),
                          Spacer(),
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 15,
                          ),
                          Gap(16),
                        ],
                      ),
                      Gap(10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
