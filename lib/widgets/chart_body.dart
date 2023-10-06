import 'package:e_commers/widgets/home_items.dart';
import 'package:e_commers/widgets/product_in_the_cart.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffeeedf3),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        border: Border.all(color: Colors.transparent),
      ),
      child: ListView(
          children: HomeItems.items
              .map((e) => ProductCart(img: e.img, title: e.description))
              .toList()),
    );
  }
}
