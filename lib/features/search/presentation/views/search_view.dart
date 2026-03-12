import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_image.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/book_rating.dart';
import 'package:test1/features/search/presentation/views/widgets/result_item.dart';
import 'widgets/search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(body: SearchViewBody()),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SearchTextField(),
            Gap(3),
            Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      ),
    );
  }
}
