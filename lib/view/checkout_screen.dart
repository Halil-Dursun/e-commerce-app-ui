import 'package:e_commerce_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class CheckOutView extends ConsumerWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text("checkout",style: TextStyle(fontSize: 18,color: Constant.black),),
        leading: IconButton(onPressed: ()=> Grock.back(), icon: const Icon(Icons.arrow_back,color: Constant.black,size: 32,)),
      ),
    );
  }
}