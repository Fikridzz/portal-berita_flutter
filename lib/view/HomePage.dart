import 'package:flutter/material.dart';
import 'package:portal_berita/helper/DataCategory.dart';
import 'package:portal_berita/helper/DataRequest.dart';
import 'package:portal_berita/helper/Widget.dart';
import 'package:portal_berita/models/Category.dart';
import 'NewsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  News news = News();

  List<Categorie> categories = List<Categorie>();

  @override
  void initState() {
    categories = getCategorie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: myAppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: news.getNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return NewsPage(snapshot.data, categories);
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Center(
                child: Text("Data tidak tersedia"),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
