import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 210,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      //height: 120,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF69c5df),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/imgs/pic1.jpg"))),
    );
  }
}
