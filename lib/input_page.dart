import 'calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconoverlay.dart';
import 'Screen2.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int age = 18;
int weight = 50;
const Color activeColor = Color(0xFF1D1F33);
const Color inactiveColor = Color(0xFF111428);
const Color male = inactiveColor;
const Color female = inactiveColor;
enum Gender { male, female }
Gender gender;
int height = 100;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        // status bar color
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BoxContainerWidget(
                    c: gender == Gender.male ? activeColor : inactiveColor,
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: IconOverlay(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: BoxContainerWidget(
                    c: gender == Gender.female ? activeColor : inactiveColor,
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: IconOverlay(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BoxContainerWidget(
              c: activeColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Text(
                        'cm',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 50.0,
                    max: 500.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: BoxContainerWidget(
                    c: Color(0xFF1D1F33),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'AGE',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '1',
                              onPressed: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                              backgroundColor: Color(0xFF111428),
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FloatingActionButton(
                              heroTag: '2',
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                              backgroundColor: Color(0xFF111428),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BoxContainerWidget(
                    c: Color(0xFF1D1F33),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'WEIGHT',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '3',
                              onPressed: () {
                                setState(
                                  () {
                                    weight -= 1;
                                  },
                                );
                              },
                              backgroundColor: Color(0xFF111428),
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FloatingActionButton(
                              heroTag: '4',
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              backgroundColor: Color(0xFF111428),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              calc c = calc(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(
                    rbmi: c.Calcbmi(),
                    rsbmi: c.cat(),
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))),
              child: Center(
                  child: Text(
                'CALCULATE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )),
              height: 70.0,
              margin: EdgeInsets.only(top: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
