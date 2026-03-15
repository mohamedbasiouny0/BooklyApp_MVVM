import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';
import 'package:test1/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/featured_books_shimmer.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return FeaturedBooksShimmer();
        }
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.211,
            child: ListView.builder(
              scrollDirection: .horizontal,
              itemCount: 5,
              padding: .zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.push(AppRoutes.kBookDetailsView);
                },
                child: Padding(
                  padding: const .only(right: 8, left: 8),
                  child: BookImage(),
                ),
              ),
            ),
          );
        } else {
          return FeaturedBooksShimmer();
        }
      },
    );
  }
}
// Get.to(
//   () => BookDetailView(),
//   transition: .size,
//   duration: Duration(milliseconds: 500),
// );