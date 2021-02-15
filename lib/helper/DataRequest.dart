import 'package:http/http.dart' as http;
import 'package:portal_berita/models/NewsRespone.dart';
import 'dart:convert';

String apiKey = "22cd27a0448f4752977b7688ce2c5494";

class News {
  Future<NewsRespone> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=id&apiKey=$apiKey";
    var respone = await http.get(url);
    var jsonData = jsonDecode(respone.body);
    return NewsRespone.fromJsonMap(jsonData);
  }
}

class RequestByCategorie {
  Future<NewsRespone> getNewsByCategory(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=id&category=$category&apiKey=$apiKey";
    var respone = await http.get(url);
    var jsonData = jsonDecode(respone.body);
    return NewsRespone.fromJsonMap(jsonData);
  }
}
