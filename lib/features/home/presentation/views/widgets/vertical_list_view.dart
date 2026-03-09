
import 'package:flutter/cupertino.dart';
import 'package:test1/features/home/presentation/views/widgets/book_element.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 7,
      itemBuilder: (context, index) => Padding(
        padding: const .only(right: 16, left: 16, bottom: 16),
        child: BookElement(),
      ),
    );
  }
}