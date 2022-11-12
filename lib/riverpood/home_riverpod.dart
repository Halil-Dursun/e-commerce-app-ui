import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/model/home_product_model.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaignPNG,
    Assets.images.imCampaignPNG,
    Assets.images.imCampaignPNG,
  ];

  int campaignsCurrentIndex = 0;

  void setCampaignIndex(int index) {
    campaignsCurrentIndex = index;
    notifyListeners();
  }

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Hot Deals", products: [
    Product(
        image: Assets.images.imC1PNG,
        title: 'apple iMac 24" (2021)',
        price: 1299,
        star: 4.9,
        isSaved: true,
        descriptionTitle: "iMac sdafasdfasdfsadfasdfasdasddsadas",
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        colors: [Constant.orange,Colors.blue,Colors.green]),
        Product(
        image: Assets.images.imW1PNG,
        title: 'Apple Watch V1',
        descriptionTitle: "Apple Watch sdafasdfasdfsadfasdfasdasddsadasddfsadsadsda",
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        colors: [Constant.orange,Colors.blue,Colors.green],
        price: 859,
        star: 4.7,  
        isSaved: true),
        Product(
        image: Assets.images.imP1PNG,
        title: 'Apple iPad Pro',
        descriptionTitle: "iPad sdafasdfasdfsadfasdfasdasddsasadfasda",
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        colors: [Constant.orange,Colors.blue,Colors.green],
        price: 1199,
        star: 5,
        isSaved: false),
  ]);
  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "Most Popular", products: [
    Product(
        image: Assets.images.imC2PNG,
        title: 'apple iMac 17" (2018)',
        descriptionTitle: "iMac  7 sdafasdfasdfsadfasdfasdasddsadasddfsda",
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        colors: [Constant.orange,Colors.blue,Colors.green],
        price: 899,
        star: 4.2,
        isSaved: false),
        Product(
        image: Assets.images.imW2PNG,
        title: 'Apple Watch V2',
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        descriptionTitle: "Watch V2 sdafadddasasddsadsafasddfsadfasda",
        colors: [Constant.orange,Colors.blue,Colors.green],
        price: 1299,
        star: 4.8,  
        isSaved: true),
        Product(
        image: Assets.images.imP2PNG,
        title: 'Apple iPhone 12',
        descriptionTitle: "iPhone sdafasdfasdfsadfasdfasdasddsadassda",
        descriptionDetail: "sadfasdfsdaksadsdaksşaddsafkakldsakfsdaklfadsklfdakşslşfdasklfdsaklfsadkfsadkfadsklfksdlaafsdaklşafdsklşfdsklşakşlds",
        colors: [Constant.orange,Colors.blue,Colors.green],
        price: 1099,
        star: 4.4,
        isSaved: true),
  ]);
}
