import 'package:flutter/material.dart';

class LanguageContainer extends StatelessWidget {
  Widget?child;
   
   LanguageContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
width: double.infinity,
height: 64,
padding: const EdgeInsets.symmetric(vertical: 20),
decoration: BoxDecoration(
color: Colors.white,
border: Border.symmetric(
   horizontal: BorderSide( color: Color(0xFFD1D5DB),width: 1,),
    vertical: BorderSide(color:Colors.white)
)
), 
child:child
        );
  }
}