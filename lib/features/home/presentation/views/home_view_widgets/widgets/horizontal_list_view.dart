import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.211,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: 5,
        padding: .zero,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Get.to(
            //   () => BookDetailView(),
            //   transition: .size,
            //   duration: Duration(milliseconds: 500),
            // );
            context.push(AppRoutes.kBookDetailsView);
          },
          child: Padding(
            padding: const .only(right: 8, left: 8),
            child: BookImage(),
          ),
        ),
      ),
    );
  }
}
