import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commers/model/theme.dart';
import 'package:e_commers/pages/chart_page.dart';
import 'package:flutter/material.dart';

import '../widgets/home_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color(0xff3d4689),
        backgroundColor: Colors.transparent,
        color: const Color(0xff3d4689),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              actions: [
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,ChartPage.routeName
                      );
                    },
                    child: Badge(
                      label: null,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: MyTheme.primryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
              leading: Icon(
                Icons.sort,
                color: MyTheme.primryColor,
              ),
              title: Text(
                'DP Shop',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: const Color(0xff4f558d)),
              ),
            ),
          ],
          body: const HomeItems(),
        ),
      ),
    );
  }
}
