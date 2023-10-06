import 'package:e_commers/model/theme.dart';
import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: MyTheme.primryColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            'DP Shop',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Color(0xff4f558d)),
          ),
          Spacer(),
          Badge(
            label: null,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: MyTheme.primryColor,
            ),
          )
        ],
      ),
    );
  }
}
