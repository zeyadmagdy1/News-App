import 'package:flutter/material.dart';
import 'package:news_app/Core/theme.dart';
import 'package:news_app/UI/Home/CategorieDetails/NewsDetails/newsDetails.dart';
import 'package:news_app/UI/Home/home_screan.dart';
import 'package:news_app/UI/SplashScrean/splash_screan.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScrean.routeName: (_) => SplashScrean(),
        HomeScrean.routeName: (_) => HomeScrean(),
        NewsDetails.routeName: (_) => NewsDetails(),
      },
      initialRoute: SplashScrean.routeName,
      theme: Themee.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
