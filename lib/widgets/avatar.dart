import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;
  final double borderWidth;
  final Color borderColor;

  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.width = 50,
    this.height = 50,
    this.borderWidth = 3,
    this.borderColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder == true
                ? Border.all(
                    color: borderColor,
                    width: borderWidth,
                  )
                : Border(),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 4,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
