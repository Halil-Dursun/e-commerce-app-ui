

import 'package:flutter/material.dart';

class Product {
  String image;
  String title;
  int price;
  double star;
  bool isSaved;
  String descriptionTitle;
  String descriptionDetail;
  List<Color> colors;
  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.star,
    required this.isSaved,
    required this.descriptionTitle,
    required this.descriptionDetail,
    required this.colors,
  });

  
}
