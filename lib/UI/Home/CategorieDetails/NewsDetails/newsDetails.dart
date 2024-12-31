import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/NewsResponse/news_response.dart';

// ignore: must_be_immutable
class NewsDetails extends StatelessWidget {
  static const String routeName = "/newsDetails";
  NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(news.title ?? ""),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: news.urlToImage ?? "",
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )),
                const Text(
                  "BBC News",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Author : ${news.author ?? ""}",
                  style: const TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  news.title ?? "",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  news.content ?? "",
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  news.description ?? "",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  news.publishedAt ?? "",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )),
    );
  }
}
