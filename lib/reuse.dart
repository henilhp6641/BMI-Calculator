import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {

  Reusable({this.colour,this.childcard});

  final Color colour;
  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Container(

      child:childcard,
      margin: EdgeInsets.all(11.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}