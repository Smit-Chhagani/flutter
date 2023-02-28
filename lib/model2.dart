// To parse this JSON data, do
//
//     final listView2 = listView2FromJson(jsonString);

import 'dart:convert';

List<ListView2> listView2FromJson(String str) => List<ListView2>.from(json.decode(str).map((x) => ListView2.fromJson(x)));

String listView2ToJson(List<ListView2> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListView2 {
  ListView2({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productCategory,
    required this.id,
    this.productname,
    this.productimage,
    this.productprice,
    this.productdescription,
    this.productcategory,
  });

  String productName;
  String productImage;
  String productPrice;
  String productDescription;
  String productCategory;
  String id;
  String? productname;
  String? productimage;
  String? productprice;
  String? productdescription;
  String? productcategory;

  factory ListView2.fromJson(Map<String, dynamic> json) => ListView2(
    productName: json["ProductName"],
    productImage: json["ProductImage"],
    productPrice: json["ProductPrice"],
    productDescription: json["ProductDescription"],
    productCategory: json["ProductCategory"],
    id: json["id"],
    productname: json["Productname"],
    productimage: json["Productimage"],
    productprice: json["Productprice"],
    productdescription: json["Productdescription"],
    productcategory: json["Productcategory"],
  );

  Map<String, dynamic> toJson() => {
    "ProductName": productName,
    "ProductImage": productImage,
    "ProductPrice": productPrice,
    "ProductDescription": productDescription,
    "ProductCategory": productCategory,
    "id": id,
    "Productname": productname,
    "Productimage": productimage,
    "Productprice": productprice,
    "Productdescription": productdescription,
    "Productcategory": productcategory,
  };
}
