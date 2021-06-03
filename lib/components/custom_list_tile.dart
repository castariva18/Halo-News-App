import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';
import 'package:newsapp/pages/article_detail_page.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticlePage(
                      article: article,
                    )));
      },
      child: Container(
        margin:
            EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0, bottom: 14.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2.0,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage.toString()),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 8.0, top: 4.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2.0, top: 2.0),
              padding: EdgeInsets.all(8.0),
              child: Text(
                article.title.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ));
}
