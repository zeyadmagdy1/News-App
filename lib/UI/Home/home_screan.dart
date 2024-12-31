import 'package:flutter/material.dart';
import 'package:news_app/UI/Home/Categorie/categorie.dart';
import 'package:news_app/UI/Home/Categorie/categorie_tab.dart';
import 'package:news_app/UI/Home/CategorieDetails/details_widget.dart';
import 'package:news_app/UI/Home/Settings/setting_tab.dart';
import 'package:news_app/UI/Home/drawer/drawer.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class HomeScrean extends StatefulWidget {
  static const String routeName = "/homeScrean";
  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  void initState() {
    super.initState();
    selectedTab = CategorieTab(
      onCategorieClicked: onCategorieClicked,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("News App"),
          ),
          drawer: MyDrawer(
            onItemClieded: onItemClied,
          ),
          body: selectedTab),
    );
  }

  late Widget selectedTab;

  void onItemClied(Clieditem clieditem) {
    switch (clieditem) {
      case Clieditem.categore:
        setState(() {
          selectedTab = CategorieTab(
            onCategorieClicked: onCategorieClicked,
          );
        });
        break;
      case Clieditem.setting:
        setState(() {
          selectedTab = SettingTab();
        });
        break;
    }
    Navigator.pop(context);
  }

  void onCategorieClicked(Categorie categorie) {
    selectedTab = CategorieDetails(categorie: categorie);
    setState(() {});
  }
}
