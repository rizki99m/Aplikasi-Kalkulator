import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillcolor,
    required this.textColor,
    required this.textSize,
    required this.callback,
    
    });
    
  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Text(
                            text,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: textSize,
                              )
                            ),
                          ),
                          onPressed: () => callback(text),
                          color: Color(fillcolor),
                          textColor: Color(textColor),
                        )
                      )
                      );
  }
}