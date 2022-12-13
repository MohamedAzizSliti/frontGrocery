import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:front/utils/app_hexColor.dart';
import 'package:front/utils/app_layout.dart';
import 'package:gap/gap.dart';

class ExploreItemView extends StatelessWidget {
  final Map<String, dynamic> explore;
  const ExploreItemView({super.key, required this.explore});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.40,
      height: size.height * 0.25,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: HexColor.fromHex(explore["bgColor"]),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: HexColor.fromHex(explore["borderColor"]),
            width: 1,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/${explore["image"]}",
            width: size.width * 0.35,
            height: size.width * 0.23,
          ),
          Gap(20),
          Text(
            explore["name"],
            textAlign: TextAlign.center,
            style: TextStyle(
                wordSpacing: 2, fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
