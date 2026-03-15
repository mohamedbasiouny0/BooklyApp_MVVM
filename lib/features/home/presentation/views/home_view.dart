import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/featured_books_shimmer.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FeaturedBooksShimmer()));
  }
}
