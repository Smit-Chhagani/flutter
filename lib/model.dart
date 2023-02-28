// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Model> welcomeFromJson(String str) => List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String welcomeToJson(List<Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.id,
    this.data,
    // this.name,
    // this.description,
    // this.price,
  });

  String productName;
  String productImage;
  String productPrice;
  String productDescription;
  String productCategory;
  String id;
  String? data;
  // String? name;
  // String? description;
  // String? price;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    productName: json["ProductName"],
    productImage: json["ProductImage"],
    productPrice: json["ProductPrice"],
    productDescription: json["ProductDescription"],
    productCategory: json["ProductCategory"],
    id: json["id"],
    data: json["data"],
    // name: json["name"],
    // description: json["description"],
    // price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "ProductName": productName,
    "ProductImage": productImage,
    "ProductPrice": productPrice,
    "ProductDescription": productDescription,
    "ProductCategory": productCategory,
    "id": id,
    "data": data,
    // "name": name,
    // "description": description,
    // "price": price,
  };
}
