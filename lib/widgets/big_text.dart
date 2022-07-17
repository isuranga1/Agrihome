import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color; //color is optional
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 18, //default size
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: overflow,
      style: TextStyle(
          fontFamily: "Roboto",
          color: color,
          fontWeight: FontWeight.w400, //default for big text-400
          fontSize: size),
    );
  }
}
