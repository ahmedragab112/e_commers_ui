import 'package:e_commers/model/theme.dart';
import 'package:e_commers/widgets/build_circle_container.dart';
import 'package:e_commers/widgets/build_increment.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.img, required this.title});
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const CircleContainer(),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            img,
            width: 60,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: MyTheme.primryColor, fontWeight: FontWeight.bold),
              ),
              Text('\$55',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: MyTheme.primryColor, fontWeight: FontWeight.bold))
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CountCart(
                    symbol: '+',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '01',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CountCart(
                    symbol: '-',
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
