import 'package:flutter_application_5/domain/entity/produksia.dart';
import 'dart:ffi';

class Product extends ProductEntity {
  int? id;
  late double price;
  late String description;
  late String vendor;
  late String name;
  late int produksiaId;
  late int count;
  late int exists;
  late int productCategoryId;

  Product(
      {required this.description,
      required this.price,
      required this.name,
      required this.exists,
      required this.productCategoryId,
      required this.produksiaId,
      required this.count,
      required this.vendor})
      : super(
            description: description,
            price: price,
            name: name,
            exists: exists,
            productCategoryId: productCategoryId,
            produksiaId: produksiaId,
            count: count,
            vendor: vendor);

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'price': price,
      'name': name,
      'exists': exists,
      'productCategoryId': productCategoryId,
      'produksiaId': produksiaId,
      'count': count,
      'vendor': vendor
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json) {
    return Product(
        description: json['description'],
        price: json['price'],
        name: json['name'],
        exists: json['exists'],
        productCategoryId: json['productCategoryId'],
        produksiaId: json['produksiaId'],
        count: json['count'],
        vendor: json['vendor']);
  }
}
