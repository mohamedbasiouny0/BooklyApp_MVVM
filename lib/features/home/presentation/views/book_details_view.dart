import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_view_body.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const .only(left: 16),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(CupertinoIcons.xmark),
          ),
        ),
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: .only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart),
            ),
          ),
        ],
      ),
      body: BookDetailsViewBody(),
    );
  }
}
