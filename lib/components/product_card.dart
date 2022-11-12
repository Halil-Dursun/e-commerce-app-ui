import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:e_commerce_app/view/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Grock.to(ProductDetail(product: product)),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: 10.allBR,
          color: Constant.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    product.title,
                    style: const TextStyle(fontSize: 15),
                  )),
                  product.isSaved
                      ? const Icon(
                          Icons.bookmark,
                          color: Constant.orange,
                        )
                      : const Icon(
                          Icons.bookmark_border_rounded,
                          color: Constant.black,
                        ),
                ],
              ),
            ),
            Padding(
              padding: [10,5].horizontalAndVerticalP,
              child: Text(
                '\$${product.price}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Constant.black,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: [10,0].horizontalAndVerticalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.star_rate_rounded,color: Constant.orange,size: 22,),
                  Text(product.star.toString(),
                    style: const TextStyle(
                        color: Constant.black,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
