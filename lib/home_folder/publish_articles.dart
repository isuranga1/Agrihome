import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:agrihome/bttmnavbar.dart';
import 'package:flutter/rendering.dart';

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
            onPressed: () => BtmNavBar()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 13, left: 13, bottom: 10, right: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XFFE8F5E9)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Name of the Article
                    TextLine("Name of the article :-", 10), //  new method
                    SizedBox(
                      height: 30,
                    ),
                    // Original Author
                    TextLine("Original Author :-", 40), // new method
                    SizedBox(
                      height: 30,
                    ),
                    TextLine("Source :-", 10), // new method
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Write here :-",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LayoutBuilder(
                        builder: (context, constraints) => SizedBox(
                              height: 350,
                              child: TextField(
                                expands: true,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    gapPadding: 20,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                maxLines: null,
                                minLines: null,
                              ),
                            )),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, left: 13, right: 13),
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
      ),
    );
  }

  TextLine(String topic, double sizedBoxWidth) {
    return Row(
      children: [
        Text(
          topic,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(
          width: sizedBoxWidth,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              gapPadding: 20,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ))
      ],
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
