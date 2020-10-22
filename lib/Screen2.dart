import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calculate.dart';
import 'input_page.dart';

class Screen2 extends StatelessWidget {
  Screen2({this.rbmi, this.rsbmi});
  final double rbmi;
  final String rsbmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 55.0),
              width: double.infinity,
              child: Text(
                rsbmi,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 60.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: inactiveColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Your BMI ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle:
                            TextStyle(fontSize: 40.0, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      rbmi.toStringAsFixed(1),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 100.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Color(0xFFEB1555),
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    
                    'Go Back',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
