import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse.dart';
import 'inresuse.dart';
import 'result.dart';
import 'bottombutton.dart';
import 'roundiconbutton.dart';
import 'brain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF101639),
        scaffoldBackgroundColor: Color(0XFF111740),
      ),
      home: MyHomePage(),
    );
  }
}

const activecolor = Color(0XFF111328);
const inactivecolor = Color(0XFF1D1E33);
const fontstyle = TextStyle(
  fontSize: 25.0,
  color: Colors.grey,
);
const nostyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const labelstyle = TextStyle(
  fontSize: 27.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const bottombutton = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const bmiType = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
  color: Colors.white,
);

const textType = TextStyle(
  fontSize: 25.0,
  color: Color(0xFF24D476),
  fontWeight: FontWeight.bold,
);

const listType = TextStyle(
  fontSize: 20.0,
  color: Colors.white,

);

enum gender { male, female }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color malegender = inactivecolor;
  Color femalegender = inactivecolor;

  void check(gender selected) {
    //value=1 => male
    //value=2 =>female
    if (selected == gender.male) {
      if (malegender == inactivecolor) {
        malegender = activecolor;
        femalegender = inactivecolor;
      } else {
        malegender = inactivecolor;
        femalegender = activecolor;
      }
    }
    if (selected == gender.female) {
      if (femalegender == inactivecolor) {
        femalegender = activecolor;
        malegender = inactivecolor;
      } else {
        femalegender = inactivecolor;
        malegender = activecolor;
      }
    }
  }

  int height = 180;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        check(gender.female);
                      });
                    },
                    child: Reusable(
                      colour: malegender,
                      childcard: InReuse(
                        icon: FontAwesomeIcons.male,
                        name: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        check(gender.female);
                      });
                    },
                    child: Reusable(
                      colour: femalegender,
                      childcard: InReuse(
                        icon: FontAwesomeIcons.female,
                        name: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable(
              colour: Color(0XFF1D1E33),
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: fontstyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: nostyle,
                      ),
                      Text(
                        'cm',
                        style: labelstyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 80.0,
                    max: 280,
                    activeColor: Color(0XFFEB1555),
                    inactiveColor: Color(0XFF8D8E98),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Reusable(
                  colour: Color(0XFF1D1E33),
                  childcard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Weight',
                        style: fontstyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        weight.toString(),
                        style: nostyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Reusable(
                  colour: Color(0XFF1D1E33),
                  childcard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Age',
                        style: fontstyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        age.toString(),
                        style: nostyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


            ],
          )),
          bottonbutton(
            onTap: (){

              Brain obj = Brain(height: height,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => result(
                  bmiresult: obj.calculatorBMI(),
                  resulttext: obj.getResult(),
                  interpretation: obj.getInterpretation(),
              )));
            },
            title: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}



