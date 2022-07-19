/*
import 'package:flutter/material.dart';

class BookMark extends StatelessWidget {

  final String bookmarkHeading;
  final String verticalGardeningImg ;
  final String bookmarkText;

  const  BookMark({required this.verticalGardeningImg,required this.bookmarkHeading,required this.bookmarkText});


  @override
  Widget build(BuildContext context) {
    return Padding (
        padding: const  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child:Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(36, 150, 126, 1).withOpacity(0.2),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(verticalGardeningImg),
                height: 400,
                width: 170,
              ),
              //SizedBox(width:30),
              Column(
                  children: [ Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                    child: Text(
                        bookmarkHeading, style: const TextStyle(fontSize: 15)),
                  ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          width: 180,
                          child: Text(
                            bookmarkText,
                            style: const TextStyle(fontSize: 12),),

                        ))
                  ]
              )
            ],
          ),
        )
    );
  }
}*/
