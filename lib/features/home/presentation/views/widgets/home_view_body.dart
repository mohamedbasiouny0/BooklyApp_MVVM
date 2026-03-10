import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/widgets/custom_text.dart';
import 'package:test1/features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:test1/features/home/presentation/views/widgets/vertical_list_view.dart';
import 'custom_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(),
          SliverToBoxAdapter(child: Gap(16)),
          SliverToBoxAdapter(child: HorizontalListView()),
          SliverToBoxAdapter(child: Gap(50)),
          SliverToBoxAdapter(
            child: CustomText('Best Seller', fontSize: 24, fontWeight: .bold),
          ),
          SliverToBoxAdapter(child: Gap(16)),
          VerticalListView(),
        ],
      ),
    );
  }
}
