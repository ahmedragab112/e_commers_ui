import 'package:e_commers/model/theme.dart';
import 'package:e_commers/pages/chart_page.dart';
import 'package:e_commers/pages/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const EcommersUi());
}

class EcommersUi extends StatelessWidget {
  const EcommersUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName: (context) => const HomeScreen(), 
      ChartPage.routeName:(context) => const ChartPage()},
      initialRoute: HomeScreen.routeName,
    );
  }
}
