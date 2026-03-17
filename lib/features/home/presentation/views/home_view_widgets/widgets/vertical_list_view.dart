import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';
import 'package:test1/core/widgets/error_widget.dart';
import 'package:test1/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/newest_books_shimmer.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/newest_item.dart.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => Padding(
              padding: const .only(bottom: 16),
              child: GestureDetector(
                onTap: () => context.push(
                  AppRoutes.kBookDetailsView,
                  extra: state.booksList[index],
                ),
                child: NewestItem(bookModel: state.booksList[index]),
              ),
            ),
          );
        }
        if (state is NewestBooksLoading) {
          return NewestBooksShimmer();
        }
        if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: ErrorMessageWidget(errMessage: state.errorMessage),
          );
        } else {
          return NewestBooksShimmer();
        }
      },
    );
  }
}
