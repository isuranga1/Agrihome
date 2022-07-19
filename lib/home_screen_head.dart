import 'package:agrihome/categories.dart';
import 'package:agrihome/home_screen_body.dart';
import 'package:agrihome/utils/colors.dart';
import 'package:agrihome/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agrihome/bookMarkPage.dart';

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
          margin: EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //showing wlcome text
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
                          color: Colors.black.withOpacity(0.4), fontSize: 18),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      prefixIconColor: Colors.black.withOpacity(0.1)),
                ),
              ),
              //add space for vertical selection
              SizedBox(
                height: 70.0,
              ),
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
                                builder: (context) => BookMarkPage()));//######## temporary navigator ==> bookmark page
                        ;
                      },
                    ),
                  ],
                ),
              ),
              //showing the vertial scrollview
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 15),
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0XFFE8F5E9)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 140),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Vertical Gardening",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                        Icon(Icons.bookmark_border,
                                            size: 15,
                                            color: AppColors.darkGreen)
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      " to make compost at home How to make compost at home to make compost at home How to make compost at home",
                                      maxLines: 3,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 120,
                              height: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/imgs/pic1.jpg"))),
                            ),
                          ),
                        ],
                      );
                    },
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
