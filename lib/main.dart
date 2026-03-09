import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/core/utils/contsant.dart';
import 'package:test1/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF100B20),
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),

      home: SplashView(),
    );
  }
}
