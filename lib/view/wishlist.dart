import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishList extends ConsumerStatefulWidget{
  const WishList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishListState();
}

class _WishListState extends ConsumerState<WishList>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Wishist"),
      ),
    );
  }
}