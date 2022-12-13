import 'dart:convert';
import 'dart:ffi';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/models/article.dart';
import 'package:front/screen/bottom_bar.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> getData({String? type}) async {
  var url = type == null
      ? "http://10.0.2.2:5000/api/article"
      : "http://10.0.2.2:5000/api/article/${type}";
  var respone = await http.get(Uri.parse(url));

  var responseBody = jsonDecode(respone.body);

  final List<Article> articles = [];

  for (var art in responseBody) {
    articles.add(Article.fromJson(art));
  }
  return articles;
}

Future login(email, password, context) async {
  try {
    var response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password});
    print(response.body);

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => BottomBar()));
  } catch (e) {
    print(e.toString());
  }
}
