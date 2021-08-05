import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
import 'reuse.dart';
import 'bottombutton.dart';
import 'brain.dart';

class result extends StatelessWidget {

  result({this.bmiresult,this.interpretation,this.resulttext});

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style:TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:Reusable(
              colour: inactivecolor,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext,
                    style: textType,
                  ),
                  Text(
                    bmiresult,
                    style: bmiType,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style:listType,
                  )
                ],
              ),
            )
          ),
          bottonbutton(
            title: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
