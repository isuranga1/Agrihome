import 'package:flutter/material.dart';

class BookMark extends StatefulWidget {
  const BookMark({Key? key}) : super(key: key);

  @override
  State<BookMark> createState() => _BookMarkState();
}

String img = 'assets/imgs/articleImg.png';

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: const Color.fromRGBO(36, 150, 126, 1).withOpacity(0.2),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(img),
                height: 400,
                width: 170,
              ),
              //SizedBox(width:30),
              Column(
                  children:const[ Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 10),
                    child:Text("Vertical Gardening",style: TextStyle(fontSize: 15)),
                  ),
                    Padding(
                        padding:  EdgeInsets.all(10),
                        child:SizedBox(
                          width: 180,
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing"
                              " elit. In enim leo, rutrum fermentum feugiat ",style: TextStyle(fontSize: 12), ),

                        ))
                  ]
              )
            ],
          ),
        )
    );
  }
}
