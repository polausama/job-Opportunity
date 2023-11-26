import 'package:flutter/material.dart';

class Search3Container extends StatelessWidget {
  Widget? child;
  Color?color;
   Search3Container({this.child,this.color =const Color(0xFF091A7A),});

  @override
  Widget build(BuildContext context) {
    return  Container(
width: 88,
height: 32,
padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
decoration: ShapeDecoration(
color:color,
shape: RoundedRectangleBorder(
  side: BorderSide(color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(1000),
),
), 
child: child,
                );
  }
}