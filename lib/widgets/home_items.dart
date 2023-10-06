import 'package:e_commers/model/item._shopping.dart';
import 'package:e_commers/model/item_model.dart';
import 'package:e_commers/model/theme.dart';
import 'package:e_commers/widgets/chip_of_items.dart';
import 'package:e_commers/widgets/item.dart';
import 'package:e_commers/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});
  static List<ItemModel> items = const [
    ItemModel('assets/images/1.png', 'Sandel'),
    ItemModel('assets/images/2.png', 'Watch'),
    ItemModel('assets/images/3.png', 'Bag'),
    ItemModel('assets/images/4.png', 'Hand Bag'),
    ItemModel('assets/images/5.png', 'Little Bag'),
    ItemModel('assets/images/6.png', 'Shoes'),
    ItemModel('assets/images/7.png', 'Watch'),
  ];
  final List<ItemShopping> itemList = const [
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/1.png',
        price: '200',
        title: 'Sandel'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/2.png',
        price: '200',
        title: 'Watch'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/3.png',
        price: '200',
        title: 'Bag'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/4.png',
        price: '200',
        title: 'hand bag'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/5.png',
        price: '200',
        title: 'Little Bag'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/6.png',
        price: '200',
        title: 'Shoes'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/7.png',
        price: '200',
        title: 'Watch'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/1.png',
        price: '200',
        title: 'sandel'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/2.png',
        price: '200',
        title: 'Watch'),
    ItemShopping(
        descount: '\$50',
        description: 'good sandel',
        img: 'assets/images/3.png',
        price: '200',
        title: 'Bag'),
  ];
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
          border: Border.all(color: Colors.transparent)),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const SliverToBoxAdapter(child: SearchBarWidget()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Categories',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: const Color(0xff575990), fontSize: 30),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => ChipOfItems(
                    img: items[index].img, txt: items[index].description),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Best Selling',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MyTheme.primryColor, fontSize: 30),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverGrid.builder(
            itemCount: itemList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .6,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) => ItemCart(
              item: itemList[index],
            ),
          )
        ],
      ),
    );
  }
}
