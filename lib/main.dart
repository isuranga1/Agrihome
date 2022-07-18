import 'package:agrihome/Login_folder/LoginPage.dart';
import 'package:agrihome/categories.dart';
import 'package:agrihome/firstScreen.dart';
import 'package:agrihome/home_screen_body.dart';
import 'package:agrihome/market.dart';
import 'package:flutter/material.dart';
import 'bttmnavbar.dart';
import 'home_screen_head.dart';
import 'package:get/get.dart';
import 'articles.dart';

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
