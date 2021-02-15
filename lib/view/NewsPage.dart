import 'package:flutter/material.dart';
import 'package:portal_berita/models/NewsRespone.dart';
import 'package:portal_berita/models/Category.dart';
import 'package:portal_berita/view/CategoryItem.dart';
import 'package:portal_berita/view/NewsItem.dart';

class NewsPage extends StatelessWidget {
  NewsRespone newsRespone;
  List<Categorie> categories;

  NewsPage(this.newsRespone, this.categories);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 70.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      imageAssetResult: categories[index].imageUrl,
                      categoryName: categories[index].categoriName,
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: ListView.builder(
                itemCount: newsRespone.articles.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
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
            )
          ],
        ),
      ),
    );
  }
}
