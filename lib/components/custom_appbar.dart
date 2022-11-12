import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({Key? key, this.appBarTitle = "iDrip"}) : super(key: key);

  String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        appBarTitle,
        style:
            const TextStyle(color: Constant.black, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset(
          Assets.icons.draweIcons,
          width: 32,
          height: 32,
        ),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: SvgPicture.asset(Assets.icons.searchIcons),
        ),
      ],
      backgroundColor: Constant.darkWhite,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
