import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front/utils/app_layout.dart';
import 'package:gap/gap.dart';

class CartItemView extends StatelessWidget {
  final Map<String, dynamic> article;
  const CartItemView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(border: Border.all(color: Color(0xffDCDCDC))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "images/${article["image"]}",
            width: size.width * 0.25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article["name"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Gap(3),
              Text(
                article["description"],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xffC0C0C0)),
              ),
              Gap(15),
              Row(
                children: [
                  Icon(
                    FluentSystemIcons.ic_fluent_remove_regular,
                    size: 20,
                    color: Color(0xff808080),
                  ),
                  Gap(20),
                  Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Gap(20),
                  Icon(
                    FluentSystemIcons.ic_fluent_add_filled,
                    color: Color(0xff53b175),
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.close,
                color: Color(0xffC0C0C0),
              ),
              Gap(25),
              Text(
                "\u0024 ${article["price"]}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
