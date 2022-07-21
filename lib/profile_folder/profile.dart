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

            ),
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
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/imgs/personProfilePic.png"))
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bookmark,
                          size: 18.0,
                          color:AppColors.darkGreen,
                        ),
                        SizedBox(width: 10,),
                        Text("Bookmark         ",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        )
                      ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 5,)],

                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Container(
                      height:1,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,shape:BoxShape.rectangle),
                    )],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 10,)],),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        ),
                        SizedBox(width: 10,),
                        Text("My Cart             ",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        )]),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 5,)],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Container(
                      height:1,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,shape:BoxShape.rectangle),
                    )],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 10,)],),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.key,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        ),
                        SizedBox(width: 10,),
                        Text("Profile Settings",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        )]),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 5,)],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Container(
                      height:1,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,shape:BoxShape.rectangle),
                    )],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 10,)],),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        ),
                        SizedBox(width: 10,),
                        Text("Sign Out            ",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18.0,
                          color: AppColors.darkGreen,
                        )]),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SizedBox(height: 5,)],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Container(
                      height:1,
                      width: 200,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0),shape:BoxShape.rectangle),

                    )],),

                ]),
          ),
        ),
      ]),
    );
  }
}
