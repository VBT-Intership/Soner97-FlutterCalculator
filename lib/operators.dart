import 'package:flutter/material.dart';
import 'button.dart';
import 'calculator.dart';


  int firstNumber;
  int secondNumber;
  String textToDisplay = "";
  String result;
  String operationToPerform;

  void btnclicked(String btntext) {
    if (btntext == "C") {
      textToDisplay = "";
      firstNumber = 0;
      secondNumber = 0;
      result = "";
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "x" ||
        btntext == "/") {
      firstNumber = int.parse(textToDisplay);
      result = "";
      operationToPerform = btntext;
    } else if (btntext == "=") {
      secondNumber = int.parse(textToDisplay);
      if (operationToPerform == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operationToPerform == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operationToPerform == "x") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operationToPerform == "/") {
        result = (firstNumber ~/ secondNumber).toString();
      } else {
        result = int.parse(textToDisplay + btntext).toString();
      }
      setState(() {
        textToDisplay = result;
      });
    }
  }