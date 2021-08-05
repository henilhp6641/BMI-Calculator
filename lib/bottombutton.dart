import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

class bottonbutton extends StatelessWidget {

  bottonbutton({this.onTap,this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        child:Center(
          child: Text(
            title,
            style:bottombutton,
          ),
        ),
        color: Colors.pink,

        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}
