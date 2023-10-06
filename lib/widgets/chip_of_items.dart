import 'package:e_commers/model/theme.dart';
import 'package:flutter/material.dart';

class ChipOfItems extends StatelessWidget {
  const ChipOfItems({super.key, required this.img, required this.txt});
  final String img;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Image.asset(
            img,
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            txt,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: MyTheme.primryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}
