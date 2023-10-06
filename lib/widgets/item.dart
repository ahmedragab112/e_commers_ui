import 'package:e_commers/model/item._shopping.dart';
import 'package:e_commers/model/theme.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({super.key, required this.item});
  final ItemShopping item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyTheme.primryColor,
                ),
                child: Text(item.descount),
              ),
              const Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            item.img,
            width: double.infinity,
            height: 100,
            fit: BoxFit.fill,
          ),
          Spacer(), 
          Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: MyTheme.primryColor),
          ),
          Spacer(),
          Text(
            item.description,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: MyTheme.primryColor),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.price,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: MyTheme.primryColor),
              ),
              const Icon(Icons.add_shopping_cart_outlined)
            ],
          )
        ],
      ),
    );
  }
}
