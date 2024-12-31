import 'package:flutter/material.dart';
import 'package:news_app/API/apiManger.dart';
import 'package:news_app/UI/Home/Categorie/categorie.dart';
import 'package:news_app/UI/Home/CategorieDetails/sourses_tab_widget.dart';

// ignore: must_be_immutable
class CategorieDetails extends StatelessWidget {
  Categorie categorie;
  CategorieDetails({required this.categorie, super.key});

  @override
  Widget build(BuildContext context) {
    //call API
    return FutureBuilder(
      future: ApiManger.getData(categorie.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError || snapshot.data?.status == "error") {
          Center(
            child: Column(
              children: [
                Text(snapshot.data?.message ?? snapshot.error.toString()),
                ElevatedButton(onPressed: () {}, child: const Text("try again"))
              ],
            ),
          );
        }
        var sourcesList = snapshot.data?.sources;
        return SourceTabWidget(
          sourcesList: sourcesList!,
        );
      },
    );
  }
}
