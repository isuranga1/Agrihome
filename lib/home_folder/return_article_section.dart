//this file returns a container of article section

import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewArticles extends StatelessWidget {
  const ViewArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView.builder(
            itemCount: 8,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/imgs/pic1.jpg"))),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
