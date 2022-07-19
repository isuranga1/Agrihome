import 'package:agrihome/profile_folder/profile.dart';
import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bookmark",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: AppColors.darkGreen,
        //toolbarHeight: 50.0,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 19,
          ),
          //onPressed: () => BtmNavBar(),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Profile())); //######## temporary navigator ==> home page
            ;
          },
        ),
      ),

      //implement body
    );
  }
}
