import 'package:flutter/material.dart';
import 'package:news_app/UI/Home/Categorie/categorie.dart';

// ignore: must_be_immutable
class NewsItem extends StatelessWidget {
  Categorie categorie;
  int index;
  NewsItem({required this.categorie, required this.index, super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: categorie.color,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(25),
                topRight: const Radius.circular(25),
                bottomLeft: index.isEven
                    ? const Radius.circular(25)
                    : const Radius.circular(0),
                bottomRight: index.isEven
                    ? const Radius.circular(0)
                    : const Radius.circular(25))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/${categorie.img}",
              width: double.infinity,
              height: 120,
            ),
            Text(
              categorie.title,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
