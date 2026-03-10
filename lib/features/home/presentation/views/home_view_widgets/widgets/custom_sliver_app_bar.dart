import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            onPressed: () {},
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
