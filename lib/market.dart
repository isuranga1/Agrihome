import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            ],
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
