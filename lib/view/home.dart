import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/model/home_product_model.dart';
import 'package:e_commerce_app/riverpood/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import '../components/product_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          campaigns(read, watch),
          space(),
          homeProductCategories(watch.hotDeals),
          homeProductCategories(watch.mostPopular),
        ],
      ),
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget homeProductCategories(HomeProductsModel model) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: 10.onlyLeftP,
              child: Text(
                model.categoryTitle,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: 10.onlyRightP,
              child: const Text(
                "SEE ALL",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xffA6A6AA),
                    fontSize: 14,
                    fontWeight: FontWeight.w800),
              ),
            )
          ],
        ),
        Container(
          margin: 10.allP,
        ),
        SizedBox(
          height: 270,
          child: ListView.separated(
            physics: const  BouncingScrollPhysics(),
            separatorBuilder: (context,index) =>const SizedBox(width: 20,),
            itemCount: model.products.length,
            scrollDirection: Axis.horizontal,
            padding: [20,10,20,10].paddingLTRB,
            itemBuilder: (context, index) {
              return ProductCard(product: model.products[index],);
            },
          ),
        )
      ],
    );
  }

  SizedBox campaigns(HomeRiverpod read, HomeRiverpod watch) {
    return SizedBox(
        height: 210,
        child: PageView.builder(
          onPageChanged: (index) => read.setCampaignIndex(index),
          itemCount: read.campaigns.length,
          itemBuilder: (context, index) => Stack(
            children: [
              Image.asset(watch.campaigns[index]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: 12.onlyBottomP,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < read.campaigns.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: watch.campaignsCurrentIndex == i
                                ? Constant.white
                                : Constant.grey,
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
