import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shop with us',
                    style: TextStyle(
                        color: Color.fromARGB(213, 14, 94, 80),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(106, 26, 121, 105),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search Here..',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(153, 255, 255, 255)),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color.fromARGB(186, 255, 255, 255)),
                ),
                Container(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(106, 26, 121, 105),
                                  border: Border.all(
                                    color: Color.fromARGB(0, 255, 255, 255),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 100,
                              width: 100,
                              margin: EdgeInsets.all(10),
                              child: Center(
                                child: Text('card $index'),
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 500,
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                106, 26, 121, 105),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        height: 200,
                                        width: 150,
                                        margin: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('card $index'),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                106, 26, 121, 105),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        height: 200,
                                        width: 150,
                                        margin: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('card $index'),
                                        ),
                                      )
                                    ],
                                  ))),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
