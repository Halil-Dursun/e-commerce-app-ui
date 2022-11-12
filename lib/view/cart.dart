import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/view/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class Cart extends ConsumerStatefulWidget {
  const Cart({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartState();
}

class _CartState extends ConsumerState<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [18, 12].horizontalAndVerticalP,
            margin: 20.allP,
            decoration: BoxDecoration(
              color: Constant.yellow,
              borderRadius: 10.allBR,
            ),
            child: const Center(
                child: Text("Delivery for FREE until the end of the month")),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            padding: 40.verticalP,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                  color: Constant.white,
                  borderRadius: 10.allBR,
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 15),
                  ],
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.images.imP1PNG,
                        width: Grock.width * .3,
                        height: Grock.width * .3,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I phone 18 Pro Max",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$799",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text("Quantity",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal)),
                              const SizedBox(
                                width: 7,
                              ),
                              quantityButton(icon: Icons.remove, onTap: () {}),
                              Padding(
                                padding: 7.horizontalP,
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              quantityButton(icon: Icons.add, onTap: () {}),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.clear),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: [6, 0, 6, 30].paddingLTRB,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$1598",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          CustomButton(
            text: "checkout",
            onPressed: () => Grock.to(const CheckOutView()),
          ),
        ],
      ),
    );
  }

  Widget quantityButton({required IconData icon, required Function onTap}) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Constant.orange,
          borderRadius: 4.allBR,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Constant.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
