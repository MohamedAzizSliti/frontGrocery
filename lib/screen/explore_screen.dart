import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front/components/exploreitem_view.dart';
import 'package:front/screen/listarticle_screen.dart';
import 'package:front/utils/app_info_list.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Center(
          child: Text(
            "Find Products",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 75, 75, 75),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
            children: Explore.map((explore) => Ink(
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                ListArticles(type: explore["type"]))));
                      },
                      child: ExploreItemView(explore: explore)),
                )).toList()),
      ),
    );
  }
}
