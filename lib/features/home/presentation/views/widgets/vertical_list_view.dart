import 'package:flutter/cupertino.dart';
import 'package:test1/features/home/presentation/views/widgets/best_seller_item.dart.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) =>
          Padding(padding: const .only(bottom: 16), child: BestSellerItem()),
    );
  }
}
