import 'package:agrihome/utils/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), //border corner radius
                gradient: LinearGradient(
                  colors: [
                    AppColors.darkGreen,
                    AppColors.lightGreen,
                  ],
                  begin: Alignment.topCenter, //begin of the gradient color
                  end: Alignment.bottomLeft, //end of the gradient color
                ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/personProfilePic.png"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Prasanna Hettiarachchi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
                Text(
                  "Agri Lover",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 450,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55), //border corner radius
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
