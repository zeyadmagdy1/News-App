import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsResponse/news_response.dart';
import 'package:news_app/Model/SourceResponse/sources_response.dart';

class ApiManger {
  static const String baseURL = "newsapi.org";
  static const String apiKey = "84384f38d5e24f87b6e9959fadfdc7f2";

  static Future<SourcesResponse> getData(String categoryId) async {
    var uri = Uri.https(baseURL, "v2/top-headlines/sources", {
      "apiKey": apiKey,
      "category": categoryId,
    });
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var soursesResponse = SourcesResponse.fromJson(json);
    return soursesResponse;
  }

  static Future<NewsResponse> getNews(String sourseId) async {
    var uri = Uri.https(baseURL, "v2/everything", {
      "apiKey": apiKey,
      "sources": sourseId,
    });
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}
