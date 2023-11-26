import 'package:flutter/material.dart';

class FlagContainer extends StatelessWidget {
  String? text;
  String?url;
   FlagContainer({this.text,this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 50,
      padding: const EdgeInsets.only(top: 8, left: 10, right: 14, bottom: 8),
      decoration: ShapeDecoration(
        color: Color(0xFFE5E7EB),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              url!,
            ),
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
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
          )
        ],
      ),
    );
  }
}
