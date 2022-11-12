import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/riverpood/base_scaffold_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return Container(
      width: Grock.width,
      padding: [20, 30].horizontalAndVerticalP,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          )
        ],
        color: Constant.darkWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < read.items.length; i++)
            Stack(
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  onTap: () {
                    read.setCurrentIndex(i);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        read.items[i].icon,
                        color: watch.currentIndex == i
                            ? Constant.orange
                            : Constant.black,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        read.items[i].label,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: watch.currentIndex == i
                                ? Constant.orange
                                : Constant.black),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: watch.currentIndex == i,
                  child: Positioned.fill(
                    top: -32,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 2,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: 4.allBR,
                          color: Constant.orange,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}

/*
BottomNavigationBar(
      items: read.items,
      currentIndex: watch.currentIndex,
      onTap: (index) => read.setCurrentIndex(index), 
      backgroundColor: Constant.darkWhite,
      selectedItemColor: Constant.orange,
      unselectedItemColor: Constant.black,
    )
 */