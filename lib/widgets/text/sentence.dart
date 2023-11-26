import 'package:flutter/material.dart';

class MySentence extends StatelessWidget {
  String? text;
  double?fontsize;
   MySentence({this.text,this.fontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
                  text!,
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: fontsize,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.16,
                  ),
                );
  }
}