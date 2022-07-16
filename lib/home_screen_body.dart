import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  PageController pageController = PageController(viewportFraction: 0.65);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/imgs/pic1.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}
