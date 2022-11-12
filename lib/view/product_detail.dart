import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product product;
  ProductDetail({Key? key, required this.product}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              image(),
              title(),
              colors(context),
              subDetail(context),
              price(context),
              button(),
            ],
          ),
          appBar(),
        ],
      ),
    );
  }

  Padding button() {
    return Padding(
              padding: [20, 20, 20, 0].paddingLTRB,
              child: CustomButton(text: "Add to cart", onPressed: (){}),
            );
  }

  Padding price(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Total",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$${widget.product.price}",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Text(
        widget.product.title,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  SafeArea appBar() {
    return SafeArea(
      child: Padding(
        padding: 10.horizontalP,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => Grock.back(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Constant.black,
                )),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border_rounded,
                  color: Constant.black),
            ),
          ],
        ),
      ),
    );
  }

  Padding subDetail(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          Text(
            widget.product.descriptionTitle,  
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.product.descriptionDetail,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Padding colors(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Colors",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 15,
            children: [
              for (int i = 0; i < widget.product.colors.length; i++)
                Container(
                  width: 113,
                  height: 40,
                  decoration: BoxDecoration(
                    color: widget.product.colors[i],
                    borderRadius: 10.allBR,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox image() {
    return SizedBox(
      height: 381,
      width: double.maxFinite,
      child: Hero(
        tag: widget.product.image,
        child: Image.asset(widget.product.image, fit: BoxFit.cover),
      ),
    );
  }
}

/*
AppBar(
        title: null,
        leading: const Icon(
          Icons.arrow_back,
          color: Constant.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border_rounded,
                  color: Constant.black))
        ],
      )
*/
