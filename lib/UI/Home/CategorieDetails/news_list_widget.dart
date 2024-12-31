import 'package:flutter/material.dart';
import 'package:news_app/API/apiManger.dart';
import 'package:news_app/Model/SourceResponse/sources_response.dart';
import 'package:news_app/UI/Home/CategorieDetails/NewsDetails/newsDetails.dart';
import 'package:news_app/UI/Home/CategorieDetails/news_list_item.dart';

// ignore: must_be_immutable
class NewsListWidget extends StatelessWidget {
  Source source;
  NewsListWidget(this.source, {super.key});
  //call api
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManger.getNews(source.id!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError || snapshot.data?.status == "error") {
          return Center(
            child: Column(
              children: [
                Text(snapshot.data?.message ?? snapshot.hasError.toString()),
                ElevatedButton(onPressed: () {}, child: const Text("Try Again"))
              ],
            ),
          );
        }
        var newsList = snapshot.data?.articles;
        return ListView.builder(
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, NewsDetails.routeName,
                    arguments: newsList[index]);
              },
              child: NewsListItem(news: newsList![index])),
          itemCount: newsList?.length ?? 0,
        );
      },
    );
  }
}
