import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/appColors.dart';

class ListOfArticles extends StatefulWidget {
  const ListOfArticles({Key? key}) : super(key: key);

  @override
  State<ListOfArticles> createState() => _ListOfArticlesState();
}

class _ListOfArticlesState extends State<ListOfArticles> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 18, left: 18, bottom: 10),
            child: Stack(
              children: [
                //text section
                Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFFE8F5E9)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 140),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Vertical Gardening",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              Icon(Icons.bookmark_border,
                                  size: 15, color: AppColors.darkGreen)
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
                //image section
                Container(
                  margin: EdgeInsets.all(5),
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/pic1.jpg"))),
                ),
              ],
            ),
          );
        });
  }
}
