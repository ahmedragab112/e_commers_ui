import 'package:e_commers/model/theme.dart';
import 'package:flutter/material.dart';

class CountCart extends StatelessWidget {
  const CountCart({super.key, required this.symbol});
  final String symbol;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(),
      margin: EdgeInsets.all(5),
      elevation: 10,
      child: Container(
        width: 25,
        height: 25,
        padding: const EdgeInsets.all(5),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        alignment: Alignment.center,
        child: Text(
          symbol,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: MyTheme.primryColor),
        ),
      ),
    );
  }
}
