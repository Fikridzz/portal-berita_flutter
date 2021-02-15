import 'package:flutter/material.dart';
import 'package:portal_berita/view/ArticleView.dart';

class NewsItem extends StatelessWidget {
  final String imgUrl, title, desc, content, name, postUrl;

  NewsItem(
      {this.imgUrl,
      this.title,
      this.desc,
      this.content,
      this.name,
      @required this.postUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (content) => ArticleView(postUrl: postUrl)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 24.0),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6))),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w500)),
                    Text(desc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                    SizedBox(height: 16.0),
                    Text(name,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    imgUrl,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
