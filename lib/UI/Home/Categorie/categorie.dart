import 'package:flutter/material.dart';

class Categorie {
  String id;
  String img;
  String title;
  Color color;
  Categorie(
      {required this.id,
      required this.title,
      required this.img,
      required this.color});

  static List<Categorie> getAllCategories() {
    return [
      Categorie(
          id: "sports",
          title: "Sports",
          img: "sports.png",
          color: const Color(0xFFC91C22)),
      Categorie(
          id: "science",
          title: "Science",
          img: "science.png",
          color: const Color(0xFFF2D352)),
      Categorie(
          id: "health",
          title: "Health",
          img: "health.png",
          color: const Color(0xFFED1E79)),
      Categorie(
          id: "business",
          title: "Business",
          img: "bussines.png",
          color: const Color(0xFFCF7E48)),
      Categorie(
          id: "entertainment",
          title: "Entertainment",
          img: "environment.png",
          color: const Color(0xFF4882CF)),
      Categorie(
          id: "technology",
          title: "Technology",
          img: "technology.png",
          color: const Color(0xFF003E90)),
    ];
  }
}
