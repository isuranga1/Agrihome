import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadArticles extends StatefulWidget {
  const ReadArticles({Key? key}) : super(key: key);

  @override
  State<ReadArticles> createState() => _ReadArticlesState();
}

class _ReadArticlesState extends State<ReadArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/imgs/articleImg.png"))),
              )),
          Positioned(
              left: 18,
              right: 18,
              child: Row(
                children: [],
              ))
        ],
      ),
    );
  }
}
