import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front/components/cartitem__view.dart';
import 'package:front/utils/app_info_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Center(
          child: Text(
            "My Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 75, 75, 75),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: Article.map((article) => CartItemView(article: article))
                  .toList())),
    );
  }
}
