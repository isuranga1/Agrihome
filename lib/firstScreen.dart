import 'package:agrihome/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login_folder/LoginPage.dart';

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
          margin: const EdgeInsets.only(top: 90, right: 30, left: 30),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Text(
                "Let's Plant With Us",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF388E3C),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                width: 250,
                height: 280,
                decoration: const BoxDecoration(
                    //color: Colors.redAccent,
                    image: DecorationImage(
                        image: AssetImage("assets/imgs/agriHomeLogo.png"),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 130),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage(),
                    ),
                  );
                  //Get.to(() => const LoginPage());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.darkGreen,
                            AppColors.lightGreen,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
