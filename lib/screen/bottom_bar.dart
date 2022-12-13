import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:front/models/article.dart';
import 'package:front/screen/cart_screen.dart';
import 'package:front/screen/explore_screen.dart';
import 'package:front/screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front/utils/app_article.dart';

class BottomBar extends StatefulWidget {
  late Future<Article> futureArticle;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    const Text("Favorite"),
    const Text("Profile")
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _onItemTap,
          elevation: 10,

          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.blueGrey[400],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_store_regular),
              label: "Shop",
            ),
            BottomNavigationBarItem(
                icon:
                    Icon(FluentSystemIcons.ic_fluent_clipboard_search_regular),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_heart_regular),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: "Profile"),
          ]),
    );
  }
}
