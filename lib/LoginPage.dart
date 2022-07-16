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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 62,
          ),
          Image.asset("assets/imgs/agriHOME.jpg"),
          //photo
          const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          )
          //login textfield

          //signup textfield

          //forgot password
        ],
      ),
    );
  }
}
