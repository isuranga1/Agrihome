//when clicking on "view all" in home section,then navigate to this page

import 'package:agrihome/bttmnavbar.dart';
import 'package:agrihome/utils/appColors.dart';
import 'package:agrihome/home_folder/return_article_section.dart';
import 'package:flutter/material.dart';

class ViewArticlePage extends StatefulWidget {
  const ViewArticlePage({Key? key}) : super(key: key);

  @override
  State<ViewArticlePage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<ViewArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "View all articles",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: AppColors.darkGreen,
        //toolbarHeight: 50.0,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 19,
          ),
          //onPressed: () => BtmNavBar(),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BtmNavBar())); //######## temporary navigator ==> home page
            ;
          },
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 10),
        //call the article section
        child: ViewArticles(),
      ),
    );
  }
}
