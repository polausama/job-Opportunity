import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  String? url;
   SocialMediaButton({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 154,
          height: 46,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
          decoration: ShapeDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage(url!)),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color:Color(0xFFD1D5DB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
  }
}