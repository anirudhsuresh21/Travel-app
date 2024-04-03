import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget{
  bool isResponsive;
  double width;

  ResponsiveButton({Key? key,
  required this.width,
  this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Image.asset("./assets/button-one.png")
        ]
    ),
      
    );
  }
}