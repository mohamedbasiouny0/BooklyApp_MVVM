import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/app_routes.dart';

import '../../../../../../core/utils/assets.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 90,
      toolbarHeight: 80,
      pinned: true,
      surfaceTintColor: Colors.transparent,
      actions: [
        Padding(
          padding: const .only(right: 16),
          child: IconButton(
            onPressed: () => context.push(AppRoutes.kSearchViewView),
            icon: Icon(CupertinoIcons.search, color: Colors.white),
          ),
        ),
      ],
      leading: Padding(
        padding: const .only(left: 16),
        child: SvgPicture.asset(AssetsData.logo),
      ),
    );
  }
}
