import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LoginPage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(top: 70, right: 45, left: 45),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                "Let's Plant With Us",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF388E3C),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                width: 250,
                height: 280,
                decoration: BoxDecoration(
                    //color: Colors.redAccent,
                    image: DecorationImage(
                        image: AssetImage("assets/imgs/agriHomeLogo.png"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(height: 110),
              InkWell(
                onTap: () {
                  Get.to(() => LoginPage());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF558B2F),
                            Color(0xFF8BC34A),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
