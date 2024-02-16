import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar(
      {super.key,
      required this.width,
      required this.height,
      required this.progress});
  final double width;
  final double height;
  final double progress;

  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Color.fromRGBO(221, 221, 221, 1),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Stack(
        children: [
          Container(
              //this container have a purpose to display the progress, the progress will represent how many nutrition
              width: width * progress,
              height: height,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(50))))
        ],
      ),
    );
  }
}
