import 'package:flutter/material.dart';

class CustomRow2 extends StatelessWidget {
  String?text;
   CustomRow2({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
    text!,
    style: TextStyle(
    color: Color(0xFF111827),
    fontSize: 16,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 0.08,
    letterSpacing: 0.16,
    ),
    ),
    ) ,
Padding(
  padding: const EdgeInsets.only(right: 30),
  child:   Icon(Icons.arrow_right_alt),
)
  ],
 )
;
  }
}