import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:test1/features/search/presentation/views/widgets/search_text_field.dart';

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
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
