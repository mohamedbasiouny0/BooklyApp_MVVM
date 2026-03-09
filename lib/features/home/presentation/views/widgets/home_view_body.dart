import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/widgets/custom_text.dart';
import 'package:test1/features/home/presentation/views/widgets/book_element.dart';
import 'package:test1/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:test1/features/home/presentation/views/widgets/vertical_list_view.dart';
import 'custom_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(),
        SliverToBoxAdapter(child: Gap(16)),
        SliverToBoxAdapter(child: HorizontalListView()),
        SliverToBoxAdapter(child: Gap(32)),
        SliverToBoxAdapter(
          child: Padding(
            padding: .only(left: 16),
            child: CustomText('Best Seller', fontSize: 24, fontWeight: .bold),
          ),
        ),
        SliverToBoxAdapter(child: Gap(16)),
        VerticalListView(),
      ],
    );
  }
}
