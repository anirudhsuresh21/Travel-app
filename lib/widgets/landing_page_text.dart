import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget{
  double size;
  final String text;
  final Color color;
  AppLargeText({Key? key, 
  required this.text,
  this.size = 20,
  this.color=Colors.black}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      )

    );
  }

} 