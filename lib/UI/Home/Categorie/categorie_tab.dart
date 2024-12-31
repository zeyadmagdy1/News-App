import 'package:flutter/material.dart';
import 'package:news_app/UI/Home/Categorie/NewsItem/news_item.dart';
import 'package:news_app/UI/Home/Categorie/categorie.dart';

typedef OnCategorieClicked = void Function(Categorie categorie);

// ignore: must_be_immutable
class CategorieTab extends StatelessWidget {
  List<Categorie> categorieList = Categorie.getAllCategories();
  OnCategorieClicked onCategorieClicked;
  CategorieTab({required this.onCategorieClicked, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pick your category \n of interest",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    onCategorieClicked(categorieList[index]);
                  },
                  child:
                      NewsItem(categorie: categorieList[index], index: index)),
              itemCount: categorieList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 20, // Horizontal space between columns
                mainAxisSpacing: 24, // Vertical space between rows
              ),
            ),
          )
        ],
      ),
    );
  }
}
