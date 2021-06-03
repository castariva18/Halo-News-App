import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';
import 'package:newsapp/model/source_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Halo News", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            SizedBox(
              height: 2.0,
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2.0, top: 2.0),
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                article.description.toString(),
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            GestureDetector(
              onTap: () {
                launch(article.url.toString());
              },
              child: Container(
                margin: EdgeInsets.only(left: 8.0, top: 4.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  "click for more..",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
