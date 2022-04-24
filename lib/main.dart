import 'package:craft_beer/home.dart';
import 'package:craft_beer/resources/colors.dart';
import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'CraftBeer',
        theme: ThemeData(primarySwatch: AppColors.whiteMaterialColor, scaffoldBackgroundColor: AppColors.white),
        home: const Home()
    );
  }
}
