import 'package:flutter/material.dart';
import'package:agrihome/bookmark.dart';
class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Bookmark',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold), ),
        backgroundColor:const Color.fromRGBO(36, 150, 126, 1) ,
        toolbarHeight: 80,
        leading: const Icon(Icons.arrow_back_ios_new,size: 40),
      ),

      body:
      Column(
        children:const [
          BookMark(  ),
          BookMark()
        ],
      ),


    );
  }
}
