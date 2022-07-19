import 'package:flutter/material.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookmark',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(36, 150, 126, 1),
        toolbarHeight: 80,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 15),
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
                            children: const [
                              Text(
                                "Vertical Gardening",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              Icon(Icons.bookmark_border,
                                  size: 15, color: Colors.green)
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
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
                            image: AssetImage("assets/imgs/articleImg.png"))),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
