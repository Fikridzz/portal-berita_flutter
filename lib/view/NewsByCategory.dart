import 'package:flutter/material.dart';
import 'package:portal_berita/helper/DataRequest.dart';
import 'package:portal_berita/helper/Widget.dart';
import 'package:portal_berita/models/NewsRespone.dart';
import 'package:portal_berita/view/NewsItem.dart';

class NewsByCategory extends StatefulWidget {
  final String newsCategory;

  NewsByCategory({this.newsCategory});

  @override
  _NewsByCategoryState createState() => _NewsByCategoryState(newsCategory);
}

class _NewsByCategoryState extends State<NewsByCategory> {
  RequestByCategorie newsByCategory = RequestByCategorie();
  String newsCategory;

  _NewsByCategoryState(this.newsCategory);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: myAppBar(),
      body: FutureBuilder(
        future: newsByCategory.getNewsByCategory(newsCategory),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListNewsCategory(snapshot.data);
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Center(
              child: Text("Data tidak tersedia"),
            );
          }
        },
      ),
    );
  }
}

class ListNewsCategory extends StatelessWidget {
  NewsRespone newsRespone;

  ListNewsCategory(this.newsRespone);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 16.0),
        child: ListView.builder(
          itemCount: newsRespone.articles.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return NewsItem(
              imgUrl: newsRespone.articles[index].urlToImage ?? "",
              title: newsRespone.articles[index].title ?? "",
              desc: newsRespone.articles[index].description ?? "",
              content: newsRespone.articles[index].content ?? "",
              name: newsRespone.articles[index].source.name ?? "",
              postUrl: newsRespone.articles[index].url ?? "",
            );
          },
        ),
      ),
    );
  }
}
