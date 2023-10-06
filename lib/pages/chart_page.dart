import 'package:e_commers/model/theme.dart';
import 'package:e_commers/widgets/chart_body.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  static const String routeName = 'chartPage';
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: MyTheme.primryColor,
            ),
          ),
          title: Text(
            'Cart',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: MyTheme.primryColor),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: MyTheme.primryColor,
              size: 30,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: CartBody());
  }
}
