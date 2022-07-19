import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:agrihome/bttmnavbar.dart';

class PublishArticles extends StatefulWidget {
  const PublishArticles({Key? key}) : super(key: key);

  @override
  State<PublishArticles> createState() => _PublishArticlesState();
}

class _PublishArticlesState extends State<PublishArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Publish Articles",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        backgroundColor: AppColors.darkGreen,
        //toolbarHeight: 50.0,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () => BtmNavBar(),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 13, left: 13, bottom: 90, right: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFE8F5E9)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Name of the article",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Original Author",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Source",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Write here",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 13, right: 13),
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(colors: [
                  AppColors.darkGreen,
                  AppColors.lightGreen,
                ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
            child: Center(
              child: Text(
                "Publish",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
appBar: NewGradientAppBar(
          title: const Text("Publish Articles"),
          gradient: LinearGradient(
            colors: [
              AppColors.darkGreen,
              AppColors.lightGreen,
            ],
            //begin: Alignment.centerRight,
            //end: Alignment.centerLeft,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => BtmNavBar(),
          ),
        ),
 */
