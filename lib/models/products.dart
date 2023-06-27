// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  List<Product> bestProduct;
  List<Product> allProduct;

  Products({
    required this.bestProduct,
    required this.allProduct,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        bestProduct: List<Product>.from(
            json["bestProduct"].map((x) => Product.fromJson(x))),
        allProduct: List<Product>.from(
            json["allProduct"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bestProduct": List<dynamic>.from(bestProduct.map((x) => x.toJson())),
        "allProduct": List<dynamic>.from(allProduct.map((x) => x.toJson())),
      };
}

class Product {
  int id;
  String name;
  String imageUrl;
  String productDescription;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.productDescription,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        productDescription: json["productDescription"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "productDescription": productDescription,
      };
}
