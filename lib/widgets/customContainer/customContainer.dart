import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String? url;
  String? text;
   String text2 ;
  CustomContainer({this.text, this.url,this.text2 = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        decoration: ShapeDecoration(
          color: Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(url!)),
            SizedBox(
              height: 20,
            ),
            Text(
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
            SizedBox(height: 20,),
             Text(
              text2,
              style: TextStyle(
                color: Color(0xFF111827),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
                letterSpacing: 0.16,
              ),
            )
          ],
        ));
  }
}
