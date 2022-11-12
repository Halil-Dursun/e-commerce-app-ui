import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/model/bottom_nav_bar_model.dart';
import 'package:e_commerce_app/view/account.dart';
import 'package:e_commerce_app/view/cart.dart';
import 'package:e_commerce_app/view/category.dart';
import 'package:e_commerce_app/view/home.dart';
import 'package:e_commerce_app/view/wishlist.dart';
import 'package:flutter/material.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(icon: Assets.icons.bottomHomeIcon, label: 'Home'),
    BottomNavBarModel(icon: Assets.icons.bottomSaveIcon, label: 'WishList'),
    BottomNavBarModel(
        icon: Assets.icons.bottomCategoriesIcon, label: 'Category'),
    BottomNavBarModel(icon: Assets.icons.bottomProfileIcon, label: 'Account'),
    BottomNavBarModel(icon: Assets.icons.bottomCartIcon, label: 'Cart'),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const WishList();
      case 2:
        return const Category();
      case 3:
        return const Account();
      case 4:
        return const Cart();
      default:
        return const HomePage();
    }
  }
}
