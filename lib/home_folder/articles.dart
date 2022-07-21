import 'package:flutter/material.dart';
import 'package:agrihome/home_folder/home_screen_head.dart';

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
  String description = "Hydroponics is a method of growing plants without soil."
      " Hydroponic growing allows for faster growth and higher"
      " yields than traditional soil-based growing systems.";
  String content =
      'Simply put, hydroponic gardening is method of growing plants without soil. '
      'It’s a way to nurture a huge variety of edible plants (think herbs, veggies, '
      'even some fruits) indoors all year round, regardless of what Mother Nature is '
      'doing outside your door. A hydroponic system doesn’t take a lot of space '
      '(unless you want it to), it will work just about anywhere, and plants will actually grow'
      ' faster than if you were growing in-ground. It’s not hard to see why hydroponic gardening is'
      ' fast becoming a popular way to grow plants everywhere from kitchen counters to university '
      'dining halls  !                                                               ' *2;
  String img = 'assets/imgs/articleImg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: const Color.fromRGBO(36, 150, 126, 1),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(children: [
              //Article Image
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(img),
                  ),
                ),
              ),

              // Book mark Icon
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.bookmark,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),

              // Back Icon
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreenHead()));
                    ;
                  },
                ),
              )
            ]),
            const SizedBox(
              height: 18,
            ),

            // Description
            Container(
              height: 80,
              width: 320,
              decoration: const BoxDecoration(
                //color: Colors.yellow[100],
                border: Border(
                  left: BorderSide(width: 4.0, color: Colors.brown),
                ),
              ),
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: Text(
                  description,
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

            // Article content

            Expanded(child:SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                content ,
                style: TextStyle(fontSize: 15),
              ),
            )
            )
            ),
          ],
        ),
      ),
    );
  }
}
