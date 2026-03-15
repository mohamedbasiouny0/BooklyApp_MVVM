import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/core/utils/styles.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/horizontal_list_view.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/vertical_list_view.dart';
import 'custom_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CustomSliverAppBar(),
        SliverToBoxAdapter(child: Gap(16)),
        SliverToBoxAdapter(child: HorizontalListView()),
        SliverToBoxAdapter(child: Gap(50)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .only(left: 16),
            child: Text(
              'Newest Book',
              style: Styles.regularTextStyle20.copyWith(fontWeight: .bold),
            ),
          ),
        ),
        SliverToBoxAdapter(child: Gap(16)),
        VerticalListView(),
      ],
    );
  }
}
