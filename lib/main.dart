import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/core/utils/app_routes.dart';
import 'package:test1/core/utils/contsant.dart';
import 'package:test1/core/utils/service_locator.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:test1/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(homeRepo: getIt.get<HomeRepoImp>()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(homeRepo: getIt.get<HomeRepoImp>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0XFF100B20),
          appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor: Colors.white,
              overlayColor: Colors.transparent,
              enableFeedback: false,
            ),
          ),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
              .copyWith(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white),
                titleLarge: TextStyle(color: Colors.white),
                titleMedium: TextStyle(color: Colors.white),
                titleSmall: TextStyle(color: Colors.white),
              ),
        ),

        routerConfig: AppRoutes.router,
      ),
    );
  }
}
