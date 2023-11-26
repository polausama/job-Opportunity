import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  Function()? ontap;
   ButtonCard({this.ontap});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap:ontap ,
      child: Container(
        width: 100,
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: ShapeDecoration(
          color: Color(0xFF3366FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
        ),
        child: Center(
            child: (Text(
          'Apply now',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            height: 0.12,
            letterSpacing: 0.12,
          ),
        ))),
      ),
    );
  }
}
