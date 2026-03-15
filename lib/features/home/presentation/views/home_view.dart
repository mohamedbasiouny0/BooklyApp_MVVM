import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:test1/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:test1/features/home/presentation/views/home_view_widgets/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<FeaturedBooksCubit>(context).getFeaturedBooks();
    BlocProvider.of<NewestBooksCubit>(context).getNewestBooks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
