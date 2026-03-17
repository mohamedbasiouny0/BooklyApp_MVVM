import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/core/utils/service_locator.dart';
import 'package:test1/features/home/data/book_model/book_model.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/presentation/manager/display_book_details_cubit/display_book_details_cubit.dart';
import 'package:test1/features/home/presentation/views/book_details_view.dart';
import 'package:test1/features/home/presentation/views/home_view.dart';
import 'package:test1/features/search/presentation/views/search_view.dart';
import 'package:test1/features/splash/presentation/views/splash_view.dart';

sealed class AppRoutes {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchViewView = '/SearchView';

  static final _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImp>()),
            child: BookDetailView(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(path: kSearchViewView, builder: (context, state) => SearchView()),
    ],
  );

  static GoRouter get router => _router;
}
