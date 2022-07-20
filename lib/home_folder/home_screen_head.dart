import 'package:agrihome/home_folder/categories.dart';
import 'package:agrihome/home_folder/home_screen_body.dart';
import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenHead extends StatefulWidget {
  const HomeScreenHead({Key? key}) : super(key: key);

  @override
  State<HomeScreenHead> createState() => _HomeScreenHeadState();
}

class _HomeScreenHeadState extends State<HomeScreenHead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFeeedf2),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //showing welcome text
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkGreen,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  //showing search bar
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.darkGreen.withOpacity(0.15),
                          contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search Here',
                          hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 19),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 21,
                          ),
                          prefixIconColor: Colors.black.withOpacity(0.1)),
                    ),
                  ),
                  //add space for vertical selection
                  SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: HomeScreenBody(),
            ))
          ],
        ),
      ),
    );
  }
}
