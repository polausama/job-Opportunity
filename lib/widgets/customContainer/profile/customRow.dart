import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
    children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
      Icon(Icons.person_3),
      SizedBox(width: 20,),
      Text(
'Edit Profile',
style: TextStyle(
color: Color(0xFF111827),
fontSize: 16,
fontFamily: 'SF Pro Display',
fontWeight: FontWeight.w400,
height: 0.08,
letterSpacing: 0.16,
),
) ,
SizedBox(width: MediaQuery.of(context).size.width*0.5,),
Expanded(child: Icon(Icons.arrow_right_alt))
    ],
  );
  }
}