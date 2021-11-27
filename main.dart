// ignore_for_file: prefer_const_constructors
import 'package:calculator/widget/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Kalkulator());
}

class Kalkulator extends StatefulWidget {
  const Kalkulator({ Key? key }) : super(key: key);
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal){
    print(btnVal);
    if (btnVal == 'C')
    {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;

    }
    else if (btnVal == 'AC')
    {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history ='';
    }
    else if (btnVal == '+\-')
    {
      if (textToDisplay[0] != '-')
      {
        res = '-' +textToDisplay;
      }
      else 
      {
        res = textToDisplay.substring(1);
      }
      
    }
    else if (btnVal == '<')
    {
      res = textToDisplay.substring(0, textToDisplay.length -1);
    }
    else if (btnVal =='+' || btnVal =='-'||btnVal == 'X' || btnVal == '/')
    {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation =btnVal;
    }
    else if(btnVal == '=')
    {
      secondNum = int.parse(textToDisplay);
      if  ( operation== '+')
      {
        res = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if  ( operation== '-')
      {
        res = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if  ( operation== 'X')
      {
        res = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if  ( operation== '/')
      {
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
    }
    else 
    {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Kalkulator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Kalkulator (Jatis Mobile)')),
          ),
          backgroundColor: Color(0xFF90AFA2),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 24,
                          color: Color(0x66FFFFFF),
                        ),
                    ),
                    ),
                    ),
                   alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      textToDisplay,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ),
                    alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    CalculatorButton(
                      text: 'AC',
                      fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: 'C',
                      fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '<',
                       fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '/',
                       fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CalculatorButton(text: '9',
                      fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '8',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '7',  
                     fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: 'X',   
                     fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CalculatorButton(text: '6',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '5',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '4',
                      fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '-',
                      fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '3',   
                    fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '2',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '1',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '+',
                       fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '+/-',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '0',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    // ignore: prefer_const_constructors
                    CalculatorButton(text: '00',
                       fillcolor: 0xFF8ac4d0,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                    CalculatorButton(text: '=',
                      fillcolor: 0xFFf4d160,
                      textColor: 0xff000000,
                      textSize: 20,
                      callback: btnOnClick,
                      ),
                  ],
                ),
              ]
            )
          )
      )
      );

  }
}
