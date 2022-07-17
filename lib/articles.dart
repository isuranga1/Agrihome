import 'package:flutter/material.dart';



class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ArticlePage());
  }
}

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/imgs/articleImg.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 80,
              width:320 ,
              decoration:const BoxDecoration(
                //color: Colors.yellow[100],
                border: Border(
                  left: BorderSide(width: 4.0, color: Colors.brown),

                ),),
              margin:const EdgeInsets.all(10),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: Text(
                  "Hydroponics is a method of growing plants without soil."
                      " Hydroponic growing allows for faster growth and higher"
                      " yields than traditional soil-based growing systems.",
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,

            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Simply put, hydroponic gardening is method of growing plants without soil. '
                    'It’s a way to nurture a huge variety of edible plants (think herbs, veggies, '
                    'even some fruits) indoors all year round, regardless of what Mother Nature is '
                    'doing outside your door. A hydroponic system doesn’t take a lot of space '
                    '(unless you want it to), it will work just about anywhere, and plants will actually grow'
                    ' faster than if you were growing in-ground. It’s not hard to see why hydroponic gardening is'
                    ' fast becoming a popular way to grow plants everywhere from kitchen counters to university '
                    'dining halls !',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
