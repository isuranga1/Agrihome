import 'package:agrihome/Login_folder/LoginPage.dart';
import 'package:agrihome/firstScreen.dart';
import 'package:agrihome/home_folder/home_screen_body.dart';
import 'package:agrihome/icon_in_container.dart';
import 'package:agrihome/profile_folder/profile.dart';
import 'package:agrihome/shop_folder/market.dart';
import 'package:agrihome/profile_folder/profile_settings.dart';
import 'package:agrihome/home_folder/publish_articles.dart';
import 'package:flutter/material.dart';
import 'Marketplace/home_screen.dart';
import 'Marketplace/constants.dart';

import 'home_folder/categories.dart';
import 'Marketplace/home_screen.dart';
import 'bttmnavbar.dart';
import 'home_folder/home_screen_head.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}
