import 'dart:convert';

import 'package:front/models/article.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchArticle() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Article>((json) => Article.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
