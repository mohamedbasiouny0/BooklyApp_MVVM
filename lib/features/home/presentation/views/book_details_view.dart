import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/book_details_view_widgets/widgets/book_details_view_body.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsViewBody());
  }
}
