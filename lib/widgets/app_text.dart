import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget{
  double size;
  final String text;
  final Color color;
  AppText({Key? key, 
  required this.text,
  this.size = 30,
  this.color=Colors.black54}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        
      )

    );
  }

} 