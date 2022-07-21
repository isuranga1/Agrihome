import 'package:flutter/cupertino.dart';

class IconInContainer extends StatelessWidget {
  final IconData icon;
  final Color containerColor;
  final Color iconColor;
  final double containerSize;
  final double iconSize;

  const IconInContainer(
      {Key? key,
      required this.icon,
      required this.containerColor,
      required this.iconColor,
      required this.containerSize,
      this.iconSize = 14.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: containerSize,
        height: containerSize,
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(containerSize),
          color: containerColor,
        ),
      ),
    );
  }
}
