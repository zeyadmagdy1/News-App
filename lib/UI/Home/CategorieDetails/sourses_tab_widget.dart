import 'package:flutter/material.dart';
import 'package:news_app/Model/SourceResponse/sources_response.dart';
import 'package:news_app/UI/Home/CategorieDetails/categorie_tab_widget.dart';
import 'package:news_app/UI/Home/CategorieDetails/news_list_widget.dart';

// ignore: must_be_immutable
class SourceTabWidget extends StatefulWidget {
  List<Source> sourcesList;

  SourceTabWidget({required this.sourcesList, super.key});

  @override
  State<SourceTabWidget> createState() => _SourceTabWidgetState();
}

class _SourceTabWidgetState extends State<SourceTabWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sourcesList.length,
      child: Column(
        children: [
          //TabBar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
                indicatorColor: Colors.transparent,
                isScrollable: true,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                tabs: widget.sourcesList
                    .map((e) => CategorieTabWidget(
                          txt: e.name ?? "",
                          isSelected:
                              widget.sourcesList.indexOf(e) == selectedIndex,
                        ))
                    .toList()),
          ),

          Expanded(child: NewsListWidget(widget.sourcesList[selectedIndex])),
        ],
      ),
    );
  }
}
