import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front/components/article_view.dart';
import 'package:front/models/article.dart';
import 'package:front/utils/app_getData.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

class ListArticles extends StatefulWidget {
  final String type;
  const ListArticles({super.key, required this.type});

  @override
  State<ListArticles> createState() => _ListArticlesState();
}

class _ListArticlesState extends State<ListArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("data"),
        FutureBuilder<List<Article>>(
          future: getData(type: widget.type),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              final List<Article> data = snapshot.data;

              if (data.isEmpty) {
                return const Center(
                  child: Text('No articles'),
                );
              }

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  final Article article = data[index];

                  return ArticleView(article: article);
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ]),
    );
  }
}
