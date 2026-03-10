import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

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
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.search, color: Colors.white),
        ),
      ],
      leading: SvgPicture.asset(AssetsData.logo),
    );
  }
}
