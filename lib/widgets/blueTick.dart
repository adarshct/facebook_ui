import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  final double width;
  final double height;
  final double tickSize;

  BlueTick({
    this.width = 15,
    this.height = 15,
    this.tickSize = 10,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: tickSize,
      ),
    );
  }
}
