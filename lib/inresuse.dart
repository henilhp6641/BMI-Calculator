import 'package:flutter/material.dart';

class InReuse extends StatelessWidget {

  InReuse({this.name,this.icon});

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        Icon(
          icon,
          size: 100.0,
          color: Colors.grey,
        ),
        SizedBox(
          height: 13.0,
        ),
        Text(
          name,
          style:TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color:Colors.white,
          ),
        ),
      ],
    );
  }
}


