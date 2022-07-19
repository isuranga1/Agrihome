import 'package:agrihome/home_folder/categories.dart';
import 'package:agrihome/home_folder/home_screen_body.dart';
import 'package:agrihome/utils/appColors.dart';
import 'package:agrihome/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agrihome/view_all_article_page.dart';

import '../return_article_section.dart';

class HomeScreenHead extends StatefulWidget {
  const HomeScreenHead({Key? key}) : super(key: key);

  @override
  State<HomeScreenHead> createState() => _HomeScreenHeadState();
}

class _HomeScreenHeadState extends State<HomeScreenHead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          margin: EdgeInsets.only(top: 70, right: 20, left: 20),
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
                height: 16.0,
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
                height: 70.0,
              ),
              //showing the horizontal scrolling
              HomeScreenBody(),
              //showing the 2 texts in a row
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: AppColors.darkGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ViewArticlePage())); //######## temporary navigator ==> View Article page
                        ;
                      },
                    ),
                  ],
                ),
              ),
              //return the article section from another class
              ViewArticles(),
            ],
          ),
        ),
      ),
    );
  }
}
