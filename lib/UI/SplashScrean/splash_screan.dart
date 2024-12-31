import 'package:flutter/material.dart';
import 'package:news_app/UI/Home/home_screan.dart';

class SplashScrean extends StatelessWidget {
  static const String routeName = "/splash";

  const SplashScrean({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScrean.routeName);
    });
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Center(
          child: Image.asset(
        "assets/images/logo.png",
        width: 150,
        height: 200,
      )),
    );
  }
}
