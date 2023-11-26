import 'package:flutter/material.dart';

class twoStepVerfication4Container extends StatelessWidget {
  String?text;
   twoStepVerfication4Container({this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
width: 44,
height: 44,
padding: const EdgeInsets.all(10),
decoration: ShapeDecoration(
color: Colors.white,
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center, 
children: [
  Text(
text!,
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF222741),
fontSize: 14,
fontFamily: 'Manrope',
fontWeight: FontWeight.w500,
height: 0.12,
letterSpacing: 0.50,
),
) 
],
             )
             );
  }
}