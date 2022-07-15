import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 100,
          ),
          Text(
            "Hello there",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Welocome Back",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //photo(text danta)
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          )
          //login textfield

          //signup textfield

          //forgot password
        ],
      ),
    );
  }
}
