import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen_body.dart';

class HomeScreenHead extends StatefulWidget {
  const HomeScreenHead({Key? key}) : super(key: key);

  @override
  State<HomeScreenHead> createState() => _HomeScreenHeadState();
}

class _HomeScreenHeadState extends State<HomeScreenHead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF388E3C),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Row(children: [
                SizedBox(width: 10),
                Icon(Icons.search,
                    size: 23, color: Colors.grey.withOpacity(0.8)),
                SizedBox(width: 15),
                Text("Search Here",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.withOpacity(0.8),
                    )),
              ]),
            ),
            SizedBox(
              height: 18,
            ),
            HomeScreenBody(),
          ],
        ),
      ),
    );
  }
}
