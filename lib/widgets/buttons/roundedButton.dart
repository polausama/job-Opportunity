import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String? text;
  double?width;
  Color? color;
  Color?textcolor;
  Color? colorborderside;
   Function()? ontap;

  RoundedButton({this.text,this.ontap,this.width = 330,this.color =Colors.blueAccent,this.textcolor = Colors.white,this.colorborderside = const Color(0xFF3366FF)});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap:ontap ,
      child: Container(
        padding: EdgeInsets.all(15),
        width: width,
        height: 48,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide( color: colorborderside!)
          ),
        ),
        child: Center(
          child: Text(
            text.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textcolor,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 0.08,
              letterSpacing: 0.16,
            ),
          ),
        ),
      ),
    );
  }
}
