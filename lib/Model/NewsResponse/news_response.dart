import 'package:news_app/Model/SourceResponse/sources_response.dart';

class NewsResponse {
  String? status;
  int? totalResults;
  String? code;
  String? message;
  List<News>? articles;

  NewsResponse({this.status, this.totalResults, this.articles});

  NewsResponse.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["code"] is String) {
      code = json["code"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["totalResults"] is int) {
      totalResults = json["totalResults"];
    }
    if (json["articles"] is List) {
      articles = json["articles"] == null
          ? null
          : (json["articles"] as List).map((e) => News.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["totalResults"] = totalResults;
    if (articles != null) {
      _data["articles"] = articles?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class News {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  News(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  News.fromJson(Map<String, dynamic> json) {
    if (json["source"] is Map) {
      source = json["source"] == null ? null : Source.fromJson(json["source"]);
    }
    if (json["author"] is String) {
      author = json["author"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["urlToImage"] is String) {
      urlToImage = json["urlToImage"];
    }
    if (json["publishedAt"] is String) {
      publishedAt = json["publishedAt"];
    }
    if (json["content"] is String) {
      content = json["content"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (source != null) {
      _data["source"] = source?.toJson();
    }
    _data["author"] = author;
    _data["title"] = title;
    _data["description"] = description;
    _data["url"] = url;
    _data["urlToImage"] = urlToImage;
    _data["publishedAt"] = publishedAt;
    _data["content"] = content;
    return _data;
  }
}
