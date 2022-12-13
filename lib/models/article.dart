import 'dart:convert';

class Article {
  Article({
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

  factory Article.fromJson(Map<String, dynamic> json) => Article(
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
