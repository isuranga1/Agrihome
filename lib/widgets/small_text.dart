import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color; //color is optional
  final String text;
  double size;
  double height;

  SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 12,
      this.height = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Roboto",
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size),
    );
  }
}
