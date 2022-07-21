import 'package:flutter/material.dart';
import 'constants.dart';

import 'appColors.dart';

import 'categories.dart';
import 'new_arrival_products.dart';
import 'popular_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //showing welcome text
              Text(
                "Explore",
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
                          color: Colors.black.withOpacity(0.4), fontSize: 19),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 21,
                      ),
                      prefixIconColor: Colors.black.withOpacity(0.1)),
                ),
              ),
              //add space for vertical selection
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              top: defaultPadding / 2,
              bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Categories(),
              const NewArrivalProducts(),
              const PopularProducts(),
            ],
          ),
        ),
      ]))
    ]));
  }
}
