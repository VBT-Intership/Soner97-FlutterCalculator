import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soner97_calculator/button.dart';
import 'package:soner97_calculator/operators.dart';



class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                "$textToDisplay",
                style: GoogleFonts.montserrat(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          // SizedBox(height: 20.0,),
          Row(children: <Widget>[
            sonerButton("9"),
            sonerButton("8"),
            sonerButton("7"),
            sonerButton("+"),
          ]),
          Row(children: <Widget>[
            sonerButton("6"),
            sonerButton("5"),
            sonerButton("4"),
            sonerButton("-"),
          ]),
          Row(children: <Widget>[
            sonerButton("3"),
            sonerButton("2"),
            sonerButton("1"),
            sonerButton("x"),
          ]),
          Row(children: <Widget>[
            sonerButton("C"),
            sonerButton("0"),
            sonerButton("="),
            sonerButton("/"),
          ])
        ]),
      ),
    );
  }
}

