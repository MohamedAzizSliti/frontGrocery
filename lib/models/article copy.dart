import 'dart:convert';

class User {
  User({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.type,
  });

  String id;
  String name;
  String image;
  String description;
  double price;
  String type;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        description: json["description"],
        price: json["price"].toDouble(),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "description": description,
        "price": price,
        "type": type,
      };
}
