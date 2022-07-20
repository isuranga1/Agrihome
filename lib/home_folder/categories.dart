import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  List<IconData> _icons = [Icons.article_outlined, Icons.chat_bubble_outline];
  List<String> _categories = ["Articles", "Discussions"];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if (selectedIndex == 0) {
            print("0");
          } else if (selectedIndex == 1) {
            print("1");
          }
        });
      },
      child: Container(
          height: 28.0,
          width: 130.0,
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.grey : Color(0xFFE7E8EE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                _icons[index],
                size: 18.0,
                color:
                    selectedIndex == index ? Colors.black45 : Color(0xFFB4C1C4),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                _categories[index],
                style: TextStyle(
                  fontSize: 14,
                  color: selectedIndex == index
                      ? Colors.black45
                      : Color(0xFFB4C1C4),
                ),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

//List<String> categories = ["Articles", "Discussions"];

/*
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
     */

  /*
  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 40,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
   */
/*
children: <Widget>[
                _buildIcon(0),
                _buildIcon(1),
              ],
 */
}
